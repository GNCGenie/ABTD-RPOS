import cvxpy as cp
import numpy as np
################################
################################
################################

# continuous-time dynmaics
R_Earth = 6.3781363e6
GM_Earth = 3.986004415e14
a = R_Earth + 650e3
N = np.sqrt(GM_Earth / a**3)
A_cont = np.array([[0, 0, 0, 1, 0, 0],
                   [0, 0, 0, 0, 1, 0],
                   [0, 0, 0, 0, 0, 1],
                   [0, 0, 0, 0, 0, 0],
                   [0, 0, 0, 0, 0, 0],
                   [0, 0, 0, 0, 0, 0]])
B_cont = np.array([[0,0,0],
                   [0,0,0],
                   [0,0,0],
                   [1,0,0],
                   [0,1,0],
                   [0,0,1]])

# define dimensions
H, n, m = 10, 6, 3

init_state = np.array([0,1e3,0,0,0,0])
target_state = np.array([0,5e1,0,0,0,0])
Vmax = np.linalg.norm(init_state[:3] - target_state[:3]) / 1e3
Umax = 1e-1
timestep = max(2e0*np.sqrt(np.linalg.norm(init_state[:3] - target_state[:3])/Umax)/H , 1e-0)
################################
################################
################################
def dX(X, U):
    return A @ X + B @ U

# Define optimization variables
U = cp.Variable((m, H), name='U')
X = cp.Variable((n, H+1), name='X')

# Define optimization parameters
A = cp.Parameter((n, n), name='A')
B = cp.Parameter((n, m), name='B')
x_init = cp.Parameter(n, name='x_init')
x_target = cp.Parameter(n, name='x_target')
max_velocity = cp.Parameter(name='max_velocity')
max_effort = cp.Parameter(name='max_effort')
min_effort = cp.Parameter(name='min_effort')
dt = cp.Parameter(nonneg=True, name='dt')

# Dynamics constraints
constraints = [cp.abs(X[3:, :]) <= max_velocity,
               cp.abs(U) <= max_effort]
for i in range(H):
    k1 = dX(X[:, i], U[:, i]) # Not DPP
    k2 = dX(X[:, i] + 0.5*k1*dt, U[:, i])
    k3 = dX(X[:, i] + 0.5*k2*dt, U[:, i])
    k4 = dX(X[:, i] + k3*dt, U[:, i])
    constraints += [X[:, i+1] == X[:, i] + dt*(k1 + 2*k2 + 2*k3 + k4)/6]
#    constraints += [X[:, i+1] == X[:,i] + dX(X[:, i], U[:, i])] # DPP
# Boundary conditions
constraints += [X[:, 0] == x_init,
                X[:, -1] == x_target]
# Define objective function
objective = cp.Minimize(cp.sum_squares(U))
# Define optimization problem
problem = cp.Problem(objective, constraints)

x_init.value = init_state
x_target.value = target_state
dt.value = timestep
max_velocity.value = Vmax
max_effort.value = Umax*timestep
A.value = A_cont
B.value = B_cont

# Solve the problem
val = problem.solve(solver=cp.SCS, verbose=False, max_iters=10**2)
print(f'U = {U.value.T}')

################################
################################
################################
#from cvxpygen import cpg
#cpg.generate_code(problem, code_dir="MPC_RK4", solver='SCS')
