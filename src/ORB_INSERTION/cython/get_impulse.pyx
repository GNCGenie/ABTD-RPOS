# cython_code.pyx
import numpy as np
cimport numpy as np
import scipy.optimize as spopt

cdef double R_EARTH = 6.378136300e6
cdef double GM_EARTH = 3.986004415e14
cdef double J2_EARTH = 0.0010826358191967
cdef double mu = GM_EARTH

cdef np.ndarray dT(np.ndarray[np.float64_t, ndim=1] x):
    cdef double a, e, i, omega, Omega, theta, p, r, h, omega_s
    a, e, i, omega, Omega, theta = x
    p = a * (1 - e**2)
    r = p / (1 + e * np.cos(theta))
    h = a * (mu / a)**0.5
    omega_s = (mu / a**3)**0.5

    A = np.array([
        0.0,
        0.0,
        0.0,
        0.0,
        (-3 / 2) * (R_EARTH**2 / (a * (1 - e**2))**2) * J2_EARTH * omega_s * np.cos(i),
        h / r**2
    ])

    A[np.isnan(A) | np.isinf(A)] = 0.0

    return A

cdef np.ndarray dU(np.ndarray[np.float64_t, ndim=1] x):
    cdef double a, e, i, omega, Omega, theta, p, r, h, omega_s
    a, e, i, omega, Omega, theta = x
    p = a * (1 - e**2)
    r = p / (1 + e * np.cos(theta))
    h = a * (mu / a)**0.5
    omega_s = (mu / a**3)**0.5

    B = np.array([
        [(2 * a**2 / h) * (e * np.sin(theta)), (2 * a**2 / h) * (p / r), 0.0],
        [(1 / h) * (p * np.sin(theta)), (1 / h) * ((p + r) * np.cos(theta) + r * e), 0.0],
        [0.0, 0.0, (r * np.cos(theta + omega)) / h],
        [-p * np.cos(theta) / (e * h), (p + r) * np.sin(theta) / (e * h),
         -(r * np.sin(theta + omega) * np.cos(i)) / (h * np.sin(i))],
        [0.0, 0.0, (r * np.sin(theta + omega)) / (h * np.sin(i))],
        [(p * np.cos(theta)) / (e * h), -((p + r) * np.sin(theta)) / (e * h), 0.0]
    ])

    B[np.isnan(B) | np.isinf(B)] = 0.0

    return B

def calc_orb_tran(np.ndarray[np.float64_t, ndim=1] x, np.ndarray[np.float64_t, ndim=1] init, np.ndarray[np.float64_t, ndim=1] targ):
    cdef np.ndarray[np.float64_t, ndim=1] X
    cdef np.ndarray[np.float64_t, ndim=1] U1, U2
    cdef double T1, T2

    U1 = x[0:3]
    U2 = x[3:6]
    T1 = x[-2]
    T2 = x[-1]
    X = init

    X = X + np.array(dT(init)) * T1
    X = X + dU(X) @ U1
    X = X + np.array(dT(X)) * T2
    X = X + dU(X) @ U2
    return np.linalg.norm(X - targ) + 1e2 * np.linalg.norm(x[0:6])

def get_impulse(init, targ):
    res = spopt.minimize(calc_orb_tran, np.zeros(8), args=(init, targ))
    return res
