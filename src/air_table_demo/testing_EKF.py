import math
import numpy as np
import matplotlib.pyplot as plt

# Covariance for EKF simulation
Q = np.diag([
    0.1,  # variance of location on x-axis
    0.1,  # variance of location on y-axis
    1.0,  # variance of x-velocity
    1.0   # variance of y-velocity
]) ** 2  # predict state covariance

R = np.diag([1.0, 1.0]) ** 2  # Observation x,y position covariance

# Simulation parameter
INPUT_NOISE = np.diag([1.0, 1.0]) ** 2
GPS_NOISE = np.diag([0.5, 0.5]) ** 2

DT = 0.1  # time tick [s]
SIM_TIME = 1000.0  # simulation time [s]

show_animation = True


def calc_input(x, u):
    #effort = np.array([[x[0][0]],[x[1][0]]])
    return np.ones((2, 1))


def observation(xTrue, xd, u):
    xTrue = motion_model(xTrue, u)

    # add noise to gps x-y
    z = observation_model(xTrue) + GPS_NOISE @ np.random.randn(2, 1)

    # add noise to input
    ud = u + INPUT_NOISE @ np.random.randn(2, 1)

    xd = motion_model(xd, ud)

    return xTrue, z, xd, ud


def motion_model(x, u):
    A = np.array([[1.0, 0, DT, 0],
                  [0, 1.0, 0, DT],
                  [0, 0, 0.0, 0],
                  [0, 0, 0, 0]])

    B = np.array([
        [0, 0],
        [0, 0],
        [DT, 0],
        [0, DT]])

    x = A @ x + B @ u

    return x


def observation_model(x):
    H = np.array([
        [1, 0, 0, 0],
        [0, 1, 0, 0]
    ])

    z = H @ x

    return z


def jacob_f(x, u):
    jF = np.array([
        [1.0, 0.0, DT * x[2][0], 0],
        [0.0, 1.0, 0.0, DT * x[3][0]],
        [0.0, 0.0, 1.0, 0.0],
        [0.0, 0.0, 0.0, 1.0]])

    return jF


def jacob_h():
    jH = np.array([
        [1, 0, 0, 0],
        [0, 1, 0, 0]
    ])

    return jH


def ekf_estimation(xEst, PEst, z, u):
    # Predict
    xPred = motion_model(xEst, u)
    jF = jacob_f(xEst, u)
    PPred = jF @ PEst @ jF.T + Q

    # Update
    jH = jacob_h()
    zPred = observation_model(xPred)
    y = z - zPred
    S = jH @ PPred @ jH.T + R
    K = PPred @ jH.T @ np.linalg.inv(S)
    xEst = xPred + K @ y
    PEst = (np.eye(len(xEst)) - K @ jH) @ PPred
    return xEst, PEst


def main():

    time = 0.0

    # State Vector [x y vx vy]'
    xEst = np.zeros((4, 1))
    xTrue = np.zeros((4, 1))
    u = np.zeros((2, 1))
    PEst = np.eye(4)

    xDR = np.zeros((4, 1))  # Dead reckoning

    # history
    hxEst = xEst
    hxTrue = xTrue
    hxDR = xTrue
    hz = np.zeros((2, 1))

    while SIM_TIME >= time:
        time += DT
        u = calc_input(xTrue, u)

        xTrue, z, xDR, ud = observation(xTrue, xDR, u)

        xEst, PEst = ekf_estimation(xEst, PEst, z, ud)

        # store data history
        hxEst = np.hstack((hxEst, xEst))
        hxDR = np.hstack((hxDR, xDR))
        hxTrue = np.hstack((hxTrue, xTrue))
        hz = np.hstack((hz, z))

        if show_animation:
            plt.cla()
            plt.plot(hz[0, :], hz[1, :], ".g")
            plt.plot(hxTrue[0, :].flatten(),
                     hxTrue[1, :].flatten(), "-b")
            plt.plot(hxDR[0, :].flatten(),
                     hxDR[1, :].flatten(), "-k")
            plt.plot(hxEst[0, :].flatten(),
                     hxEst[1, :].flatten(), "-r")
            plt.axis("equal")
            plt.grid(True)
            plt.pause(0.0001)

    plt.show()


if __name__ == '__main__':
    main()
