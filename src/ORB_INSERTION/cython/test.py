from get_impulse import dT, dU, percent_error_OE, get_impulse
import numpy as np

if __name__ == "__main__":
    init = np.array([7.00e6, 1e-3, 1e-3, 0, 0, np.random.uniform(0,2*np.pi)])
    targ = np.array([7.01e6, 0e-3, -1e-3, 0, 0, np.random.uniform(0,2*np.pi)])
    T1, U1, _, _ = get_impulse(init, targ)

    print(T1, U1)

    X = init
    X = X + np.array(dT(X)) * T1
    X = X + dU(X) @ U1
#    X = X + np.array(dT(X)) * T2
#    X = X + dU(X) @ U2

    weight = percent_error_OE(init,targ)
    print("Initial deviations: ", np.dot(init-targ,weight))
    print("Final deviations: ", np.dot(X-targ,weight))
