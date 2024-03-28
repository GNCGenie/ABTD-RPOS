import get_impulse
import numpy as np

if __name__ == "__main__":
    init = np.array([7.00e6, 1e-3, 1e-3, 0, 0, 0])
    targ = np.array([7.01e6, 1e-3, 1e-3, 0, 0, 0])
    res = get_impulse.get_impulse(init, targ)
    x = res
    U1= x[0:3]
    U2= x[3:6]
    T1 = x[-2]
    T2 = x[-1]
    print("Impulse 1: ", U1, "\nImpulse 2: ", U2, "\nTime 1: ", T1, "\nTime 2: ", T2)
