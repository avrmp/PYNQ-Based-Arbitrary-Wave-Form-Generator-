#   Copyright (c) 2016, Xilinx, Inc.
#   All rights reserved.
# 
#   Redistribution and use in source and binary forms, with or without 
#   modification, are permitted provided that the following conditions are met:
#
#   1.  Redistributions of source code must retain the above copyright notice, 
#       this list of conditions and the following disclaimer.
#
#   2.  Redistributions in binary form must reproduce the above copyright 
#       notice, this list of conditions and the following disclaimer in the 
#       documentation and/or other materials provided with the distribution.
#
#   3.  Neither the name of the copyright holder nor the names of its 
#       contributors may be used to endorse or promote products derived from 
#       this software without specific prior written permission.
#
#   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
#   AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, 
#   THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR 
#   PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR 
#   CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
#   EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, 
#   PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
#   OR BUSINESS INTERRUPTION). HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, 
#   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR 
#   OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF 
#   ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


"""
 * Passed parameters in MAILBOX_WRITE_CMD
 * bits 31:20 => delay in microsecond if wave generation mode is selected
 * bits 31:20 => 12-bit value to be output if fixed value mode is selected
 * bits 19:16 => 4-bit value indicates channels to be used
 * bits 15:8 => number of cycles to be produced in wave generation mode, 
 *              if it is set to 0, then generate waveforms forever
 * bit 7 => not used
 * bit 6 => random wave generation - pattern is written in MAILBOX_DATA area
 *          with MAILBOX_DATA(0) having number of samples per cycle, followed 
 *          by 12-bit values in each word
 * bit 5 => Sine wave generation mode
 * bit 4 => Triangle waveform generation mode
 * bit 3 => Sawtooth generation mode
 * bit 2 => Square wave generation mode
 * bit 1 => Fixed Value mode
 * bit 0 => 1 command issued, 0 command completed
"""


from . import Pmod
import struct
import csv
import time

PMOD_DAC_PROGRAM = "pmod_dac.bin"
FIXEDGEN = 0x3


class Pmod_DAC(object):
    """This class controls a Digital to Analog Converter Pmod.
    
    The Pmod DA4 (PB 200-245) is an 8 channel 12-bit digital-to-analog 
    converter run via AD5628.

    Attributes
    ----------
    microblaze : Pmod
        Microblaze processor instance used by this module.
        
    """

    def __init__(self, mb_info):
        """Return a new instance of a DAC object.
    
        Note
        ----
        The floating point number to be written should be in the range 
        of [0.00, 2.50]. 
        
        Parameters
        ----------
        mb_info : dict
            A dictionary storing Microblaze information, such as the
            IP name and the reset name.
            
        """
        self.microblaze = Pmod(mb_info, PMOD_DAC_PROGRAM)

    def write_fixed_value(self, value):
        """
        Write a floating point number onto the DAC Pmod.
        """
        if not 0.00 <= value <= 2.5:
            raise ValueError("Requested value not in range [0.00, 2.50].")

        # Calculate the voltage value and write to DAC
        int_val = int(value / 0.0006105)
        cmd = (int_val << 20) | FIXEDGEN
        self.microblaze.write_blocking_command(cmd)

    def write_arbitrary(self):
        wave = []
        convertedWave = []
        
        print('reading in wave.csv')
        with open('wave.csv') as csv_file:
            csv_reader = csv.reader(csv_file, delimiter=',')
            for row in csv_reader:
                wave.append(row[0])
        
        # only 253 adddresses each one is 32 bits
        if len(wave) > 253 * 2:
            print('wave.csv too long')
            return
        
        if max(wave) > 2.5:
            print('max value over 2.5V')
            return
        
        # encode voltage values into 32 bit integers using resolution/step size of 4096 and max value 2.5V
        # each 32 bit integer will contain two 12 bit values (2^12 = 4096) and padded in MSB with zeros
        for i in range(0, len(wave), 1):
            integer = 0
            
            # handle odd length
            if i == len(wave) - 1:
                value1, value2 = wave[i], 0
            else:    
                value1, value2 = wave[i], wave[i + 1]

            # convert to integer between 0 and 4096
            value1, value2 = int(value1 * 4096 / 2.5), int(value2 * 4096 / 2.5)

            value1 = value1 << 12
            integer += value1 + value2
            convertedWave.append(integer)
        
        print('writing to microblaze mailbox')

        # write to mailbox
        self.microblaze.write_mailbox(0, convertedWave)

        # arbitrary wait to make sure it done writing (don't know if write_mailbox is blocking)
        time.sleep(2)

        print('running arbitrary wave generator')
        
        cmd = 8 + 1 # mode=3 and lsb = 1 means run cmd
        self.microblaze.write_blocking_command(cmd)



    def write_sawtooth(self, cycles, delay):
        """
        cycles is the number of cycles of the wave we want to output
        before stopping the signal. If cycles is 0 the wave is generated forever

        the delay is the number of microseconds to wait between 
        writing each step of the wave
        """
        delay = (delay & 0xFFF) << 20
        cycles = (cycles & 0xFF) << 8
        mode = 8 
        cmd = cycles + delay + mode + 1
        self.microblaze.write_blocking_command(cmd)
    
    def write_square_wave(self, cycles, delay):
        """
        cycles is the number of cycles of the wave we want to output
        before stopping the signal. If cycles is 0 the wave is generated forever

        the delay is the number of microseconds to wait between 
        writing each step of the wave
        """
        delay = (delay & 0xFFF) << 20
        cycles = (cycles & 0xFF) << 8
        mode = 4 
        cmd = cycles + delay + mode + 1
        self.microblaze.write_blocking_command(cmd)
    
        def write_triangle_wave(self, cycles, delay):
        """
        cycles is the number of cycles of the wave we want to output
        before stopping the signal. If cycles is 0 the wave is generated forever

        the delay is the number of microseconds to wait between 
        writing each step of the wave
        """
        delay = (delay & 0xFFF) << 20
        cycles = (cycles & 0xFF) << 8
        mode = 16 
        cmd = cycles + delay + mode + 1
        self.microblaze.write_blocking_command(cmd)
    
    def write_sine_wave(self, cycles, delay):
        """
        cycles is the number of cycles of the wave we want to output
        before stopping the signal. If cycles is 0 the wave is generated forever

        the delay is the number of microseconds to wait between 
        writing each step of the wave
        """
        delay = (delay & 0xFFF) << 20
        cycles = (cycles & 0xFF) << 8
        mode = 32 
        cmd = cycles + delay + mode + 1
        self.microblaze.write_blocking_command(cmd)
    
    def write_sawtooth(self, cycles, delay):
        """
        cycles is the number of cycles of the wave we want to output
        before stopping the signal. If cycles is 0 the wave is generated forever

        the delay is the number of microseconds to wait between 
        writing each step of the wave
        """
        delay = (delay & 0xFFF) << 20
        cycles = (cycles & 0xFF) << 8
        mode = 8 # sawtooth mode
        cmd = cycles + delay + mode + 1
        self.microblaze.write_blocking_command(cmd)
    
