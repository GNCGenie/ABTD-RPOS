# CLOSED LOOP ORBITAL GUIDANCE ALGORITHM (CLOLOORBGA)

### Description:
This function calculates the optimal impulses required to transition from an
initial state to a target state while minimizing the fuel use and final state
deviation from target.

### Parameters:
- `init`: Initial state vector represented as a list or array-like object.
- `targ`: Target state vector represented as a list or array-like object.
The state vectors are Orbital Elements : `[a, ecc, inc, raan, argp, nu]`

### Returns:
- `res`: An optimization result object containing information about the
optimization process and the optimal solution. The solution includes the optimal
impulses (U1 and U2) and times (T1 and T2).

res.x is a vector containing:
- U1 : Impulse 1 in LVLH frame along (R, V, H) directions in m/s
- U2 : Impulse 2 in LVLH frame along (R, V, H) directions in m/s
- T1 : Time to wait to give Impulse 1
- T2 : Time to wait to give Impulse 2

### Example:
```python
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
```

### Usage:

Cython directory contains the cythonized version of CLOLOORBGA. Executing
setup.py will build the C binary for controller

```bash
python setup.py build_ext --inplace
```
