from cvxpy import *  
  
# Solving a problem with different solvers.  
x = Variable(2)  
obj = Minimize(norm(x, 2) + norm(x, 1))  
constraints = [x >= 2]  
prob = Problem(obj, constraints)  
  
# Solve with ECOS.  
prob.solve(solver=ECOS)  
print(prob.value)
