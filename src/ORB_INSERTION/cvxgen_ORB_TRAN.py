import numpy as np
import scipy as sp

R_EARTH     = 6.378136300e6           # [m] GGM05s Value
GM_EARTH    = 3.986004415e14          # [m^3/s^2] GGM05s Value
J2_EARTH    = 0.0010826358191967      # [] GGM05s value
OMEGA_EARTH = 7.292115146706979e-5
mu = GM_EARTH

# Coast phase state transition matrix
def dT(x):
    a, e, i, omega, Omega, theta = x
    p = a * (1 - e**2)
    r = p / (1 + e * np.cos(theta))
    h = a * np.sqrt(mu / a)
    omega_s = np.sqrt(mu / a**3)

    A = [
        0.0,
        0.0,
        0.0,
        0.0,
        (-3 / 2) * (R_EARTH**2 / (a * (1 - e**2))**2) * J2_EARTH * omega_s * np.cos(i),
        h / r**2
    ]

    # Replace NaN, Inf, -Inf with 0
    A = [0 if np.isnan(val) or np.isinf(val) else val for val in A]

    return A

# Firing phase state transition matrix
def dU(x):
    a, e, i, omega, Omega, theta = x
    p = a * (1 - e**2)
    r = p / (1 + e * np.cos(theta))
    h = a * np.sqrt(mu / a)
    omega_s = np.sqrt(mu / a**3)

    B = np.array([
        [(2 * a**2 / h) * (e * np.sin(theta)), (2 * a**2 / h) * (p / r), 0],
        [(1 / h) * (p * np.sin(theta)), (1 / h) * ((p + r) * np.cos(theta) + r * e), 0],
        [0, 0, (r * np.cos(theta + omega)) / h],
        [-p * np.cos(theta) / (e * h), (p + r) * np.sin(theta) / (e * h),
         -(r * np.sin(theta + omega) * np.cos(i)) / (h * np.sin(i))],
        [0, 0, (r * np.sin(theta + omega)) / (h * np.sin(i))],
        [(p * np.cos(theta)) / (e * h), -((p + r) * np.sin(theta)) / (e * h), 0]
    ])

    # Replace NaN, Inf, -Inf with 0
    B[np.isnan(B) | np.isinf(B)] = 0

    return B

def calc_orb_tran(x, init, targ):
    U1= x[0:3]
    U2= x[3:6]
    T1 = x[-2]
    T2 = x[-1]
    X = init

    X = X + np.array(dT(init)) * T1
    X = X + dU(X) @ U1
    X = X + np.array(dT(X)) * T2
    X = X + dU(X) @ U2
    return np.linalg.norm(X-targ) + 1e2*np.linalg.norm(x[0:6])

def get_impulse(init, targ):
    res = sp.optimize.minimize(calc_orb_tran, np.zeros(8), args=(init, targ))
    return res

init = [7.00e6, 1e-3, 1e-3, 0, 0, 0]
targ = [7.01e6, 1e-3, 1e-3, 0, 0, 0]
res = get_impulse(init, targ)
print(res)
x = res.x
U1= x[0:3]
U2= x[3:6]
T1 = x[-2]
T2 = x[-1]
print("Impulse 1: ", U1, "\nImpulse 2: ", U2, "\nTime 1: ", T1, "\nTime 2: ", T2)
