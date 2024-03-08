
/*
Auto-generated by CVXPYgen on March 07, 2024 at 19:14:03.
Content: Variable definitions.
*/

#include "cpg_workspace.h"

// Vector containing flattened user-defined parameters
cpg_float cpg_params_vec[17] = {
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)0.34896654058232912110,
(cpg_float)0.65426441483096897667,
(cpg_float)0.14684714425036504704,
(cpg_float)1.00000000000000000000,
};

// Sparse mappings from user-defined to canonical parameters
cpg_int canon_A_map_i[12] = {
1,
2,
3,
4,
5,
6,
7,
8,
9,
10,
11,
12,
};
cpg_int canon_A_map_p[13] = {
0,
1,
2,
3,
4,
5,
6,
7,
8,
9,
10,
11,
12,
};
cpg_float canon_A_map_x[12] = {
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
};
cpg_csc canon_A_map = {canon_A_map_p, canon_A_map_i, canon_A_map_x};

cpg_int canon_b_map_i[3] = {
13,
14,
15,
};
cpg_int canon_b_map_p[4] = {
0,
1,
2,
3,
};
cpg_float canon_b_map_x[3] = {
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
};
cpg_csc canon_b_map = {canon_b_map_p, canon_b_map_i, canon_b_map_x};

cpg_int canon_h_map_i[6] = {
0,
0,
0,
0,
16,
16,
};
cpg_int canon_h_map_p[23] = {
0,
0,
0,
0,
0,
0,
0,
0,
0,
1,
2,
3,
4,
4,
4,
4,
4,
5,
6,
6,
6,
6,
6,
};
cpg_float canon_h_map_x[6] = {
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
};
cpg_csc canon_h_map = {canon_h_map_p, canon_h_map_i, canon_h_map_x};

// Canonical parameters
cpg_float canon_c[9] = {
(cpg_float)1.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
};

cpg_float canon_c_conditioning[9] = {
(cpg_float)1.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
};

cpg_int canon_A_i[12] = {
0,
1,
2,
0,
1,
2,
0,
1,
2,
0,
1,
2,
};
cpg_int canon_A_p[10] = {
0,
0,
3,
6,
9,
12,
12,
12,
12,
12,
};
cpg_float canon_A_x[12] = {
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
};
cpg_csc canon_A = {canon_A_p, canon_A_i, canon_A_x};

cpg_int canon_A_conditioning_i[12] = {
0,
1,
2,
0,
1,
2,
0,
1,
2,
0,
1,
2,
};
cpg_int canon_A_conditioning_p[10] = {
0,
0,
3,
6,
9,
12,
12,
12,
12,
12,
};
cpg_float canon_A_conditioning_x[12] = {
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
};
cpg_csc canon_A_conditioning = {canon_A_conditioning_p, canon_A_conditioning_i, canon_A_conditioning_x};

cpg_float canon_b[3] = {
(cpg_float)0.34896654058232912110,
(cpg_float)0.65426441483096897667,
(cpg_float)0.14684714425036504704,
};

cpg_float canon_b_conditioning[3] = {
(cpg_float)0.34896654058232912110,
(cpg_float)0.65426441483096897667,
(cpg_float)0.14684714425036504704,
};

cpg_int canon_G_i[30] = {
16,
17,
0,
4,
12,
18,
1,
5,
13,
19,
2,
6,
14,
20,
3,
7,
15,
21,
0,
4,
8,
1,
5,
9,
2,
6,
10,
3,
7,
11,
};
cpg_int canon_G_p[10] = {
0,
2,
6,
10,
14,
18,
21,
24,
27,
30,
};
cpg_float canon_G_x[30] = {
(cpg_float)-1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-2.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-2.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-2.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-2.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)1.00000000000000000000,
};
cpg_csc canon_G = {canon_G_p, canon_G_i, canon_G_x};

cpg_int canon_G_conditioning_i[30] = {
16,
17,
0,
4,
12,
18,
1,
5,
13,
19,
2,
6,
14,
20,
3,
7,
15,
21,
0,
4,
8,
1,
5,
9,
2,
6,
10,
3,
7,
11,
};
cpg_int canon_G_conditioning_p[10] = {
0,
2,
6,
10,
14,
18,
21,
24,
27,
30,
};
cpg_float canon_G_conditioning_x[30] = {
(cpg_float)-1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-2.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-2.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-2.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-2.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)-1.00000000000000000000,
(cpg_float)1.00000000000000000000,
};
cpg_csc canon_G_conditioning = {canon_G_conditioning_p, canon_G_conditioning_i, canon_G_conditioning_x};

cpg_float canon_h[22] = {
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
};

cpg_float canon_h_conditioning[22] = {
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)1.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
};

// Struct containing canonical parameters
Canon_Params_t Canon_Params = {
.c = (cpg_float *) &canon_c,
.d = 0.00000000000000000000,
.A = &canon_A,
.b = (cpg_float *) &canon_b,
.G = &canon_G,
.h = (cpg_float *) &canon_h,
};

Canon_Params_t Canon_Params_conditioning = {
.c = (cpg_float *) &canon_c_conditioning,
.d = 0.00000000000000000000,
.A = &canon_A_conditioning,
.b = (cpg_float *) &canon_b_conditioning,
.G = &canon_G_conditioning,
.h = (cpg_float *) &canon_h_conditioning,
};

// Struct containing flags for outdated canonical parameters
Canon_Outdated_t Canon_Outdated = {
.c = 0,
.d = 0,
.A = 0,
.b = 0,
.G = 0,
.h = 0,
};

// User-defined variables
cpg_float activation[4] = {
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
};

// Struct containing primal solution
CPG_Prim_t CPG_Prim = {
.activation = (cpg_float *) &activation,
};

// Dual variables associated with user-defined constraints
cpg_float d0[4] = {
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
};

cpg_float d1[4] = {
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
};

cpg_float d2[3] = {
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
(cpg_float)0.00000000000000000000,
};

// Struct containing dual solution
CPG_Dual_t CPG_Dual = {
.d0 = (cpg_float *) &d0,
.d1 = (cpg_float *) &d1,
.d2 = (cpg_float *) &d2,
};

// Struct containing solver info
CPG_Info_t CPG_Info = {
.obj_val = 0,
.iter = 0,
.status = 0,
.pri_res = 0,
.dua_res = 0,
};

// Struct containing solution and info
CPG_Result_t CPG_Result = {
.prim = &CPG_Prim,
.dual = &CPG_Dual,
.info = &CPG_Info,
};

// Struct containing solver settings
Canon_Settings_t Canon_Settings = {
.feastol = 1e-8,
.abstol = 1e-8,
.reltol = 1e-8,
.feastol_inacc = 1e-4,
.abstol_inacc = 5e-5,
.reltol_inacc = 5e-5,
.maxit = 100,
};

// ECOS array of SOC dimensions
cpg_int ecos_q[1] = {
6,
};

// ECOS workspace
pwork* ecos_workspace = 0;

// ECOS exit flag
cpg_int ecos_flag = -99;