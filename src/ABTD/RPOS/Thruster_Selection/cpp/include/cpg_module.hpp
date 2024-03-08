
/*
Auto-generated by CVXPYgen on March 07, 2024 at 19:14:03.
Content: Declarations for Python binding with pybind11.
*/

// User-defined parameters
struct CPG_Params_cpp_t {
    double max_effort;
    std::array<double, 12> thrust_mat;
    std::array<double, 3> moment;
};

// Flags for updated user-defined parameters
struct CPG_Updated_cpp_t {
    bool max_effort;
    bool thrust_mat;
    bool moment;
};

// Primal solution
struct CPG_Prim_cpp_t {
    std::array<double, 4> activation;
};

// Dual solution
struct CPG_Dual_cpp_t {
    std::array<double, 4> d0;
    std::array<double, 4> d1;
    std::array<double, 3> d2;
};

// Solver information
struct CPG_Info_cpp_t {
    double obj_val;
    int iter;
    int status;
    double pri_res;
    double dua_res;
    double time;
};

// Solution and solver information
struct CPG_Result_cpp_t {
    CPG_Prim_cpp_t prim;
    CPG_Dual_cpp_t dual;
    CPG_Info_cpp_t info;
};

// Main solve function
CPG_Result_cpp_t solve_cpp(struct CPG_Updated_cpp_t& CPG_Updated_cpp, struct CPG_Params_cpp_t& CPG_Params_cpp);