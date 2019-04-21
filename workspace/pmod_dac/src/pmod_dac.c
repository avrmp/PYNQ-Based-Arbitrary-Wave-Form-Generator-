#include "xparameters.h"
#include "circular_buffer.h"
#include "spi.h"
#include "timer.h"
#include "xparameters.h"
#include "xil_types.h"
#include "xil_io.h"

#define XPAR_PMOD_IO_SWITCH_BASEADDR XPAR_MB_1_MB1_SWITCH_S00_AXI_BASEADDR
#define MAILBOX_DATA(x) (*(volatile unsigned *)(0x0000FF00+((x)*4)))

static spi device;
/*
 * Passed parameters in MAILBOX_WRITE_CMD
 * bits 31:20 => delay in microsecond if wave generation mode is selected
 * bits 31:20 => 12-bit value to be output if fixed value mode is selected
 * bits 19:16 => 4-bit value indicates channels to be used
 * bits 15:8 => number of cycles to be produced in wave generation mode, 
 *              if it is set to 0, then generate waveforms forever
 * bit 0 => 1 command issued, 0 command completed
 *
 * Channels table
 * bits [19:16]
 * 0000 => Channel A
 * 0001 => Channel B
 * 0010 => Channel C
 * 0011 => Channel D
 * 0100 => Channel E
 * 0101 => Channel F
 * 0110 => Channel G
 * 1111 => All channels
 */

#define BUFFER_SIZE     6

typedef u8 DataBuffer[BUFFER_SIZE];

u8 WriteBuffer[BUFFER_SIZE];

void RefOn(void) {
    // Turn ON internal reference voltage
    WriteBuffer[3]=0x01;
    // This byte must be 0
    WriteBuffer[2]=0x00;
    // channel number (0) | least significant 4-bits data
    WriteBuffer[1]=0x00;
    // write to and update requested channel
    WriteBuffer[0]=0x08;
    spi_transfer(device, (char*)WriteBuffer, NULL, 4);
}

void RefOFF(void) {
    // Turn OFF internal reference voltage
    WriteBuffer[3]=0x00;
    // This byte must be 0
    WriteBuffer[2]=0x00;
    // channel number (0) | least significant 4-bits data
    WriteBuffer[1]=0x00;
    // write to and update requested channel
    WriteBuffer[0]=0x08;
    spi_transfer(device, (char*)WriteBuffer, NULL, 4);
}

void FixedGen(u8 channels, u16 fixedvalue) {
    // 0x55 - this is the dummy data for 12-bit dac
    WriteBuffer[3] = 0x55;
    // least significant 8-bits data
    WriteBuffer[2] = fixedvalue & 0xff;
    // channel number (0) | most significant 4-bits data
    WriteBuffer[1] = (channels << 4) | (fixedvalue >> 8);
    // 4 most significant bits don't care | write and update DAC command
    WriteBuffer[0] = 0x03;

    spi_transfer(device, (char*)WriteBuffer, NULL, 4);
}


void TriangleWaveGen(u8 channels, u8 numofcycles, u16 delay) {
    int i, j;

    WriteBuffer[3] = 0x55;
    WriteBuffer[0] = 0x03;

    if(numofcycles==0){
        for(;;){
            for(j=0; j< 4096; j++) {
                WriteBuffer[2] = j & 0xff;
                WriteBuffer[1] = (channels << 4) | ((j >> 8 ) & 0x0f);
                spi_transfer(device, (char*)WriteBuffer, NULL, 4);
                if(delay)
                    delay_us(delay);
            }
            for(j=4095; j>=0; j--) {
                WriteBuffer[2] = j & 0xff;
                WriteBuffer[1] = (channels << 4) | ((j >> 8 ) & 0x0f);
                spi_transfer(device, (char*)WriteBuffer, NULL, 4);
                if(delay)
                    delay_us(delay);
            }
        }
    }
    else {
        for(i=0; i<numofcycles ; i++) {
            for(j=0; j< 4096; j++) {
                WriteBuffer[2] = j & 0xff;
                WriteBuffer[1] = (channels << 4) | ((j >> 8 ) & 0x0f);
                spi_transfer(device, (char*)WriteBuffer, NULL, 4);
                if(delay)
                    delay_us(delay);
            }
            for(j=4095; j>=0; j--) {
                WriteBuffer[2] = j & 0xff;
                WriteBuffer[1] = (channels << 4) | ((j >> 8 ) & 0x0f);
                spi_transfer(device, (char*)WriteBuffer, NULL, 4);
                if(delay)
                    delay_us(delay);
            }
        }
    }
}



void ArbitraryWaveGen (u8 channels, u8 lengthOfMailbox) {
    int i, j;

    WriteBuffer[3] = 0x55;
    WriteBuffer[0] = 0x03;

    // read in from mailbox and write to pmod spi
    for(;;){
        for(j = 0; j < lengthOfMailbox; j++) {
            int num = (u32 *)MAILBOX_DATA(j);

			int val1 = (num >> 12) & 0x0fff;
		    int val2 = num & 0x0fff;

            WriteBuffer[2] = val1 & 0xff;
            WriteBuffer[1] = (channels << 4) | ((val1 >> 8 ) & 0x0f);
            spi_transfer(device, (char*)WriteBuffer, NULL, 4);

            WriteBuffer[2] = val2 & 0xff;
            WriteBuffer[1] = (channels << 4) | ((val2 >> 8 ) & 0x0f);
            spi_transfer(device, (char*)WriteBuffer, NULL, 4);
        }
    }
}


void dac(u8 channels, u8 mode, u16 fixedvalue, u8 numofcycles, u16 delay)
{

    switch(mode) {
        case 1:FixedGen(channels, fixedvalue); break;
        case 2:TriangleWaveGen(channels, numofcycles, delay); break;
        case 3:ArbitraryWaveGen(channels, numofcycles); break;
    }
}

int main(void)
{
    u16 delay;
    u32 cmd;
    u8 numofcycles;
    u16 fixedvalue;
    u8 mode, channels;

    device = spi_open(3, 2, 1, 0);
    device = spi_configure(device, 0, 1);

    RefOn();
    while(1){
        while((MAILBOX_CMD_ADDR & 0x01)==0);
        cmd = MAILBOX_CMD_ADDR;
        mode=0;
        if((cmd >> 1) & 0x01)
            mode=1;
        else if((cmd >> 2) & 0x01)
            mode=2;
        else if((cmd >> 3) & 0x01)
            mode=3;

        channels = (cmd >> 16) & 0x0f;
        fixedvalue = (cmd >> 20) & 0x0fff;

        if(((cmd >> 20) & 0x0fff)==0)
            // set to 1 second if the field is set to 0
            delay = 1000;
        else
            // multiple of approximate milliseconds
            delay=(cmd >> 20) & 0xfff;
        if(((cmd >> 8) & 0x000ff)==0)
            // indicate infinite number of samples
            numofcycles = 0;
        else
            // set to number of samples
            numofcycles=(cmd >> 8) & 0x0ff;

        dac(channels,mode,fixedvalue,numofcycles,delay);
        MAILBOX_CMD_ADDR = 0x0;
    }
    return 0;
}


