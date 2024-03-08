import cvxpy as cp
import numpy as np

n_thrusters = 4
n_dims = 3
# define variables
activation = cp.Variable(n_thrusters, name='activation')
# define parameters
moment = cp.Parameter(n_dims, name='moment')
thrust_mat = cp.Parameter((n_dims, n_thrusters), name='thrust_mat')
max_effort = cp.Parameter(name='max_effort')

# Dynamic constraints
constraints = []
constraints += [cp.abs(activation) <= max_effort]
constraints += [activation >= 0]
constraints += [thrust_mat @ activation == moment]
# define objective
objective = cp.Minimize(cp.sum_squares(activation))
# define problem
problem = cp.Problem(objective, constraints)

moment.value = np.random.rand(n_dims)
thrust_mat.value = np.array([
    [1, -1, -1, 1],
    [1, -1, 1, -1],
    [1, 1, -1, -1]])
max_effort.value = 1.0

# Solve the problem
val = problem.solve(solver=cp.ECOS, verbose=True, max_iters=10)
print(f'activation = {activation.value.T}')
print(f'moment = {moment.value.T}')
print(f'delivered thrust error = {thrust_mat.value @ activation.value.T}')

################################
################################
################################
from cvxpygen import cpg
cpg.generate_code(problem, code_dir="Thruster_Selection", solver='ECOS')
