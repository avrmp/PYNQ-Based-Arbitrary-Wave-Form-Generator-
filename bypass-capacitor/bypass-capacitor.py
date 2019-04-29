import numpy as np
import csv
import matplotlib.pyplot as plt
import scipy.integrate as integrate

"""
Bypass Capacitor -- shorts AC signals
to the ground to produced a cleaner
DC signal by removing AC nose.
"""

# define input voltage and time
v_in = np.random.uniform(-0.025, 0.025, 250) + 2.00
tPoints = np.linspace(0, 250 - 1, 250)

# define function that yields v_in(t) at arbitrary values of t:
def vIn(t):
    global tPoint, v_in
    return np.interp(t, tPoints, v_in)

# define constant for ordinary differential equation
R = 1.0;   C = 1.0

# define dvOut/dt of ODE:
def dvOut_dt(vOut, t):
    global R, C
    return 1 / (R * C) * (vIn(t) - vOut)

# define starting value:
v_out_start = v_in[0]

# new voltage output
v_out = integrate.odeint(dvOut_dt, v_out_start, tPoints)

with open("bypass-capacitor.csv", "w") as output:
    cw = csv.writer(output)
    cw.writerows(v_out)

plt.plot(v_in)
plt.plot(v_out)
plt.axis([0, 250, 1.80, 2.20])
plt.title('Bypass Capacitor')
plt.ylabel('Volts')
plt.show()
