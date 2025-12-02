//
// mpcStep.cu
//
// Code generation for function 'mpcStep'
//

// Include files
#include "mpcStep.h"
#include "mpcStep_data.h"
#include "mpcStep_emxutil.h"
#include "mpcStep_mexutil.h"
#include "mpcStep_types.h"
#include "qpkwik.h"
#include "rt_nonfinite.h"
#include "trisolve.h"
#include "MWCUBLASUtils.hpp"
#include "MWCUSOLVERUtils.hpp"
#include "MWCudaDimUtility.hpp"
#include "MWCudaMemoryFunctions.hpp"
#include "MWLaunchParametersUtilities.hpp"
#include "lapacke.h"
#include "math_constants.h"
#include <cmath>
#include <cstddef>
#include <cstring>

// Variable Definitions
static emlrtMCInfo emlrtMCI{ 27,       // lineNo
  5,                                   // colNo
  "error",                             // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\lib\\matlab\\lang\\error.m"// pName
};

static emlrtRTEInfo emlrtRTEI{ 51,     // lineNo
  5,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo b_emlrtRTEI{ 59,   // lineNo
  5,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo c_emlrtRTEI{ 67,   // lineNo
  5,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo d_emlrtRTEI{ 68,   // lineNo
  5,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo e_emlrtRTEI{ 92,   // lineNo
  5,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo f_emlrtRTEI{ 93,   // lineNo
  5,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo g_emlrtRTEI{ 94,   // lineNo
  5,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo h_emlrtRTEI{ 95,   // lineNo
  5,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo i_emlrtRTEI{ 96,   // lineNo
  5,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo j_emlrtRTEI{ 97,   // lineNo
  5,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo k_emlrtRTEI{ 103,  // lineNo
  12,                                  // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo l_emlrtRTEI{ 103,  // lineNo
  16,                                  // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo m_emlrtRTEI{ 124,  // lineNo
  8,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo n_emlrtRTEI{ 112,  // lineNo
  18,                                  // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo o_emlrtRTEI{ 124,  // lineNo
  12,                                  // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo p_emlrtRTEI{ 118,  // lineNo
  18,                                  // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo q_emlrtRTEI{ 110,  // lineNo
  9,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo r_emlrtRTEI{ 112,  // lineNo
  12,                                  // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo s_emlrtRTEI{ 129,  // lineNo
  8,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo t_emlrtRTEI{ 129,  // lineNo
  14,                                  // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo u_emlrtRTEI{ 113,  // lineNo
  12,                                  // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo v_emlrtRTEI{ 116,  // lineNo
  9,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo w_emlrtRTEI{ 130,  // lineNo
  8,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo x_emlrtRTEI{ 118,  // lineNo
  12,                                  // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo y_emlrtRTEI{ 12,   // lineNo
  1,                                   // colNo
  "blkdiag",                           // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\lib\\matlab\\elmat\\blkdiag.m"// pName
};

static emlrtRTEInfo ab_emlrtRTEI{ 119, // lineNo
  12,                                  // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo bb_emlrtRTEI{ 94,  // lineNo
  5,                                   // colNo
  "eye",                               // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\lib\\matlab\\elmat\\eye.m"// pName
};

static emlrtRTEInfo cb_emlrtRTEI{ 134, // lineNo
  5,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo db_emlrtRTEI{ 143, // lineNo
  4,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo eb_emlrtRTEI{ 144, // lineNo
  4,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo fb_emlrtRTEI{ 145, // lineNo
  68,                                  // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo gb_emlrtRTEI{ 145, // lineNo
  4,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo hb_emlrtRTEI{ 150, // lineNo
  8,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo ib_emlrtRTEI{ 158, // lineNo
  24,                                  // colNo
  "mtimes",                            // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\eml\\+coder\\+internal\\+blas\\mtimes.m"// pName
};

static emlrtRTEInfo jb_emlrtRTEI{ 150, // lineNo
  4,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo kb_emlrtRTEI{ 1,   // lineNo
  1,                                   // colNo
  "xpotrf_gpu",                        // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\gpucoder\\gpucoder\\+coder\\+internal\\+lapack\\xpotrf_gpu.p"// pName
};

static emlrtRTEInfo lb_emlrtRTEI{ 383, // lineNo
  20,                                  // colNo
  "linsolve",                          // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\lib\\matlab\\matfun\\linsolve.m"// pName
};

static emlrtRTEInfo mb_emlrtRTEI{ 180, // lineNo
  30,                                  // colNo
  "mpcActiveSetSolver",                // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\mpc\\mpc\\mpcActiveSetSolver.m"// pName
};

static emlrtRTEInfo nb_emlrtRTEI{ 44,  // lineNo
  36,                                  // colNo
  "mtimes",                            // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\eml\\+coder\\+internal\\+blas\\mtimes.m"// pName
};

static emlrtRTEInfo ob_emlrtRTEI{ 20,  // lineNo
  9,                                   // colNo
  "svd",                               // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\lib\\matlab\\matfun\\svd.m"// pName
};

static emlrtRTEInfo pb_emlrtRTEI{ 31,  // lineNo
  33,                                  // colNo
  "xgesvd",                            // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\eml\\+coder\\+internal\\+lapack\\xgesvd.m"// pName
};

static emlrtRTEInfo qb_emlrtRTEI{ 29,  // lineNo
  53,                                  // colNo
  "xgesvd",                            // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\eml\\+coder\\+internal\\+lapack\\xgesvd.m"// pName
};

static emlrtRTEInfo rb_emlrtRTEI{ 138, // lineNo
  1,                                   // colNo
  "mpcActiveSetSolver",                // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\mpc\\mpc\\mpcActiveSetSolver.m"// pName
};

static emlrtRTEInfo sb_emlrtRTEI{ 1,   // lineNo
  1,                                   // colNo
  "xgesvd_gpu",                        // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\gpucoder\\gpucoder\\+coder\\+internal\\+lapack\\xgesvd_gpu.p"// pName
};

static emlrtRTEInfo tb_emlrtRTEI{ 98,  // lineNo
  20,                                  // colNo
  "xgesvd",                            // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\eml\\+coder\\+internal\\+lapack\\xgesvd.m"// pName
};

static emlrtRTEInfo ub_emlrtRTEI{ 154, // lineNo
  54,                                  // colNo
  "mpcActiveSetSolver",                // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\mpc\\mpc\\mpcActiveSetSolver.m"// pName
};

static emlrtRTEInfo vb_emlrtRTEI{ 131, // lineNo
  9,                                   // colNo
  "xgesvd",                            // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\eml\\+coder\\+internal\\+lapack\\xgesvd.m"// pName
};

static emlrtRTEInfo wb_emlrtRTEI{ 129, // lineNo
  33,                                  // colNo
  "xgesvd",                            // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\eml\\+coder\\+internal\\+lapack\\xgesvd.m"// pName
};

static emlrtRTEInfo xb_emlrtRTEI{ 207, // lineNo
  5,                                   // colNo
  "xgesvd",                            // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\eml\\+coder\\+internal\\+lapack\\xgesvd.m"// pName
};

static emlrtRTEInfo yb_emlrtRTEI{ 41,  // lineNo
  5,                                   // colNo
  "cat",                               // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\eml\\+coder\\+internal\\cat.m"// pName
};

static emlrtRTEInfo ac_emlrtRTEI{ 154, // lineNo
  64,                                  // colNo
  "mpcActiveSetSolver",                // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\mpc\\mpc\\mpcActiveSetSolver.m"// pName
};

static emlrtRTEInfo bc_emlrtRTEI{ 154, // lineNo
  75,                                  // colNo
  "mpcActiveSetSolver",                // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\mpc\\mpc\\mpcActiveSetSolver.m"// pName
};

static emlrtRTEInfo dc_emlrtRTEI{ 30,  // lineNo
  21,                                  // colNo
  "applyScalarFunction",               // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\eml\\+coder\\+internal\\applyScalarFunction.m"// pName
};

static emlrtRTEInfo ec_emlrtRTEI{ 44,  // lineNo
  48,                                  // colNo
  "mtimes",                            // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\eml\\+coder\\+internal\\+blas\\mtimes.m"// pName
};

static emlrtRTEInfo fc_emlrtRTEI{ 129, // lineNo
  6,                                   // colNo
  "applyBinaryScalarFunction",         // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\eml\\+coder\\+internal\\applyBinaryScalarFunction.m"// pName
};

static emlrtRTEInfo gc_emlrtRTEI{ 37,  // lineNo
  25,                                  // colNo
  "eml_qr",                            // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\lib\\matlab\\matfun\\private\\eml_qr.m"// pName
};

static emlrtRTEInfo hc_emlrtRTEI{ 98,  // lineNo
  20,                                  // colNo
  "eml_qr",                            // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\lib\\matlab\\matfun\\private\\eml_qr.m"// pName
};

static emlrtRTEInfo ic_emlrtRTEI{ 99,  // lineNo
  20,                                  // colNo
  "eml_qr",                            // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\lib\\matlab\\matfun\\private\\eml_qr.m"// pName
};

static emlrtRTEInfo jc_emlrtRTEI{ 1,   // lineNo
  1,                                   // colNo
  "xgeqrf_gpu",                        // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\gpucoder\\gpucoder\\+coder\\+internal\\+lapack\\xgeqrf_gpu.p"// pName
};

static emlrtRTEInfo kc_emlrtRTEI{ 73,  // lineNo
  1,                                   // colNo
  "xzgeqp3",                           // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\eml\\+coder\\+internal\\+reflapack\\xzgeqp3.m"// pName
};

static emlrtRTEInfo lc_emlrtRTEI{ 134, // lineNo
  1,                                   // colNo
  "xzgeqp3",                           // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\eml\\+coder\\+internal\\+reflapack\\xzgeqp3.m"// pName
};

static emlrtRTEInfo mc_emlrtRTEI{ 149, // lineNo
  5,                                   // colNo
  "eml_qr",                            // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\lib\\matlab\\matfun\\private\\eml_qr.m"// pName
};

static emlrtRTEInfo nc_emlrtRTEI{ 129, // lineNo
  5,                                   // colNo
  "eml_qr",                            // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\lib\\matlab\\matfun\\private\\eml_qr.m"// pName
};

static emlrtRTEInfo oc_emlrtRTEI{ 154, // lineNo
  5,                                   // colNo
  "mpcActiveSetSolver",                // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\mpc\\mpc\\mpcActiveSetSolver.m"// pName
};

static emlrtRTEInfo pc_emlrtRTEI{ 102, // lineNo
  9,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo qc_emlrtRTEI{ 124, // lineNo
  5,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo rc_emlrtRTEI{ 103, // lineNo
  9,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo sc_emlrtRTEI{ 107, // lineNo
  9,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo tc_emlrtRTEI{ 111, // lineNo
  9,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo uc_emlrtRTEI{ 129, // lineNo
  5,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo vc_emlrtRTEI{ 130, // lineNo
  5,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo wc_emlrtRTEI{ 112, // lineNo
  9,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo xc_emlrtRTEI{ 134, // lineNo
  17,                                  // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo yc_emlrtRTEI{ 113, // lineNo
  9,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo ad_emlrtRTEI{ 134, // lineNo
  43,                                  // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo bd_emlrtRTEI{ 118, // lineNo
  9,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo cd_emlrtRTEI{ 119, // lineNo
  9,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo dd_emlrtRTEI{ 145, // lineNo
  23,                                  // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo ed_emlrtRTEI{ 125, // lineNo
  23,                                  // colNo
  "mpcActiveSetSolver",                // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\mpc\\mpc\\mpcActiveSetSolver.m"// pName
};

static emlrtRTEInfo fd_emlrtRTEI{ 125, // lineNo
  5,                                   // colNo
  "mpcActiveSetSolver",                // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\mpc\\mpc\\mpcActiveSetSolver.m"// pName
};

static emlrtRTEInfo gd_emlrtRTEI{ 18,  // lineNo
  9,                                   // colNo
  "svd",                               // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\lib\\matlab\\matfun\\svd.m"// pName
};

static emlrtRTEInfo hd_emlrtRTEI{ 154, // lineNo
  53,                                  // colNo
  "mpcActiveSetSolver",                // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\mpc\\mpc\\mpcActiveSetSolver.m"// pName
};

static emlrtRTEInfo id_emlrtRTEI{ 129, // lineNo
  9,                                   // colNo
  "xgesvd",                            // fName
  "D:\\Program Files\\Matlab\\R2024b\\toolbox\\eml\\eml\\+coder\\+internal\\+lapack\\xgesvd.m"// pName
};

static emlrtRTEInfo jd_emlrtRTEI{ 1,   // lineNo
  16,                                  // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

static emlrtRTEInfo kd_emlrtRTEI{ 154, // lineNo
  4,                                   // colNo
  "mpcStep",                           // fName
  "D:\\Files\\Projects\\NVIDIA-Drive-Emulation\\src\\scripts\\computations\\mpcStep.m"// pName
};

// Function Declarations
static void b_error(const mxArray *m, const mxArray *m1, emlrtMCInfo *location);
static void b_error(const mxArray *m, const mxArray *m1, const mxArray *m2,
                    const mxArray *m3, emlrtMCInfo *location);
static void b_error(const mxArray *m, const mxArray *m1, const mxArray *m2,
                    const mxArray *m3, const mxArray *m4, const mxArray *m5,
                    emlrtMCInfo *location);
static void binary_expand_op_2(emxArray_real_T *in1, const emxArray_real_T *in2,
  const emxArray_int8_T *in3);
static int64_T computeEndIdx(int64_T start, int64_T end, int64_T stride);
static
#ifdef __CUDACC__

__device__
#endif

int64_T computeEndIdx_device(int64_T start, int64_T end, int64_T stride);
static uint64_T computeNumIters(int32_T ub);
static uint64_T computeNumIters(int32_T ub, int32_T b_ub);
static uint64_T computeNumIters(int64_T ub);
static uint64_T computeNumIters(int64_T ub, int32_T b_ub);
static void gpuEmxEnsureCapacity_boolean_T(const emxArray_boolean_T *cpu,
  emxArray_boolean_T *gpu, boolean_T needsCopy);
static void gpuEmxEnsureCapacity_int16_T(const emxArray_int16_T *cpu,
  emxArray_int16_T *gpu, boolean_T needsCopy);
static void gpuEmxEnsureCapacity_int32_T(const emxArray_int32_T *cpu,
  emxArray_int32_T *gpu, boolean_T needsCopy);
static void gpuEmxEnsureCapacity_int8_T(const emxArray_int8_T *cpu,
  emxArray_int8_T *gpu, boolean_T needsCopy);
static void gpuEmxFree_boolean_T(emxArray_boolean_T *gpu);
static void gpuEmxFree_int16_T(emxArray_int16_T *gpu);
static void gpuEmxFree_int32_T(emxArray_int32_T *gpu);
static void gpuEmxFree_int8_T(emxArray_int8_T *gpu);
static void gpuEmxFree_real_T(emxArray_real_T *gpu);
static void gpuEmxMemcpyCpuToGpu_int16_T(emxArray_int16_T *gpu, const
  emxArray_int16_T *cpu);
static void gpuEmxMemcpyCpuToGpu_int8_T(emxArray_int8_T *gpu, const
  emxArray_int8_T *cpu);
static void gpuEmxMemcpyGpuToCpu_boolean_T(emxArray_boolean_T *cpu,
  emxArray_boolean_T *gpu);
static void gpuEmxMemcpyGpuToCpu_int16_T(emxArray_int16_T *cpu, emxArray_int16_T
  *gpu);
static void gpuEmxMemcpyGpuToCpu_int32_T(emxArray_int32_T *cpu, emxArray_int32_T
  *gpu);
static void gpuEmxMemcpyGpuToCpu_int8_T(emxArray_int8_T *cpu, emxArray_int8_T
  *gpu);
static void gpuEmxMemcpyGpuToCpu_real_T(emxArray_real_T *cpu, emxArray_real_T
  *gpu);
static void gpuEmxReset_boolean_T(emxArray_boolean_T *gpu);
static void gpuEmxReset_int16_T(emxArray_int16_T *gpu);
static void gpuEmxReset_int32_T(emxArray_int32_T *gpu);
static void gpuEmxReset_int8_T(emxArray_int8_T *gpu);
static void gpuEmxReset_real_T(emxArray_real_T *gpu);
static void gpuThrowError(const char_T *file, int32_T b_line);
static __global__ void mpcStep_kernel1(const real_T v_ref, const int32_T b,
  emxArray_real_T z_ref);
static __global__ void mpcStep_kernel10(const int32_T b, emxArray_real_T RU);
static __global__ void mpcStep_kernel100(const real_T *atmp, const int32_T ii,
  emxArray_real_T Q);
static __global__ void mpcStep_kernel101(const emxArray_real_T Q, const int32_T
  ii, const real_T cMin, const int32_T i, emxArray_real_T tau);
static __global__ void mpcStep_kernel102(const int32_T i, emxArray_real_T tau);
static __global__ void mpcStep_kernel103(const int32_T b, emxArray_real_T tau);
static __global__ void mpcStep_kernel104(const int32_T k, const int64_T b,
  emxArray_real_T tau);
static __global__ void mpcStep_kernel105(const int32_T b, emxArray_real_T tau);
static __global__ void mpcStep_kernel106(const emxArray_real_T A, const int32_T
  nx, const int32_T b, emxArray_real_T R, int32_T R_dim0, int32_T A_dim0);
static __global__ void mpcStep_kernel107(const int32_T nx, const int32_T k,
  const int64_T b, emxArray_real_T R, int32_T R_dim0);
static __global__ void mpcStep_kernel108(const emxArray_real_T A, const int32_T
  k, const int32_T b, const int64_T c, emxArray_real_T R, int32_T R_dim0,
  int32_T A_dim0);
static __global__ void mpcStep_kernel109(const int32_T AX, emxArray_real_T A);
static __global__ void mpcStep_kernel11(const int32_T b, emxArray_int8_T FX);
static __global__ void mpcStep_kernel110(const emxArray_real_T A, const int32_T
  b, const int32_T c, emxArray_real_T Q, int32_T Q_dim0, int32_T A_dim0);
static __global__ void mpcStep_kernel111(const int32_T A, emxArray_real_T work);
static __global__ void mpcStep_kernel112(const int32_T i, emxArray_real_T tau);
static __global__ void mpcStep_kernel113(const real_T atmp, const real_T cMin,
  const int32_T i, emxArray_real_T tau);
static __global__ void mpcStep_kernel114(const real_T atmp, const int32_T ii,
  emxArray_real_T A);
static __global__ void mpcStep_kernel115(const emxArray_real_T A, const int32_T
  ii, real_T *atmp);
static __global__ void mpcStep_kernel116(const int32_T ii, emxArray_real_T A);
static __global__ void mpcStep_kernel117(const real_T *atmp, const int32_T ii,
  emxArray_real_T A);
static __global__ void mpcStep_kernel118(const emxArray_real_T A, const int32_T
  ii, const real_T cMin, const int32_T i, emxArray_real_T tau);
static __global__ void mpcStep_kernel119(const int32_T i, emxArray_real_T tau);
static __global__ void mpcStep_kernel12(const int32_T b, emxArray_int16_T gX);
static __global__ void mpcStep_kernel120(const int32_T b, emxArray_real_T tau);
static __global__ void mpcStep_kernel121(const int32_T k, const int64_T b,
  emxArray_real_T tau);
static __global__ void mpcStep_kernel122(const int32_T b, emxArray_real_T lam);
static __global__ void mpcStep_kernel123(const emxArray_real_T Hinv, const
  int32_T i, const int32_T b_Hinv, emxArray_real_T a, int32_T Hinv_dim0);
static __global__ void mpcStep_kernel124(const real_T t, const int32_T i,
  emxArray_real_T z_solution);
static __global__ void mpcStep_kernel125(const emxArray_real_T z_solution, const
  emxArray_real_T result, const int32_T i, const int32_T b_result,
  emxArray_real_T x, int32_T result_dim0);
static __global__ void mpcStep_kernel126(const emxArray_real_T x, const int32_T
  b, emxArray_real_T y);
static __global__ void mpcStep_kernel127(const real_T t, const int32_T i,
  emxArray_real_T cTol);
static __global__ void mpcStep_kernel128(const emxArray_real_T result, const
  int32_T i, const int32_T b_result, emxArray_real_T a, int32_T result_dim0);
static __global__ void mpcStep_kernel129(const emxArray_real_T result, const
  int32_T MaxWSiter, const int32_T b_result, emxArray_real_T AcRow, int32_T
  result_dim0);
static __global__ void mpcStep_kernel13(const int32_T b, emxArray_int8_T FU);
static __global__ void mpcStep_kernel130(const emxArray_real_T result, const
  int32_T MaxWSiter, const int32_T b_result, emxArray_real_T B, int32_T
  result_dim0);
static __global__ void mpcStep_kernel131(const int32_T Hinv, emxArray_real_T z);
static __global__ void mpcStep_kernel132(const emxArray_real_T z, const int32_T
  b_z, emxArray_real_T A);
static __global__ void mpcStep_kernel133(const emxArray_real_T result, const
  int32_T MaxWSiter, const int32_T b_result, emxArray_real_T B, int32_T
  result_dim0);
static __global__ void mpcStep_kernel134(const emxArray_real_T z, const real_T t,
  const int32_T z_solution, emxArray_real_T b_z_solution);
static __global__ void mpcStep_kernel135(const int32_T AX, const int32_T b_AX,
  emxArray_real_T RLinv, int32_T RLinv_dim0);
static __global__ void mpcStep_kernel136(const emxArray_real_T result, const
  int32_T outsize_idx_0, const int32_T b_result, emxArray_real_T B, int32_T
  result_dim0);
static __global__ void mpcStep_kernel137(const int32_T Linv, emxArray_real_T dv1);
static __global__ void mpcStep_kernel138(const emxArray_real_T dv1, const
  int32_T i, const int32_T s, emxArray_real_T RLinv, int32_T RLinv_dim0);
static __global__ void mpcStep_kernel139(const emxArray_real_T RLinv, const
  int32_T b_RLinv, emxArray_real_T A);
static __global__ void mpcStep_kernel14(const int32_T b, emxArray_int16_T gU);
static __global__ void mpcStep_kernel140(const emxArray_real_T A, const int32_T
  b, const int32_T c, emxArray_real_T Q, int32_T Q_dim0, int32_T A_dim0);
static __global__ void mpcStep_kernel141(const int32_T k, const int32_T b, const
  int64_T c, emxArray_real_T Q, int32_T Q_dim0);
static __global__ void mpcStep_kernel142(const int32_T b, emxArray_real_T tau);
static __global__ void mpcStep_kernel143(const emxArray_real_T Q, const int32_T
  nx, const int32_T b, emxArray_real_T R, int32_T R_dim0, int32_T Q_dim0);
static __global__ void mpcStep_kernel144(const int32_T nx, const int32_T k,
  const int64_T b, emxArray_real_T R, int32_T R_dim0);
static __global__ void mpcStep_kernel145(const int32_T AX, emxArray_real_T Q);
static __global__ void mpcStep_kernel146(const emxArray_real_T H, const int32_T
  b_H, emxArray_real_T a);
static __global__ void mpcStep_kernel147(const emxArray_real_T result, const
  int32_T MaxWSiter, const int32_T b_result, emxArray_real_T B, int32_T
  result_dim0);
static __global__ void mpcStep_kernel148(const int32_T a, emxArray_real_T z);
static __global__ void mpcStep_kernel149(const int32_T i, const emxArray_real_T
  D, const int32_T b_D, emxArray_real_T b, int32_T D_dim0);
static __global__ void mpcStep_kernel15(const int32_T i, emxArray_int32_T iv5,
  emxArray_int32_T iv4);
static __global__ void mpcStep_kernel150(const int32_T lda, const
  emxArray_real_T Q, const int32_T b_Q, emxArray_real_T b, int32_T Q_dim0);
static __global__ void mpcStep_kernel151(const int32_T i, const emxArray_real_T
  Linv, const int32_T b_Linv, emxArray_real_T A, int32_T Linv_dim0);
static __global__ void mpcStep_kernel152(const real_T t, const int32_T lda,
  const int32_T i, emxArray_real_T TL, int32_T TL_dim0);
static __global__ void mpcStep_kernel153(const int32_T AX, const int32_T b_AX,
  emxArray_real_T RLinv, int32_T RLinv_dim0);
static __global__ void mpcStep_kernel154(const int32_T lda, const int32_T nA,
  emxArray_real_T RLinv, int32_T RLinv_dim0);
static __global__ void mpcStep_kernel155(const emxArray_real_T R, const int32_T
  k, const int32_T nx, const int64_T b, emxArray_real_T RLinv, int32_T
  RLinv_dim0, int32_T R_dim0);
static __global__ void mpcStep_kernel156(const emxArray_real_T R, const int32_T
  nx, const int32_T k, const int64_T b, emxArray_real_T RLinv, int32_T
  RLinv_dim0, int32_T R_dim0);
static __global__ void mpcStep_kernel157(const emxArray_real_T RLinv, const
  emxArray_real_T TL, const int32_T nA, const int32_T b, const int32_T c,
  emxArray_real_T D, int32_T D_dim0, int32_T TL_dim0, int32_T RLinv_dim0);
static __global__ void mpcStep_kernel158(const int32_T Q, emxArray_real_T work);
static __global__ void mpcStep_kernel159(const int32_T i, emxArray_real_T tau);
static __global__ void mpcStep_kernel16(const real_T torque_penalty, const
  emxArray_int32_T iv5, const emxArray_int32_T iv4, emxArray_real_T RU, int32_T
  RU_dim0);
static __global__ void mpcStep_kernel160(const real_T atmp, const real_T cMin,
  const int32_T i, emxArray_real_T tau);
static __global__ void mpcStep_kernel161(const real_T atmp, const int32_T ii,
  emxArray_real_T Q);
static __global__ void mpcStep_kernel162(const emxArray_real_T Q, const int32_T
  ii, real_T *atmp);
static __global__ void mpcStep_kernel163(const int32_T ii, emxArray_real_T Q);
static __global__ void mpcStep_kernel164(const real_T *atmp, const int32_T ii,
  emxArray_real_T Q);
static __global__ void mpcStep_kernel165(const emxArray_real_T Q, const int32_T
  ii, const real_T cMin, const int32_T i, emxArray_real_T tau);
static __global__ void mpcStep_kernel166(const int32_T i, emxArray_real_T tau);
static __global__ void mpcStep_kernel167(const int32_T b, emxArray_real_T tau);
static __global__ void mpcStep_kernel168(const int32_T k, const int64_T b,
  emxArray_real_T tau);
static __global__ void mpcStep_kernel169(const int32_T b, emxArray_real_T tau);
static __global__ void mpcStep_kernel17(const emxArray_real_T idfx, const
  int32_T b_idfx, emxArray_int32_T iv10);
static __global__ void mpcStep_kernel170(const emxArray_real_T A, const int32_T
  nx, const int32_T b, emxArray_real_T R, int32_T R_dim0, int32_T A_dim0);
static __global__ void mpcStep_kernel171(const int32_T nx, const int32_T k,
  const int64_T b, emxArray_real_T R, int32_T R_dim0);
static __global__ void mpcStep_kernel172(const emxArray_real_T A, const int32_T
  k, const int32_T b, const int64_T c, emxArray_real_T R, int32_T R_dim0,
  int32_T A_dim0);
static __global__ void mpcStep_kernel173(const int32_T AX, emxArray_real_T A);
static __global__ void mpcStep_kernel174(const emxArray_real_T A, const int32_T
  b, const int32_T c, emxArray_real_T Q, int32_T Q_dim0, int32_T A_dim0);
static __global__ void mpcStep_kernel175(const int32_T A, emxArray_real_T work);
static __global__ void mpcStep_kernel176(const int32_T i, emxArray_real_T tau);
static __global__ void mpcStep_kernel177(const real_T atmp, const real_T cMin,
  const int32_T i, emxArray_real_T tau);
static __global__ void mpcStep_kernel178(const real_T atmp, const int32_T ii,
  emxArray_real_T A);
static __global__ void mpcStep_kernel179(const emxArray_real_T A, const int32_T
  ii, real_T *atmp);
static __global__ void mpcStep_kernel18(const emxArray_real_T idfx, const
  int32_T b_idfx, emxArray_int32_T iv12);
static __global__ void mpcStep_kernel180(const int32_T ii, emxArray_real_T A);
static __global__ void mpcStep_kernel181(const real_T *atmp, const int32_T ii,
  emxArray_real_T A);
static __global__ void mpcStep_kernel182(const emxArray_real_T A, const int32_T
  ii, const real_T cMin, const int32_T i, emxArray_real_T tau);
static __global__ void mpcStep_kernel183(const int32_T i, emxArray_real_T tau);
static __global__ void mpcStep_kernel184(const int32_T b, emxArray_real_T tau);
static __global__ void mpcStep_kernel185(const int32_T k, const int64_T b,
  emxArray_real_T tau);
static __global__ void mpcStep_kernel186(const emxArray_real_T b, const int32_T
  c, emxArray_real_T y);
static __global__ void mpcStep_kernel187(const emxArray_real_T y, const int32_T
  b, emxArray_real_T cTol);
static __global__ void mpcStep_kernel188(const emxArray_real_T Hinv, const
  int32_T i, const int32_T b_Hinv, emxArray_real_T a, int32_T Hinv_dim0);
static __global__ void mpcStep_kernel189(const real_T t, const int32_T i,
  emxArray_real_T z_solution);
static __global__ void mpcStep_kernel19(const emxArray_real_T idfu, const
  int32_T b_idfu, emxArray_int32_T iv13);
static __global__ void mpcStep_kernel190(const emxArray_real_T equality_matrix,
  const int32_T b_equality_matrix, emxArray_real_T A);
static __global__ void mpcStep_kernel191(const int32_T s, emxArray_real_T b_s);
static __global__ void mpcStep_kernel192(const int32_T b, emxArray_real_T s);
static __global__ void mpcStep_kernel193(const emxArray_real_T Linv,
  emxArray_real_T d);
static __global__ void mpcStep_kernel194(const emxArray_real_T d, const int32_T
  b_d, emxArray_boolean_T x);
static __global__ void mpcStep_kernel195(const emxArray_real_T Linv, const
  int32_T b, emxArray_real_T d, int32_T Linv_dim0);
static __global__ void mpcStep_kernel196(emxArray_real_T idxx);
static __global__ void mpcStep_kernel197(const real_T absx, const int32_T b,
  emxArray_real_T idxx);
static __global__ void mpcStep_kernel198(emxArray_real_T idfx);
static __global__ void mpcStep_kernel199(const real_T t, const int32_T b,
  emxArray_real_T idfx);
static __global__ void mpcStep_kernel2(const real_T t, const int32_T
  outsize_dim0, const int32_T b, emxArray_real_T z_ref);
static __global__ void mpcStep_kernel20(const emxArray_real_T idfu, const
  int32_T b_idfu, emxArray_int32_T iv15);
static __global__ void mpcStep_kernel200(emxArray_real_T idx);
static __global__ void mpcStep_kernel201(const real_T absx, const int32_T b,
  emxArray_real_T idx);
static __global__ void mpcStep_kernel21(const uint32_T t, const int32_T b,
  emxArray_real_T idfu);
static __global__ void mpcStep_kernel22(const uint32_T t, const int32_T b,
  emxArray_real_T idfx);
static __global__ void mpcStep_kernel23(const emxArray_real_T idx, const int32_T
  b_idx, emxArray_int32_T iv2, emxArray_int32_T iv);
static __global__ void mpcStep_kernel24(const emxArray_real_T idfx, const
  int32_T b_idfx, emxArray_int32_T iv6);
static __global__ void mpcStep_kernel25(const emxArray_real_T idxx, const
  int32_T b_idxx, emxArray_int32_T iv7);
static __global__ void mpcStep_kernel26(const emxArray_real_T idfx, const
  int32_T b_idfx, emxArray_int32_T iv8);
static __global__ void mpcStep_kernel27(const int32_T outsize, emxArray_real_T y);
static __global__ void mpcStep_kernel28(const emxArray_real_T QX, const int32_T
  b_QX, const int32_T c_QX, emxArray_real_T y, int32_T y_dim0, int32_T QX_dim0);
static __global__ void mpcStep_kernel29(const emxArray_real_T RU, const int32_T
  loop_ub, const int32_T nx, const int32_T AX, const int32_T b_AX,
  emxArray_real_T y, int32_T y_dim0, int32_T AX_dim0);
static __global__ void mpcStep_kernel3(const int32_T b, emxArray_real_T A_powers);
static __global__ void mpcStep_kernel30(const int32_T b, emxArray_int8_T b_I);
static __global__ void mpcStep_kernel31(const emxArray_int8_T b_I, const
  emxArray_real_T y, const int32_T b_y, emxArray_real_T H_mat);
static __global__ void mpcStep_kernel32(const int32_T outsize, emxArray_int8_T
  inequality_matrix);
static __global__ void mpcStep_kernel33(const emxArray_int8_T FX, const int32_T
  b_FX, const int32_T c_FX, emxArray_int8_T inequality_matrix, int32_T
  inequality_matrix_dim0, int32_T FX_dim0);
static __global__ void mpcStep_kernel34(const emxArray_int8_T FU, const int32_T
  loop_ub, const int32_T nx, const int32_T AX, const int32_T b_AX,
  emxArray_int8_T inequality_matrix, int32_T inequality_matrix_dim0, int32_T
  AX_dim0);
static __global__ void mpcStep_kernel35(const emxArray_int16_T gX, const int32_T
  b, emxArray_int16_T inequality_vector);
static __global__ void mpcStep_kernel36(const emxArray_int16_T gU, const int32_T
  b, emxArray_int16_T inequality_vector, int32_T gX_dim0);
static __global__ void mpcStep_kernel37(const int32_T b, emxArray_int8_T b_I);
static __global__ void mpcStep_kernel38(const emxArray_real_T BU, const int32_T
  b_BU, emxArray_real_T varargin_2);
static __global__ void mpcStep_kernel39(const emxArray_int8_T b_I, const int32_T
  result_dim0, const int32_T result, const int32_T b, emxArray_real_T
  equality_matrix, int32_T equality_matrix_dim0);
static __global__ void mpcStep_kernel4(emxArray_real_T A_powers);
static __global__ void mpcStep_kernel40(const emxArray_real_T varargin_2, const
  int32_T result_dim1, const int32_T AX, const int32_T b, emxArray_real_T
  equality_matrix, int32_T equality_matrix_dim0, int32_T AX_dim0);
static __global__ void mpcStep_kernel41(const emxArray_real_T H_mat, const
  int32_T b_H_mat, emxArray_real_T a);
static __global__ void mpcStep_kernel42(const int32_T a, emxArray_real_T f);
static __global__ void mpcStep_kernel43(const int32_T AX, emxArray_real_T H_mat);
static __global__ void mpcStep_kernel44(const int32_T b, emxArray_real_T H_mat,
  int32_T H_mat_dim0);
static __global__ void mpcStep_kernel45(const int32_T b, emxArray_int8_T b_I);
static __global__ void mpcStep_kernel46(const emxArray_int8_T b_I, const int32_T
  nx, const int32_T b, emxArray_real_T Linv, int32_T Linv_dim0, int32_T I_dim0);
static __global__ void mpcStep_kernel47(const int32_T nx, const int32_T k, const
  int64_T b, emxArray_real_T Linv, int32_T Linv_dim0);
static __global__ void mpcStep_kernel48(const emxArray_real_T equality_matrix,
  const int32_T b_equality_matrix, emxArray_real_T A);
static __global__ void mpcStep_kernel49(const int32_T s, emxArray_real_T b_s);
static __global__ void mpcStep_kernel5(const int32_T b, emxArray_real_T AX);
static __global__ void mpcStep_kernel50(const emxArray_real_T Linv, const
  int32_T b_Linv, const int32_T c_Linv, emxArray_real_T A, int32_T A_dim0,
  int32_T Linv_dim0);
static __global__ void mpcStep_kernel51(const int32_T A, emxArray_real_T Hinv);
static __global__ void mpcStep_kernel52(const emxArray_int8_T inequality_matrix,
  const int32_T b_inequality_matrix, emxArray_int8_T varargin_1);
static __global__ void mpcStep_kernel53(const emxArray_int8_T varargin_1, const
  int32_T input_sizes_dim0, const int32_T input_sizes, const int32_T b,
  emxArray_real_T result, int32_T result_dim0);
static __global__ void mpcStep_kernel54(const emxArray_real_T equality_matrix,
  const int32_T input_sizes_dim0, const int32_T AX, const int32_T b,
  emxArray_real_T result, int32_T result_dim0, int32_T AX_dim0);
static __global__ void mpcStep_kernel55(const emxArray_int16_T inequality_vector,
  const int32_T b, emxArray_real_T b_b);
static __global__ void mpcStep_kernel56(const real_T v_meas, const
  emxArray_real_T AX, const int32_T b, emxArray_real_T b_b, int32_T
  inequality_vector_dim0);
static __global__ void mpcStep_kernel57(const int32_T b, emxArray_boolean_T iA);
static __global__ void mpcStep_kernel58(const int32_T b, emxArray_boolean_T iA,
  int32_T inequality_vector_dim0);
static __global__ void mpcStep_kernel59(const int32_T b, emxArray_real_T
  z_solution);
static __global__ void mpcStep_kernel6(const int32_T b, emxArray_real_T BU);
static __global__ void mpcStep_kernel60(const int32_T b, emxArray_real_T lam);
static __global__ void mpcStep_kernel61(const emxArray_real_T Hinv, const
  int32_T i, const int32_T b_Hinv, emxArray_real_T a, int32_T Hinv_dim0);
static __global__ void mpcStep_kernel62(const real_T t, const int32_T i,
  emxArray_real_T z_solution);
static __global__ void mpcStep_kernel63(const int32_T b, emxArray_real_T r);
static __global__ void mpcStep_kernel64(const int32_T b, emxArray_int32_T iC,
  emxArray_real_T cTol);
static __global__ void mpcStep_kernel65(const int32_T b, emxArray_real_T Opt);
static __global__ void mpcStep_kernel66(const emxArray_real_T f, const int32_T b,
  emxArray_real_T Rhs);
static __global__ void mpcStep_kernel67(const int32_T b, emxArray_real_T Rhs,
  int32_T f_dim0);
static __global__ void mpcStep_kernel68(const int32_T AX, const int32_T b_AX,
  emxArray_real_T RLinv, int32_T RLinv_dim0);
static __global__ void mpcStep_kernel69(const emxArray_real_T result, const
  int32_T outsize_idx_0, const int32_T b_result, emxArray_real_T B, int32_T
  result_dim0);
static __global__ void mpcStep_kernel7(const emxArray_real_T A_powers, const
  int32_T b, emxArray_real_T AX);
static __global__ void mpcStep_kernel70(const int32_T Linv, emxArray_real_T dv);
static __global__ void mpcStep_kernel71(const emxArray_real_T dv, const int32_T
  i, const int32_T s, emxArray_real_T RLinv, int32_T RLinv_dim0);
static __global__ void mpcStep_kernel72(const emxArray_real_T RLinv, const
  int32_T b_RLinv, emxArray_real_T A);
static __global__ void mpcStep_kernel73(const emxArray_real_T A, const int32_T b,
  const int32_T c, emxArray_real_T Q, int32_T Q_dim0, int32_T A_dim0);
static __global__ void mpcStep_kernel74(const int32_T k, const int32_T b, const
  int64_T c, emxArray_real_T Q, int32_T Q_dim0);
static __global__ void mpcStep_kernel75(const int32_T b, emxArray_real_T tau);
static __global__ void mpcStep_kernel76(const emxArray_real_T Q, const int32_T
  nx, const int32_T b, emxArray_real_T R, int32_T R_dim0, int32_T Q_dim0);
static __global__ void mpcStep_kernel77(const int32_T nx, const int32_T k, const
  int64_T b, emxArray_real_T R, int32_T R_dim0);
static __global__ void mpcStep_kernel78(const int32_T AX, emxArray_real_T Q);
static __global__ void mpcStep_kernel79(const int32_T b, emxArray_int32_T iC,
  emxArray_boolean_T iA);
static __global__ void mpcStep_kernel8(const struct0_T stateSpace, const
  emxArray_real_T A_powers, const int32_T b, const int32_T c, emxArray_real_T BU,
  int32_T BU_dim0);
static __global__ void mpcStep_kernel80(const emxArray_real_T H, const int32_T i,
  const int32_T b_H, emxArray_real_T a, int32_T H_dim0);
static __global__ void mpcStep_kernel81(const emxArray_real_T Rhs, const int32_T
  b, emxArray_real_T b_b);
static __global__ void mpcStep_kernel82(const emxArray_real_T Rhs, const int32_T
  b, emxArray_real_T b_b);
static __global__ void mpcStep_kernel83(const int32_T i, const emxArray_real_T D,
  const int32_T b_D, emxArray_real_T A, int32_T D_dim0);
static __global__ void mpcStep_kernel84(const emxArray_real_T Opt, const int32_T
  b, emxArray_real_T z_solution);
static __global__ void mpcStep_kernel85(const int32_T b, emxArray_int32_T iC,
  emxArray_boolean_T iA);
static __global__ void mpcStep_kernel86(const int32_T lda, const emxArray_real_T
  Q, const int32_T b_Q, emxArray_real_T b, int32_T Q_dim0);
static __global__ void mpcStep_kernel87(const int32_T i, const emxArray_real_T
  Linv, const int32_T b_Linv, emxArray_real_T A, int32_T Linv_dim0);
static __global__ void mpcStep_kernel88(const real_T t, const int32_T lda, const
  int32_T i, emxArray_real_T TL, int32_T TL_dim0);
static __global__ void mpcStep_kernel89(const int32_T AX, const int32_T b_AX,
  emxArray_real_T RLinv, int32_T RLinv_dim0);
static __global__ void mpcStep_kernel9(const int32_T b, emxArray_real_T QX);
static __global__ void mpcStep_kernel90(const int32_T lda, const int32_T nA,
  emxArray_real_T RLinv, int32_T RLinv_dim0);
static __global__ void mpcStep_kernel91(const emxArray_real_T R, const int32_T k,
  const int32_T nx, const int64_T b, emxArray_real_T RLinv, int32_T RLinv_dim0,
  int32_T R_dim0);
static __global__ void mpcStep_kernel92(const emxArray_real_T R, const int32_T
  nx, const int32_T k, const int64_T b, emxArray_real_T RLinv, int32_T
  RLinv_dim0, int32_T R_dim0);
static __global__ void mpcStep_kernel93(const emxArray_real_T RLinv, const
  emxArray_real_T TL, const int32_T nA, const int32_T b, const int32_T c,
  emxArray_real_T D, int32_T D_dim0, int32_T TL_dim0, int32_T RLinv_dim0);
static __global__ void mpcStep_kernel94(const int32_T Q, emxArray_real_T work);
static __global__ void mpcStep_kernel95(const int32_T i, emxArray_real_T tau);
static __global__ void mpcStep_kernel96(const real_T atmp, const real_T cMin,
  const int32_T i, emxArray_real_T tau);
static __global__ void mpcStep_kernel97(const real_T atmp, const int32_T ii,
  emxArray_real_T Q);
static __global__ void mpcStep_kernel98(const emxArray_real_T Q, const int32_T
  ii, real_T *atmp);
static __global__ void mpcStep_kernel99(const int32_T ii, emxArray_real_T Q);
static real_T rt_hypotd_snf(real_T u0, real_T u1);

// Function Definitions
static void b_error(const mxArray *m, const mxArray *m1, const mxArray *m2,
                    const mxArray *m3, emlrtMCInfo *location)
{
  const mxArray *pArrays[4];
  pArrays[0] = m;
  pArrays[1] = m1;
  pArrays[2] = m2;
  pArrays[3] = m3;
  emlrtCallMATLABR2012b(emlrtRootTLSGlobal, 0, nullptr, 4, &pArrays[0], "error",
                        true, location);
}

static void b_error(const mxArray *m, const mxArray *m1, emlrtMCInfo *location)
{
  const mxArray *pArrays[2];
  pArrays[0] = m;
  pArrays[1] = m1;
  emlrtCallMATLABR2012b(emlrtRootTLSGlobal, 0, nullptr, 2, &pArrays[0], "error",
                        true, location);
}

static void b_error(const mxArray *m, const mxArray *m1, const mxArray *m2,
                    const mxArray *m3, const mxArray *m4, const mxArray *m5,
                    emlrtMCInfo *location)
{
  const mxArray *pArrays[6];
  pArrays[0] = m;
  pArrays[1] = m1;
  pArrays[2] = m2;
  pArrays[3] = m3;
  pArrays[4] = m4;
  pArrays[5] = m5;
  emlrtCallMATLABR2012b(emlrtRootTLSGlobal, 0, nullptr, 6, &pArrays[0], "error",
                        true, location);
}

static void binary_expand_op_2(emxArray_real_T *in1, const emxArray_real_T *in2,
  const emxArray_int8_T *in3)
{
  int32_T aux_0_1;
  int32_T aux_1_1;
  int32_T b;
  int32_T i;
  int32_T stride_0_0;
  int32_T stride_0_1;
  int32_T stride_1_0;
  int32_T stride_1_1;
  i = in1->size[0] * in1->size[1];
  if (in3->size[0] == 1) {
    in1->size[0] = in2->size[0];
  } else {
    in1->size[0] = in3->size[0];
  }

  if (in3->size[1] == 1) {
    in1->size[1] = in2->size[1];
  } else {
    in1->size[1] = in3->size[1];
  }

  emxEnsureCapacity_real_T(in1, i, &cb_emlrtRTEI);
  stride_0_0 = (in2->size[0] != 1);
  stride_0_1 = (in2->size[1] != 1);
  stride_1_0 = (in3->size[0] != 1);
  stride_1_1 = (in3->size[1] != 1);
  aux_0_1 = 0;
  aux_1_1 = 0;
  if (in3->size[1] == 1) {
    b = in2->size[1];
  } else {
    b = in3->size[1];
  }

  for (i = 0; i < b; i++) {
    int32_T c;
    if (in3->size[0] == 1) {
      c = in2->size[0];
    } else {
      c = in3->size[0];
    }

    for (int32_T i1{0}; i1 < c; i1++) {
      in1->data[i1 + in1->size[0] * i] = 2.0 * in2->data[i1 * stride_0_0 +
        in2->size[0] * aux_0_1] + 1.0E-6 * static_cast<real_T>(in3->data[i1 *
        stride_1_0 + in3->size[0] * aux_1_1]);
    }

    aux_1_1 += stride_1_1;
    aux_0_1 += stride_0_1;
  }
}

static int64_T computeEndIdx(int64_T start, int64_T end, int64_T stride)
{
  int64_T newEnd;
  newEnd = -1LL;
  if ((stride > 0LL) && (start <= end)) {
    newEnd = (end - start) / stride;
  } else if ((stride < 0LL) && (end <= start)) {
    newEnd = (start - end) / -stride;
  }

  return newEnd;
}

static __device__ int64_T computeEndIdx_device(int64_T start, int64_T end,
  int64_T stride)
{
  int64_T newEnd;
  newEnd = -1LL;
  if ((stride > 0LL) && (start <= end)) {
    newEnd = (end - start) / stride;
  } else if ((stride < 0LL) && (end <= start)) {
    newEnd = (start - end) / -stride;
  }

  return newEnd;
}

static uint64_T computeNumIters(int32_T ub, int32_T b_ub)
{
  uint64_T n;
  uint64_T numIters;
  boolean_T overflow;
  overflow = false;
  n = 0ULL;
  if (ub >= 0) {
    n = static_cast<uint64_T>(ub + 1);
  }

  numIters = n;
  n = 0ULL;
  if (b_ub >= 0) {
    n = static_cast<uint64_T>(b_ub + 1);
    overflow = (numIters > MAX_uint64_T / n);
  }

  numIters *= n;
  if (overflow) {
    gpuThrowError(__FILE__, __LINE__);
  }

  return numIters;
}

static uint64_T computeNumIters(int64_T ub, int32_T b_ub)
{
  uint64_T n;
  uint64_T numIters;
  boolean_T overflow;
  overflow = false;
  n = 0ULL;
  if (ub >= 0LL) {
    n = static_cast<uint64_T>(ub + 1LL);
  }

  numIters = n;
  n = 0ULL;
  if (b_ub >= 0) {
    n = static_cast<uint64_T>(b_ub + 1);
    overflow = (numIters > MAX_uint64_T / n);
  }

  numIters *= n;
  if (overflow) {
    gpuThrowError(__FILE__, __LINE__);
  }

  return numIters;
}

static uint64_T computeNumIters(int32_T ub)
{
  uint64_T numIters;
  numIters = 0ULL;
  if (ub >= 0) {
    numIters = static_cast<uint64_T>(ub + 1);
  }

  return numIters;
}

static uint64_T computeNumIters(int64_T ub)
{
  uint64_T numIters;
  numIters = 0ULL;
  if (ub >= 0LL) {
    numIters = static_cast<uint64_T>(ub + 1LL);
  }

  return numIters;
}

static void gpuEmxEnsureCapacity_boolean_T(const emxArray_boolean_T *cpu,
  emxArray_boolean_T *gpu, boolean_T needsCopy)
{
  int32_T i;
  int32_T totalSizeCpu;
  int32_T totalSizeGpu;
  boolean_T *newData;
  if (gpu->numDimensions == 0) {
    gpu->numDimensions = cpu->numDimensions;
    gpu->size = static_cast<int32_T *>(emlrtCallocMex(static_cast<uint32_T>
      (gpu->numDimensions), sizeof(int32_T)));
  }

  totalSizeCpu = 1;
  totalSizeGpu = 1;
  for (i = 0; i < cpu->numDimensions; i++) {
    totalSizeGpu *= gpu->size[i];
    totalSizeCpu *= cpu->size[i];
    gpu->size[i] = cpu->size[i];
  }

  if (((totalSizeCpu == 0) && (cpu->allocatedSize > 0)) || (gpu->allocatedSize <
       totalSizeCpu)) {
    i = cpu->allocatedSize;
    if (i < totalSizeCpu) {
      i = totalSizeCpu;
    }

    checkCudaError(mwCudaMalloc(&newData, static_cast<uint32_T>(i) * sizeof
      (boolean_T)), __FILE__, __LINE__);
    needsCopy = (needsCopy && (totalSizeGpu > 0));
    if (needsCopy) {
      checkCudaError(cudaMemcpy(newData, gpu->data, static_cast<uint32_T>
        (totalSizeGpu) * sizeof(boolean_T), cudaMemcpyDeviceToDevice), __FILE__,
                     __LINE__);
    }

    if (gpu->canFreeData) {
      checkCudaError(mwCudaFree(gpu->data), __FILE__, __LINE__);
    }

    gpu->data = newData;
    gpu->allocatedSize = i;
    gpu->canFreeData = true;
  }
}

static void gpuEmxEnsureCapacity_int16_T(const emxArray_int16_T *cpu,
  emxArray_int16_T *gpu, boolean_T needsCopy)
{
  int32_T i;
  int32_T totalSizeCpu;
  int32_T totalSizeGpu;
  int16_T *newData;
  if (gpu->numDimensions == 0) {
    gpu->numDimensions = cpu->numDimensions;
    gpu->size = static_cast<int32_T *>(emlrtCallocMex(static_cast<uint32_T>
      (gpu->numDimensions), sizeof(int32_T)));
  }

  totalSizeCpu = 1;
  totalSizeGpu = 1;
  for (i = 0; i < cpu->numDimensions; i++) {
    totalSizeGpu *= gpu->size[i];
    totalSizeCpu *= cpu->size[i];
    gpu->size[i] = cpu->size[i];
  }

  if (((totalSizeCpu == 0) && (cpu->allocatedSize > 0)) || (gpu->allocatedSize <
       totalSizeCpu)) {
    i = cpu->allocatedSize;
    if (i < totalSizeCpu) {
      i = totalSizeCpu;
    }

    checkCudaError(mwCudaMalloc(&newData, static_cast<uint32_T>(i) * sizeof
      (int16_T)), __FILE__, __LINE__);
    needsCopy = (needsCopy && (totalSizeGpu > 0));
    if (needsCopy) {
      checkCudaError(cudaMemcpy(newData, gpu->data, static_cast<uint32_T>
        (totalSizeGpu) * sizeof(int16_T), cudaMemcpyDeviceToDevice), __FILE__,
                     __LINE__);
    }

    if (gpu->canFreeData) {
      checkCudaError(mwCudaFree(gpu->data), __FILE__, __LINE__);
    }

    gpu->data = newData;
    gpu->allocatedSize = i;
    gpu->canFreeData = true;
  }
}

static void gpuEmxEnsureCapacity_int32_T(const emxArray_int32_T *cpu,
  emxArray_int32_T *gpu, boolean_T needsCopy)
{
  int32_T i;
  int32_T totalSizeCpu;
  int32_T totalSizeGpu;
  int32_T *newData;
  if (gpu->numDimensions == 0) {
    gpu->numDimensions = cpu->numDimensions;
    gpu->size = static_cast<int32_T *>(emlrtCallocMex(static_cast<uint32_T>
      (gpu->numDimensions), sizeof(int32_T)));
  }

  totalSizeCpu = 1;
  totalSizeGpu = 1;
  for (i = 0; i < cpu->numDimensions; i++) {
    totalSizeGpu *= gpu->size[i];
    totalSizeCpu *= cpu->size[i];
    gpu->size[i] = cpu->size[i];
  }

  if (((totalSizeCpu == 0) && (cpu->allocatedSize > 0)) || (gpu->allocatedSize <
       totalSizeCpu)) {
    i = cpu->allocatedSize;
    if (i < totalSizeCpu) {
      i = totalSizeCpu;
    }

    checkCudaError(mwCudaMalloc(&newData, static_cast<uint32_T>(i) * sizeof
      (int32_T)), __FILE__, __LINE__);
    needsCopy = (needsCopy && (totalSizeGpu > 0));
    if (needsCopy) {
      checkCudaError(cudaMemcpy(newData, gpu->data, static_cast<uint32_T>
        (totalSizeGpu) * sizeof(int32_T), cudaMemcpyDeviceToDevice), __FILE__,
                     __LINE__);
    }

    if (gpu->canFreeData) {
      checkCudaError(mwCudaFree(gpu->data), __FILE__, __LINE__);
    }

    gpu->data = newData;
    gpu->allocatedSize = i;
    gpu->canFreeData = true;
  }
}

static void gpuEmxEnsureCapacity_int8_T(const emxArray_int8_T *cpu,
  emxArray_int8_T *gpu, boolean_T needsCopy)
{
  int32_T i;
  int32_T totalSizeCpu;
  int32_T totalSizeGpu;
  int8_T *newData;
  if (gpu->numDimensions == 0) {
    gpu->numDimensions = cpu->numDimensions;
    gpu->size = static_cast<int32_T *>(emlrtCallocMex(static_cast<uint32_T>
      (gpu->numDimensions), sizeof(int32_T)));
  }

  totalSizeCpu = 1;
  totalSizeGpu = 1;
  for (i = 0; i < cpu->numDimensions; i++) {
    totalSizeGpu *= gpu->size[i];
    totalSizeCpu *= cpu->size[i];
    gpu->size[i] = cpu->size[i];
  }

  if (((totalSizeCpu == 0) && (cpu->allocatedSize > 0)) || (gpu->allocatedSize <
       totalSizeCpu)) {
    i = cpu->allocatedSize;
    if (i < totalSizeCpu) {
      i = totalSizeCpu;
    }

    checkCudaError(mwCudaMalloc(&newData, static_cast<uint32_T>(i) * sizeof
      (int8_T)), __FILE__, __LINE__);
    needsCopy = (needsCopy && (totalSizeGpu > 0));
    if (needsCopy) {
      checkCudaError(cudaMemcpy(newData, gpu->data, static_cast<uint32_T>
        (totalSizeGpu) * sizeof(int8_T), cudaMemcpyDeviceToDevice), __FILE__,
                     __LINE__);
    }

    if (gpu->canFreeData) {
      checkCudaError(mwCudaFree(gpu->data), __FILE__, __LINE__);
    }

    gpu->data = newData;
    gpu->allocatedSize = i;
    gpu->canFreeData = true;
  }
}

static void gpuEmxFree_boolean_T(emxArray_boolean_T *gpu)
{
  if (gpu->data && gpu->canFreeData && (gpu->data != (void *)4207599121ULL)) {
    checkCudaError(mwCudaFree(gpu->data), __FILE__, __LINE__);
  }

  emlrtFreeMex(gpu->size);
}

static void gpuEmxFree_int16_T(emxArray_int16_T *gpu)
{
  if (gpu->data && gpu->canFreeData && (gpu->data != (void *)4207599121ULL)) {
    checkCudaError(mwCudaFree(gpu->data), __FILE__, __LINE__);
  }

  emlrtFreeMex(gpu->size);
}

static void gpuEmxFree_int32_T(emxArray_int32_T *gpu)
{
  if (gpu->data && gpu->canFreeData && (gpu->data != (void *)4207599121ULL)) {
    checkCudaError(mwCudaFree(gpu->data), __FILE__, __LINE__);
  }

  emlrtFreeMex(gpu->size);
}

static void gpuEmxFree_int8_T(emxArray_int8_T *gpu)
{
  if (gpu->data && gpu->canFreeData && (gpu->data != (void *)4207599121ULL)) {
    checkCudaError(mwCudaFree(gpu->data), __FILE__, __LINE__);
  }

  emlrtFreeMex(gpu->size);
}

static void gpuEmxFree_real_T(emxArray_real_T *gpu)
{
  if (gpu->data && gpu->canFreeData && (gpu->data != (void *)4207599121ULL)) {
    checkCudaError(mwCudaFree(gpu->data), __FILE__, __LINE__);
  }

  emlrtFreeMex(gpu->size);
}

static void gpuEmxMemcpyCpuToGpu_int16_T(emxArray_int16_T *gpu, const
  emxArray_int16_T *cpu)
{
  int32_T actualSize;
  actualSize = 1;
  for (int32_T i{0}; i < cpu->numDimensions; i++) {
    actualSize *= cpu->size[i];
  }

  if (cpu->data) {
    checkCudaError(cudaMemcpy(gpu->data, cpu->data, static_cast<uint32_T>
      (actualSize) * sizeof(int16_T), cudaMemcpyHostToDevice), __FILE__,
                   __LINE__);
  }
}

static void gpuEmxMemcpyCpuToGpu_int8_T(emxArray_int8_T *gpu, const
  emxArray_int8_T *cpu)
{
  int32_T actualSize;
  actualSize = 1;
  for (int32_T i{0}; i < cpu->numDimensions; i++) {
    actualSize *= cpu->size[i];
  }

  if (cpu->data) {
    checkCudaError(cudaMemcpy(gpu->data, cpu->data, static_cast<uint32_T>
      (actualSize) * sizeof(int8_T), cudaMemcpyHostToDevice), __FILE__, __LINE__);
  }
}

static void gpuEmxMemcpyGpuToCpu_boolean_T(emxArray_boolean_T *cpu,
  emxArray_boolean_T *gpu)
{
  int32_T actualSize;
  actualSize = 1;
  for (int32_T i{0}; i < cpu->numDimensions; i++) {
    actualSize *= cpu->size[i];
  }

  if (gpu->data) {
    checkCudaError(cudaMemcpy(cpu->data, gpu->data, static_cast<uint32_T>
      (actualSize) * sizeof(boolean_T), cudaMemcpyDeviceToHost), __FILE__,
                   __LINE__);
  }
}

static void gpuEmxMemcpyGpuToCpu_int16_T(emxArray_int16_T *cpu, emxArray_int16_T
  *gpu)
{
  int32_T actualSize;
  actualSize = 1;
  for (int32_T i{0}; i < cpu->numDimensions; i++) {
    actualSize *= cpu->size[i];
  }

  if (gpu->data) {
    checkCudaError(cudaMemcpy(cpu->data, gpu->data, static_cast<uint32_T>
      (actualSize) * sizeof(int16_T), cudaMemcpyDeviceToHost), __FILE__,
                   __LINE__);
  }
}

static void gpuEmxMemcpyGpuToCpu_int32_T(emxArray_int32_T *cpu, emxArray_int32_T
  *gpu)
{
  int32_T actualSize;
  actualSize = 1;
  for (int32_T i{0}; i < cpu->numDimensions; i++) {
    actualSize *= cpu->size[i];
  }

  if (gpu->data) {
    checkCudaError(cudaMemcpy(cpu->data, gpu->data, static_cast<uint32_T>
      (actualSize) * sizeof(int32_T), cudaMemcpyDeviceToHost), __FILE__,
                   __LINE__);
  }
}

static void gpuEmxMemcpyGpuToCpu_int8_T(emxArray_int8_T *cpu, emxArray_int8_T
  *gpu)
{
  int32_T actualSize;
  actualSize = 1;
  for (int32_T i{0}; i < cpu->numDimensions; i++) {
    actualSize *= cpu->size[i];
  }

  if (gpu->data) {
    checkCudaError(cudaMemcpy(cpu->data, gpu->data, static_cast<uint32_T>
      (actualSize) * sizeof(int8_T), cudaMemcpyDeviceToHost), __FILE__, __LINE__);
  }
}

static void gpuEmxMemcpyGpuToCpu_real_T(emxArray_real_T *cpu, emxArray_real_T
  *gpu)
{
  int32_T actualSize;
  actualSize = 1;
  for (int32_T i{0}; i < cpu->numDimensions; i++) {
    actualSize *= cpu->size[i];
  }

  if (gpu->data) {
    checkCudaError(cudaMemcpy(cpu->data, gpu->data, static_cast<uint32_T>
      (actualSize) * sizeof(real_T), cudaMemcpyDeviceToHost), __FILE__, __LINE__);
  }
}

static void gpuEmxReset_boolean_T(emxArray_boolean_T *gpu)
{
  std::memset(gpu, 0, sizeof(emxArray_boolean_T));
}

static void gpuEmxReset_int16_T(emxArray_int16_T *gpu)
{
  std::memset(gpu, 0, sizeof(emxArray_int16_T));
}

static void gpuEmxReset_int32_T(emxArray_int32_T *gpu)
{
  std::memset(gpu, 0, sizeof(emxArray_int32_T));
}

static void gpuEmxReset_int8_T(emxArray_int8_T *gpu)
{
  std::memset(gpu, 0, sizeof(emxArray_int8_T));
}

static void gpuEmxReset_real_T(emxArray_real_T *gpu)
{
  std::memset(gpu, 0, sizeof(emxArray_real_T));
}

static void gpuThrowError(const char_T *file, int32_T b_line)
{
  emlrtRTEInfo rtInfo;
  rtInfo.lineNo = b_line;
  rtInfo.colNo = 0;
  rtInfo.fName = "";
  rtInfo.pName = file;
  emlrtCUDAError(0U, (char_T *)"_", (char_T *)
                 "Unable to launch kernel. Loop nest contains too many iterations.",
                 &rtInfo, emlrtRootTLSGlobal);
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel1(const real_T
  v_ref, const int32_T b, emxArray_real_T z_ref)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    z_ref.data[i] = v_ref;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel10(const int32_T
  b, emxArray_real_T RU)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    RU.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel100(const real_T
  *atmp, const int32_T ii, emxArray_real_T Q)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    Q.data[ii] = *atmp;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel101(const
  emxArray_real_T Q, const int32_T ii, const real_T cMin, const int32_T i,
  emxArray_real_T tau)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    tau.data[i] = (cMin - Q.data[ii]) / cMin;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel102(const int32_T
  i, emxArray_real_T tau)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    tau.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel103(const
  int32_T b, emxArray_real_T tau)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    tau.data[i] = CUDART_NAN;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel104(const
  int32_T k, const int64_T b, emxArray_real_T tau)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int64_T i;
    i = static_cast<int64_T>(idx);
    tau.data[static_cast<int32_T>(static_cast<int64_T>(k) + i) - 1] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel105(const
  int32_T b, emxArray_real_T tau)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    tau.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel106(const
  emxArray_real_T A, const int32_T nx, const int32_T b, emxArray_real_T R,
  int32_T R_dim0, int32_T A_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    R.data[i + R_dim0 * (nx - 1)] = A.data[i + A_dim0 * (nx - 1)];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel107(const
  int32_T nx, const int32_T k, const int64_T b, emxArray_real_T R, int32_T
  R_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int64_T i;
    i = static_cast<int64_T>(idx);
    R.data[(static_cast<int32_T>(static_cast<int64_T>(k) + i) + R_dim0 * (nx - 1))
      - 1] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel108(const
  emxArray_real_T A, const int32_T k, const int32_T b, const int64_T c,
  emxArray_real_T R, int32_T R_dim0, int32_T A_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(c) + 1ULL) * (static_cast<uint64_T>(b) + 1ULL)
    - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int64_T i;
    int32_T b_i;
    int32_T j;
    b_i = static_cast<int32_T>(idx % (static_cast<uint64_T>(b) + 1ULL));
    i = static_cast<int64_T>((idx - static_cast<uint64_T>(b_i)) /
      (static_cast<uint64_T>(b) + 1ULL));
    j = static_cast<int32_T>(static_cast<int64_T>(k) + i);
    R.data[b_i + R_dim0 * (j - 1)] = A.data[b_i + A_dim0 * (j - 1)];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel109(const
  int32_T AX, emxArray_real_T A)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(AX);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    A.data[i] = CUDART_NAN;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel11(const int32_T
  b, emxArray_int8_T FX)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    FX.data[i] = static_cast<int8_T>(0);
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel110(const
  emxArray_real_T A, const int32_T b, const int32_T c, emxArray_real_T Q,
  int32_T Q_dim0, int32_T A_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(c) + 1ULL) * (static_cast<uint64_T>(b) + 1ULL)
    - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    int32_T j;
    i = static_cast<int32_T>(idx % (static_cast<uint64_T>(b) + 1ULL));
    j = static_cast<int32_T>((idx - static_cast<uint64_T>(i)) /
      (static_cast<uint64_T>(b) + 1ULL));
    Q.data[i + Q_dim0 * j] = A.data[i + A_dim0 * j];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel111(const
  int32_T A, emxArray_real_T work)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(A);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    work.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel112(const int32_T
  i, emxArray_real_T tau)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    tau.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel113(const real_T
  atmp, const real_T cMin, const int32_T i, emxArray_real_T tau)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    tau.data[i] = (cMin - atmp) / cMin;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel114(const real_T
  atmp, const int32_T ii, emxArray_real_T A)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    A.data[ii] = atmp;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel115(const
  emxArray_real_T A, const int32_T ii, real_T *atmp)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    *atmp = A.data[ii];
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel116(const int32_T
  ii, emxArray_real_T A)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    A.data[ii] = 1.0;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel117(const real_T
  *atmp, const int32_T ii, emxArray_real_T A)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    A.data[ii] = *atmp;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel118(const
  emxArray_real_T A, const int32_T ii, const real_T cMin, const int32_T i,
  emxArray_real_T tau)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    tau.data[i] = (cMin - A.data[ii]) / cMin;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel119(const int32_T
  i, emxArray_real_T tau)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    tau.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel12(const int32_T
  b, emxArray_int16_T gX)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    gX.data[i] = static_cast<int16_T>(0);
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel120(const
  int32_T b, emxArray_real_T tau)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    tau.data[i] = CUDART_NAN;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel121(const
  int32_T k, const int64_T b, emxArray_real_T tau)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int64_T i;
    i = static_cast<int64_T>(idx);
    tau.data[static_cast<int32_T>(static_cast<int64_T>(k) + i) - 1] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel122(const
  int32_T b, emxArray_real_T lam)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    lam.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel123(const
  emxArray_real_T Hinv, const int32_T i, const int32_T b_Hinv, emxArray_real_T a,
  int32_T Hinv_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_Hinv);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T b_i;
    b_i = static_cast<int32_T>(idx);
    a.data[b_i] = -Hinv.data[i + Hinv_dim0 * b_i];
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel124(const real_T t,
  const int32_T i, emxArray_real_T z_solution)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    z_solution.data[i] = t;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel125(const
  emxArray_real_T z_solution, const emxArray_real_T result, const int32_T i,
  const int32_T b_result, emxArray_real_T x, int32_T result_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_result);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T b_i;
    b_i = static_cast<int32_T>(idx);
    x.data[b_i] = result.data[i + result_dim0 * b_i] * z_solution.data[b_i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel126(const
  emxArray_real_T x, const int32_T b, emxArray_real_T y)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T k;
    k = static_cast<int32_T>(idx);
    y.data[k] = fabs(x.data[k]);
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel127(const real_T t,
  const int32_T i, emxArray_real_T cTol)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    cTol.data[i] = fmax(cTol.data[i], t);
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel128(const
  emxArray_real_T result, const int32_T i, const int32_T b_result,
  emxArray_real_T a, int32_T result_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_result);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T b_i;
    b_i = static_cast<int32_T>(idx);
    a.data[b_i] = result.data[i + result_dim0 * b_i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel129(const
  emxArray_real_T result, const int32_T MaxWSiter, const int32_T b_result,
  emxArray_real_T AcRow, int32_T result_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_result);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    AcRow.data[i] = result.data[MaxWSiter + result_dim0 * i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel13(const int32_T
  b, emxArray_int8_T FU)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    FU.data[i] = static_cast<int8_T>(0);
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel130(const
  emxArray_real_T result, const int32_T MaxWSiter, const int32_T b_result,
  emxArray_real_T B, int32_T result_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_result);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    B.data[i] = result.data[MaxWSiter + result_dim0 * i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel131(const
  int32_T Hinv, emxArray_real_T z)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(Hinv);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    z.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel132(const
  emxArray_real_T z, const int32_T b_z, emxArray_real_T A)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_z);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    A.data[i] = z.data[i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel133(const
  emxArray_real_T result, const int32_T MaxWSiter, const int32_T b_result,
  emxArray_real_T B, int32_T result_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_result);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    B.data[i] = result.data[MaxWSiter + result_dim0 * i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel134(const
  emxArray_real_T z, const real_T t, const int32_T z_solution, emxArray_real_T
  b_z_solution)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(z_solution);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    b_z_solution.data[i] += t * z.data[i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel135(const
  int32_T AX, const int32_T b_AX, emxArray_real_T RLinv, int32_T RLinv_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(b_AX) + 1ULL) * (static_cast<uint64_T>(AX) +
    1ULL) - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    int32_T k;
    k = static_cast<int32_T>(idx % (static_cast<uint64_T>(AX) + 1ULL));
    i = static_cast<int32_T>((idx - static_cast<uint64_T>(k)) /
      (static_cast<uint64_T>(AX) + 1ULL));
    RLinv.data[k + RLinv_dim0 * i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel136(const
  emxArray_real_T result, const int32_T outsize_idx_0, const int32_T b_result,
  emxArray_real_T B, int32_T result_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_result);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    B.data[i] = result.data[(outsize_idx_0 + result_dim0 * i) - 1];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel137(const
  int32_T Linv, emxArray_real_T dv1)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(Linv);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    dv1.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel138(const
  emxArray_real_T dv1, const int32_T i, const int32_T s, emxArray_real_T RLinv,
  int32_T RLinv_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(s);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T b_i;
    b_i = static_cast<int32_T>(idx);
    RLinv.data[b_i + RLinv_dim0 * i] = dv1.data[b_i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel139(const
  emxArray_real_T RLinv, const int32_T b_RLinv, emxArray_real_T A)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_RLinv);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    A.data[i] = RLinv.data[i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel14(const int32_T
  b, emxArray_int16_T gU)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    gU.data[i] = static_cast<int16_T>(0);
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel140(const
  emxArray_real_T A, const int32_T b, const int32_T c, emxArray_real_T Q,
  int32_T Q_dim0, int32_T A_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(c) + 1ULL) * (static_cast<uint64_T>(b) + 1ULL)
    - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    int32_T j;
    i = static_cast<int32_T>(idx % (static_cast<uint64_T>(b) + 1ULL));
    j = static_cast<int32_T>((idx - static_cast<uint64_T>(i)) /
      (static_cast<uint64_T>(b) + 1ULL));
    Q.data[i + Q_dim0 * j] = A.data[i + A_dim0 * j];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel141(const
  int32_T k, const int32_T b, const int64_T c, emxArray_real_T Q, int32_T Q_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(c) + 1ULL) * (static_cast<uint64_T>(b) + 1ULL)
    - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int64_T i;
    int32_T b_i;
    b_i = static_cast<int32_T>(idx % (static_cast<uint64_T>(b) + 1ULL));
    i = static_cast<int64_T>((idx - static_cast<uint64_T>(b_i)) /
      (static_cast<uint64_T>(b) + 1ULL));
    Q.data[b_i + Q_dim0 * (static_cast<int32_T>(static_cast<int64_T>(k) + i) - 1)]
      = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel142(const
  int32_T b, emxArray_real_T tau)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    tau.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel143(const
  emxArray_real_T Q, const int32_T nx, const int32_T b, emxArray_real_T R,
  int32_T R_dim0, int32_T Q_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    R.data[i + R_dim0 * (nx - 1)] = Q.data[i + Q_dim0 * (nx - 1)];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel144(const
  int32_T nx, const int32_T k, const int64_T b, emxArray_real_T R, int32_T
  R_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int64_T i;
    i = static_cast<int64_T>(idx);
    R.data[(static_cast<int32_T>(static_cast<int64_T>(k) + i) + R_dim0 * (nx - 1))
      - 1] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel145(const
  int32_T AX, emxArray_real_T Q)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(AX);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    Q.data[i] = CUDART_NAN;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel146(const
  emxArray_real_T H, const int32_T b_H, emxArray_real_T a)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_H);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    a.data[i] = -H.data[i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel147(const
  emxArray_real_T result, const int32_T MaxWSiter, const int32_T b_result,
  emxArray_real_T B, int32_T result_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_result);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    B.data[i] = result.data[MaxWSiter + result_dim0 * i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel148(const
  int32_T a, emxArray_real_T z)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(a);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    z.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel149(const
  int32_T i, const emxArray_real_T D, const int32_T b_D, emxArray_real_T b,
  int32_T D_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_D);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T b_i;
    b_i = static_cast<int32_T>(idx);
    b.data[b_i] = D.data[b_i + D_dim0 * i];
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel15(const int32_T i,
  emxArray_int32_T iv5, emxArray_int32_T iv4)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    //  R blocks
    iv4.data[0] = i + 1;
    iv5.data[0] = static_cast<int32_T>(static_cast<uint32_T>(i) + 1U);
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel150(const
  int32_T lda, const emxArray_real_T Q, const int32_T b_Q, emxArray_real_T b,
  int32_T Q_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_Q);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    b.data[i] = Q.data[i + Q_dim0 * lda];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel151(const
  int32_T i, const emxArray_real_T Linv, const int32_T b_Linv, emxArray_real_T A,
  int32_T Linv_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_Linv);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T b_i;
    b_i = static_cast<int32_T>(idx);
    A.data[b_i] = Linv.data[b_i + Linv_dim0 * i];
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel152(const real_T t,
  const int32_T lda, const int32_T i, emxArray_real_T TL, int32_T TL_dim0)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    TL.data[i + TL_dim0 * lda] = t;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel153(const
  int32_T AX, const int32_T b_AX, emxArray_real_T RLinv, int32_T RLinv_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(b_AX) + 1ULL) * (static_cast<uint64_T>(AX) +
    1ULL) - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    int32_T k;
    k = static_cast<int32_T>(idx % (static_cast<uint64_T>(AX) + 1ULL));
    i = static_cast<int32_T>((idx - static_cast<uint64_T>(k)) /
      (static_cast<uint64_T>(AX) + 1ULL));
    RLinv.data[k + RLinv_dim0 * i] = 0.0;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel154(const int32_T
  lda, const int32_T nA, emxArray_real_T RLinv, int32_T RLinv_dim0)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    RLinv.data[((nA - lda) + RLinv_dim0 * ((nA - lda) - 1)) - 1] = 1.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel155(const
  emxArray_real_T R, const int32_T k, const int32_T nx, const int64_T b,
  emxArray_real_T RLinv, int32_T RLinv_dim0, int32_T R_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int64_T i;
    i = static_cast<int64_T>(idx);
    RLinv.data[(nx + RLinv_dim0 * (static_cast<int32_T>(static_cast<int64_T>(k)
      + i) - 1)) - 1] /= R.data[(nx + R_dim0 * (nx - 1)) - 1];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel156(const
  emxArray_real_T R, const int32_T nx, const int32_T k, const int64_T b,
  emxArray_real_T RLinv, int32_T RLinv_dim0, int32_T R_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int64_T i;
    i = static_cast<int64_T>(idx);
    RLinv.data[(k + RLinv_dim0 * (static_cast<int32_T>(static_cast<int64_T>(nx)
      + i) - 1)) - 1] -= R.data[(k + R_dim0 * (nx - 1)) - 1] * RLinv.data[(nx +
      RLinv_dim0 * (static_cast<int32_T>(static_cast<int64_T>(nx) + i) - 1)) - 1];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel157(const
  emxArray_real_T RLinv, const emxArray_real_T TL, const int32_T nA, const
  int32_T b, const int32_T c, emxArray_real_T D, int32_T D_dim0, int32_T TL_dim0,
  int32_T RLinv_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(c) + 1ULL) * (static_cast<uint64_T>(b) + 1ULL)
    - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T b_i;
    int32_T j;
    int32_T k;
    b_i = static_cast<int32_T>(idx % (static_cast<uint64_T>(b) + 1ULL));
    j = static_cast<int32_T>((idx - static_cast<uint64_T>(b_i)) /
      (static_cast<uint64_T>(b) + 1ULL));
    k = j + 1;
    D.data[b_i + D_dim0 * j] = 0.0;
    for (int64_T i{0LL}; i <= computeEndIdx_device(static_cast<int64_T>(k),
          static_cast<int64_T>(nA), 1LL); i++) {
      D.data[b_i + D_dim0 * j] += TL.data[b_i + TL_dim0 * (static_cast<int32_T>(
        static_cast<int64_T>(j + 1) + i) - 1)] * RLinv.data[j + RLinv_dim0 * (
        static_cast<int32_T>(static_cast<int64_T>(j + 1) + i) - 1)];
    }
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel158(const
  int32_T Q, emxArray_real_T work)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(Q);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    work.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel159(const int32_T
  i, emxArray_real_T tau)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    tau.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel16(const real_T
  torque_penalty, const emxArray_int32_T iv5, const emxArray_int32_T iv4,
  emxArray_real_T RU, int32_T RU_dim0)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    RU.data[(iv4.data[0] + RU_dim0 * (iv5.data[0] - 1)) - 1] = torque_penalty;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel160(const real_T
  atmp, const real_T cMin, const int32_T i, emxArray_real_T tau)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    tau.data[i] = (cMin - atmp) / cMin;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel161(const real_T
  atmp, const int32_T ii, emxArray_real_T Q)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    Q.data[ii] = atmp;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel162(const
  emxArray_real_T Q, const int32_T ii, real_T *atmp)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    *atmp = Q.data[ii];
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel163(const int32_T
  ii, emxArray_real_T Q)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    Q.data[ii] = 1.0;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel164(const real_T
  *atmp, const int32_T ii, emxArray_real_T Q)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    Q.data[ii] = *atmp;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel165(const
  emxArray_real_T Q, const int32_T ii, const real_T cMin, const int32_T i,
  emxArray_real_T tau)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    tau.data[i] = (cMin - Q.data[ii]) / cMin;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel166(const int32_T
  i, emxArray_real_T tau)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    tau.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel167(const
  int32_T b, emxArray_real_T tau)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    tau.data[i] = CUDART_NAN;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel168(const
  int32_T k, const int64_T b, emxArray_real_T tau)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int64_T i;
    i = static_cast<int64_T>(idx);
    tau.data[static_cast<int32_T>(static_cast<int64_T>(k) + i) - 1] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel169(const
  int32_T b, emxArray_real_T tau)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    tau.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel17(const
  emxArray_real_T idfx, const int32_T b_idfx, emxArray_int32_T iv10)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_idfx);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    iv10.data[i] = static_cast<int32_T>(idfx.data[i]) - 1;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel170(const
  emxArray_real_T A, const int32_T nx, const int32_T b, emxArray_real_T R,
  int32_T R_dim0, int32_T A_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    R.data[i + R_dim0 * (nx - 1)] = A.data[i + A_dim0 * (nx - 1)];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel171(const
  int32_T nx, const int32_T k, const int64_T b, emxArray_real_T R, int32_T
  R_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int64_T i;
    i = static_cast<int64_T>(idx);
    R.data[(static_cast<int32_T>(static_cast<int64_T>(k) + i) + R_dim0 * (nx - 1))
      - 1] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel172(const
  emxArray_real_T A, const int32_T k, const int32_T b, const int64_T c,
  emxArray_real_T R, int32_T R_dim0, int32_T A_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(c) + 1ULL) * (static_cast<uint64_T>(b) + 1ULL)
    - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int64_T i;
    int32_T b_i;
    int32_T j;
    b_i = static_cast<int32_T>(idx % (static_cast<uint64_T>(b) + 1ULL));
    i = static_cast<int64_T>((idx - static_cast<uint64_T>(b_i)) /
      (static_cast<uint64_T>(b) + 1ULL));
    j = static_cast<int32_T>(static_cast<int64_T>(k) + i);
    R.data[b_i + R_dim0 * (j - 1)] = A.data[b_i + A_dim0 * (j - 1)];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel173(const
  int32_T AX, emxArray_real_T A)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(AX);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    A.data[i] = CUDART_NAN;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel174(const
  emxArray_real_T A, const int32_T b, const int32_T c, emxArray_real_T Q,
  int32_T Q_dim0, int32_T A_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(c) + 1ULL) * (static_cast<uint64_T>(b) + 1ULL)
    - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    int32_T j;
    i = static_cast<int32_T>(idx % (static_cast<uint64_T>(b) + 1ULL));
    j = static_cast<int32_T>((idx - static_cast<uint64_T>(i)) /
      (static_cast<uint64_T>(b) + 1ULL));
    Q.data[i + Q_dim0 * j] = A.data[i + A_dim0 * j];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel175(const
  int32_T A, emxArray_real_T work)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(A);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    work.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel176(const int32_T
  i, emxArray_real_T tau)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    tau.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel177(const real_T
  atmp, const real_T cMin, const int32_T i, emxArray_real_T tau)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    tau.data[i] = (cMin - atmp) / cMin;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel178(const real_T
  atmp, const int32_T ii, emxArray_real_T A)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    A.data[ii] = atmp;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel179(const
  emxArray_real_T A, const int32_T ii, real_T *atmp)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    *atmp = A.data[ii];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel18(const
  emxArray_real_T idfx, const int32_T b_idfx, emxArray_int32_T iv12)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_idfx);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    iv12.data[i] = static_cast<int32_T>(idfx.data[i]);
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel180(const int32_T
  ii, emxArray_real_T A)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    A.data[ii] = 1.0;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel181(const real_T
  *atmp, const int32_T ii, emxArray_real_T A)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    A.data[ii] = *atmp;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel182(const
  emxArray_real_T A, const int32_T ii, const real_T cMin, const int32_T i,
  emxArray_real_T tau)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    tau.data[i] = (cMin - A.data[ii]) / cMin;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel183(const int32_T
  i, emxArray_real_T tau)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    tau.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel184(const
  int32_T b, emxArray_real_T tau)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    tau.data[i] = CUDART_NAN;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel185(const
  int32_T k, const int64_T b, emxArray_real_T tau)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int64_T i;
    i = static_cast<int64_T>(idx);
    tau.data[static_cast<int32_T>(static_cast<int64_T>(k) + i) - 1] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel186(const
  emxArray_real_T b, const int32_T c, emxArray_real_T y)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(c);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T k;
    k = static_cast<int32_T>(idx);
    y.data[k] = fabs(b.data[k]);
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel187(const
  emxArray_real_T y, const int32_T b, emxArray_real_T cTol)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T k;
    k = static_cast<int32_T>(idx);
    cTol.data[k] = fmax(y.data[k], 1.0);
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel188(const
  emxArray_real_T Hinv, const int32_T i, const int32_T b_Hinv, emxArray_real_T a,
  int32_T Hinv_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_Hinv);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T b_i;
    b_i = static_cast<int32_T>(idx);
    a.data[b_i] = -Hinv.data[i + Hinv_dim0 * b_i];
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel189(const real_T t,
  const int32_T i, emxArray_real_T z_solution)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    z_solution.data[i] = t;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel19(const
  emxArray_real_T idfu, const int32_T b_idfu, emxArray_int32_T iv13)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_idfu);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    iv13.data[i] = static_cast<int32_T>(idfu.data[i]) - 1;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel190(const
  emxArray_real_T equality_matrix, const int32_T b_equality_matrix,
  emxArray_real_T A)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_equality_matrix);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    A.data[i] = equality_matrix.data[i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel191(const
  int32_T s, emxArray_real_T b_s)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(s);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    b_s.data[i] = CUDART_NAN;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel192(const
  int32_T b, emxArray_real_T s)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    s.data[i] = CUDART_NAN;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel193(const
  emxArray_real_T Linv, emxArray_real_T d)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    d.data[0] = Linv.data[0];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel194(const
  emxArray_real_T d, const int32_T b_d, emxArray_boolean_T x)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_d);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    x.data[i] = (d.data[i] > 0.0);
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel195(const
  emxArray_real_T Linv, const int32_T b, emxArray_real_T d, int32_T Linv_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T k;
    k = static_cast<int32_T>(idx);
    d.data[k] = Linv.data[k + Linv_dim0 * k];
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel196
  (emxArray_real_T idxx)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    idxx.data[0] = CUDART_NAN;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel197(const real_T
  absx, const int32_T b, emxArray_real_T idxx)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    idxx.data[i] = absx + static_cast<real_T>(i);
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel198
  (emxArray_real_T idfx)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    idfx.data[0] = CUDART_NAN;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel199(const real_T
  t, const int32_T b, emxArray_real_T idfx)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    idfx.data[i] = t + static_cast<real_T>(i);
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel2(const real_T t,
  const int32_T outsize_dim0, const int32_T b, emxArray_real_T z_ref)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    z_ref.data[i + outsize_dim0] = t;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel20(const
  emxArray_real_T idfu, const int32_T b_idfu, emxArray_int32_T iv15)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_idfu);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    iv15.data[i] = static_cast<int32_T>(idfu.data[i]);
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel200
  (emxArray_real_T idx)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    idx.data[0] = CUDART_NAN;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel201(const real_T
  absx, const int32_T b, emxArray_real_T idx)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T b_idx{gThreadId}; b_idx <= loopEnd; b_idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(b_idx);
    idx.data[i] = absx + static_cast<real_T>(i);
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel21(const
  uint32_T t, const int32_T b, emxArray_real_T idfu)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    idfu.data[i] = static_cast<real_T>(t) + static_cast<real_T>(i);
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel22(const
  uint32_T t, const int32_T b, emxArray_real_T idfx)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    idfx.data[i] = static_cast<real_T>(t) + static_cast<real_T>(i);
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel23(const
  emxArray_real_T idx, const int32_T b_idx, emxArray_int32_T iv2,
  emxArray_int32_T iv)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_idx);
  for (uint64_T c_idx{gThreadId}; c_idx <= loopEnd; c_idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(c_idx);
    iv.data[i] = static_cast<int32_T>(idx.data[i]);
    iv2.data[i] = static_cast<int32_T>(idx.data[i]);
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel24(const
  emxArray_real_T idfx, const int32_T b_idfx, emxArray_int32_T iv6)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_idfx);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    iv6.data[i] = static_cast<int32_T>(idfx.data[i]) - 1;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel25(const
  emxArray_real_T idxx, const int32_T b_idxx, emxArray_int32_T iv7)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_idxx);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    iv7.data[i] = static_cast<int32_T>(idxx.data[i]) - 1;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel26(const
  emxArray_real_T idfx, const int32_T b_idfx, emxArray_int32_T iv8)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_idfx);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    iv8.data[i] = static_cast<int32_T>(idfx.data[i]);
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel27(const int32_T
  outsize, emxArray_real_T y)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(outsize);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    y.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel28(const
  emxArray_real_T QX, const int32_T b_QX, const int32_T c_QX, emxArray_real_T y,
  int32_T y_dim0, int32_T QX_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(c_QX) + 1ULL) * (static_cast<uint64_T>(b_QX)
    + 1ULL) - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    int32_T k;
    k = static_cast<int32_T>(idx % (static_cast<uint64_T>(b_QX) + 1ULL));
    i = static_cast<int32_T>((idx - static_cast<uint64_T>(k)) /
      (static_cast<uint64_T>(b_QX) + 1ULL));
    y.data[k + y_dim0 * i] = QX.data[k + QX_dim0 * i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel29(const
  emxArray_real_T RU, const int32_T loop_ub, const int32_T nx, const int32_T AX,
  const int32_T b_AX, emxArray_real_T y, int32_T y_dim0, int32_T AX_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(b_AX) + 1ULL) * (static_cast<uint64_T>(AX) +
    1ULL) - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    int32_T k;
    k = static_cast<int32_T>(idx % (static_cast<uint64_T>(AX) + 1ULL));
    i = static_cast<int32_T>((idx - static_cast<uint64_T>(k)) /
      (static_cast<uint64_T>(AX) + 1ULL));
    y.data[(nx + k) + y_dim0 * (loop_ub + i)] = RU.data[k + AX_dim0 * i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel3(const int32_T
  b, emxArray_real_T A_powers)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    A_powers.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel30(const int32_T
  b, emxArray_int8_T b_I)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    b_I.data[i] = static_cast<int8_T>(0);
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel31(const
  emxArray_int8_T b_I, const emxArray_real_T y, const int32_T b_y,
  emxArray_real_T H_mat)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_y);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    H_mat.data[i] = 2.0 * y.data[i] + 1.0E-6 * static_cast<real_T>(b_I.data[i]);
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel32(const int32_T
  outsize, emxArray_int8_T inequality_matrix)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(outsize);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    inequality_matrix.data[i] = static_cast<int8_T>(0);
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel33(const
  emxArray_int8_T FX, const int32_T b_FX, const int32_T c_FX, emxArray_int8_T
  inequality_matrix, int32_T inequality_matrix_dim0, int32_T FX_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(c_FX) + 1ULL) * (static_cast<uint64_T>(b_FX)
    + 1ULL) - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    int32_T k;
    k = static_cast<int32_T>(idx % (static_cast<uint64_T>(b_FX) + 1ULL));
    i = static_cast<int32_T>((idx - static_cast<uint64_T>(k)) /
      (static_cast<uint64_T>(b_FX) + 1ULL));
    inequality_matrix.data[k + inequality_matrix_dim0 * i] = FX.data[k + FX_dim0
      * i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel34(const
  emxArray_int8_T FU, const int32_T loop_ub, const int32_T nx, const int32_T AX,
  const int32_T b_AX, emxArray_int8_T inequality_matrix, int32_T
  inequality_matrix_dim0, int32_T AX_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(b_AX) + 1ULL) * (static_cast<uint64_T>(AX) +
    1ULL) - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    int32_T k;
    k = static_cast<int32_T>(idx % (static_cast<uint64_T>(AX) + 1ULL));
    i = static_cast<int32_T>((idx - static_cast<uint64_T>(k)) /
      (static_cast<uint64_T>(AX) + 1ULL));
    inequality_matrix.data[(nx + k) + inequality_matrix_dim0 * (loop_ub + i)] =
      FU.data[k + AX_dim0 * i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel35(const
  emxArray_int16_T gX, const int32_T b, emxArray_int16_T inequality_vector)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    inequality_vector.data[i] = gX.data[i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel36(const
  emxArray_int16_T gU, const int32_T b, emxArray_int16_T inequality_vector,
  int32_T gX_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    inequality_vector.data[i + gX_dim0] = gU.data[i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel37(const int32_T
  b, emxArray_int8_T b_I)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    b_I.data[i] = static_cast<int8_T>(0);
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel38(const
  emxArray_real_T BU, const int32_T b_BU, emxArray_real_T varargin_2)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_BU);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    varargin_2.data[i] = -BU.data[i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel39(const
  emxArray_int8_T b_I, const int32_T result_dim0, const int32_T result, const
  int32_T b, emxArray_real_T equality_matrix, int32_T equality_matrix_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(b) + 1ULL) * (static_cast<uint64_T>(result) +
    1ULL) - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    int32_T k;
    k = static_cast<int32_T>(idx % (static_cast<uint64_T>(result) + 1ULL));
    i = static_cast<int32_T>((idx - static_cast<uint64_T>(k)) /
      (static_cast<uint64_T>(result) + 1ULL));
    equality_matrix.data[k + equality_matrix_dim0 * i] = static_cast<real_T>
      (b_I.data[k + result_dim0 * i]);
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel4(emxArray_real_T
  A_powers)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    A_powers.data[0] = 1.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel40(const
  emxArray_real_T varargin_2, const int32_T result_dim1, const int32_T AX, const
  int32_T b, emxArray_real_T equality_matrix, int32_T equality_matrix_dim0,
  int32_T AX_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(b) + 1ULL) * (static_cast<uint64_T>(AX) +
    1ULL) - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    int32_T k;
    k = static_cast<int32_T>(idx % (static_cast<uint64_T>(AX) + 1ULL));
    i = static_cast<int32_T>((idx - static_cast<uint64_T>(k)) / (static_cast<
      uint64_T>(AX) + 1ULL));
    equality_matrix.data[k + equality_matrix_dim0 * (i + result_dim1)] =
      varargin_2.data[k + AX_dim0 * i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel41(const
  emxArray_real_T H_mat, const int32_T b_H_mat, emxArray_real_T a)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_H_mat);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    a.data[i] = -H_mat.data[i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel42(const int32_T
  a, emxArray_real_T f)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(a);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    f.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel43(const int32_T
  AX, emxArray_real_T H_mat)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(AX);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    H_mat.data[i] = CUDART_NAN;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel44(const int32_T
  b, emxArray_real_T H_mat, int32_T H_mat_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T j;
    int32_T k;
    j = static_cast<int32_T>(idx);
    k = j + 1;
    for (int32_T i{0}; i < k; i++) {
      H_mat.data[i + H_mat_dim0 * (j + 1)] = 0.0;
    }
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel45(const int32_T
  b, emxArray_int8_T b_I)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    b_I.data[i] = static_cast<int8_T>(0);
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel46(const
  emxArray_int8_T b_I, const int32_T nx, const int32_T b, emxArray_real_T Linv,
  int32_T Linv_dim0, int32_T I_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    Linv.data[i + Linv_dim0 * (nx - 1)] = static_cast<real_T>(b_I.data[i +
      I_dim0 * (nx - 1)]);
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel47(const int32_T
  nx, const int32_T k, const int64_T b, emxArray_real_T Linv, int32_T Linv_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int64_T i;
    i = static_cast<int64_T>(idx);
    Linv.data[(static_cast<int32_T>(static_cast<int64_T>(k) + i) + Linv_dim0 *
               (nx - 1)) - 1] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel48(const
  emxArray_real_T equality_matrix, const int32_T b_equality_matrix,
  emxArray_real_T A)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_equality_matrix);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    A.data[i] = equality_matrix.data[i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel49(const int32_T
  s, emxArray_real_T b_s)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(s);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    b_s.data[i] = CUDART_NAN;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel5(const int32_T
  b, emxArray_real_T AX)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    AX.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel50(const
  emxArray_real_T Linv, const int32_T b_Linv, const int32_T c_Linv,
  emxArray_real_T A, int32_T A_dim0, int32_T Linv_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(c_Linv) + 1ULL) * (static_cast<uint64_T>
    (b_Linv) + 1ULL) - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    int32_T k;
    k = static_cast<int32_T>(idx % (static_cast<uint64_T>(b_Linv) + 1ULL));
    i = static_cast<int32_T>((idx - static_cast<uint64_T>(k)) /
      (static_cast<uint64_T>(b_Linv) + 1ULL));
    A.data[k + A_dim0 * i] = Linv.data[i + Linv_dim0 * k];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel51(const int32_T
  A, emxArray_real_T Hinv)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(A);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    Hinv.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel52(const
  emxArray_int8_T inequality_matrix, const int32_T b_inequality_matrix,
  emxArray_int8_T varargin_1)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_inequality_matrix);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    varargin_1.data[i] = static_cast<int8_T>(-static_cast<int32_T>
      (inequality_matrix.data[i]));
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel53(const
  emxArray_int8_T varargin_1, const int32_T input_sizes_dim0, const int32_T
  input_sizes, const int32_T b, emxArray_real_T result, int32_T result_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(b) + 1ULL) * (static_cast<uint64_T>
    (input_sizes) + 1ULL) - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    int32_T k;
    k = static_cast<int32_T>(idx % (static_cast<uint64_T>(input_sizes) + 1ULL));
    i = static_cast<int32_T>((idx - static_cast<uint64_T>(k)) /
      (static_cast<uint64_T>(input_sizes) + 1ULL));
    result.data[k + result_dim0 * i] = static_cast<real_T>(varargin_1.data[k +
      input_sizes_dim0 * i]);
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel54(const
  emxArray_real_T equality_matrix, const int32_T input_sizes_dim0, const int32_T
  AX, const int32_T b, emxArray_real_T result, int32_T result_dim0, int32_T
  AX_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(b) + 1ULL) * (static_cast<uint64_T>(AX) +
    1ULL) - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    int32_T k;
    k = static_cast<int32_T>(idx % (static_cast<uint64_T>(AX) + 1ULL));
    i = static_cast<int32_T>((idx - static_cast<uint64_T>(k)) / (static_cast<
      uint64_T>(AX) + 1ULL));
    result.data[(k + input_sizes_dim0) + result_dim0 * i] =
      equality_matrix.data[k + AX_dim0 * i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel55(const
  emxArray_int16_T inequality_vector, const int32_T b, emxArray_real_T b_b)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    b_b.data[i] = -static_cast<real_T>(inequality_vector.data[i]);
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel56(const real_T
  v_meas, const emxArray_real_T AX, const int32_T b, emxArray_real_T b_b,
  int32_T inequality_vector_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    b_b.data[i + inequality_vector_dim0] = AX.data[i] * v_meas;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel57(const int32_T
  b, emxArray_boolean_T iA)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    iA.data[i] = false;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel58(const int32_T
  b, emxArray_boolean_T iA, int32_T inequality_vector_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    iA.data[i + inequality_vector_dim0] = true;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel59(const int32_T
  b, emxArray_real_T z_solution)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    z_solution.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel6(const int32_T
  b, emxArray_real_T BU)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    BU.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel60(const int32_T
  b, emxArray_real_T lam)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    lam.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel61(const
  emxArray_real_T Hinv, const int32_T i, const int32_T b_Hinv, emxArray_real_T a,
  int32_T Hinv_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_Hinv);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T b_i;
    b_i = static_cast<int32_T>(idx);
    a.data[b_i] = -Hinv.data[i + Hinv_dim0 * b_i];
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel62(const real_T t,
  const int32_T i, emxArray_real_T z_solution)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    z_solution.data[i] = t;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel63(const int32_T
  b, emxArray_real_T r)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    r.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel64(const int32_T
  b, emxArray_int32_T iC, emxArray_real_T cTol)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    cTol.data[i] = 1.0;
    iC.data[i] = 0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel65(const int32_T
  b, emxArray_real_T Opt)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    Opt.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel66(const
  emxArray_real_T f, const int32_T b, emxArray_real_T Rhs)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    Rhs.data[i] = f.data[i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel67(const int32_T
  b, emxArray_real_T Rhs, int32_T f_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    Rhs.data[i + f_dim0] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel68(const int32_T
  AX, const int32_T b_AX, emxArray_real_T RLinv, int32_T RLinv_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(b_AX) + 1ULL) * (static_cast<uint64_T>(AX) +
    1ULL) - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    int32_T k;
    k = static_cast<int32_T>(idx % (static_cast<uint64_T>(AX) + 1ULL));
    i = static_cast<int32_T>((idx - static_cast<uint64_T>(k)) /
      (static_cast<uint64_T>(AX) + 1ULL));
    RLinv.data[k + RLinv_dim0 * i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel69(const
  emxArray_real_T result, const int32_T outsize_idx_0, const int32_T b_result,
  emxArray_real_T B, int32_T result_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_result);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    B.data[i] = result.data[(outsize_idx_0 + result_dim0 * i) - 1];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel7(const
  emxArray_real_T A_powers, const int32_T b, emxArray_real_T AX)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    AX.data[i] = A_powers.data[i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel70(const int32_T
  Linv, emxArray_real_T dv)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(Linv);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    dv.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel71(const
  emxArray_real_T dv, const int32_T i, const int32_T s, emxArray_real_T RLinv,
  int32_T RLinv_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(s);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T b_i;
    b_i = static_cast<int32_T>(idx);
    RLinv.data[b_i + RLinv_dim0 * i] = dv.data[b_i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel72(const
  emxArray_real_T RLinv, const int32_T b_RLinv, emxArray_real_T A)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_RLinv);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    A.data[i] = RLinv.data[i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel73(const
  emxArray_real_T A, const int32_T b, const int32_T c, emxArray_real_T Q,
  int32_T Q_dim0, int32_T A_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(c) + 1ULL) * (static_cast<uint64_T>(b) + 1ULL)
    - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    int32_T j;
    i = static_cast<int32_T>(idx % (static_cast<uint64_T>(b) + 1ULL));
    j = static_cast<int32_T>((idx - static_cast<uint64_T>(i)) /
      (static_cast<uint64_T>(b) + 1ULL));
    Q.data[i + Q_dim0 * j] = A.data[i + A_dim0 * j];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel74(const int32_T
  k, const int32_T b, const int64_T c, emxArray_real_T Q, int32_T Q_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(c) + 1ULL) * (static_cast<uint64_T>(b) + 1ULL)
    - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int64_T i;
    int32_T b_i;
    b_i = static_cast<int32_T>(idx % (static_cast<uint64_T>(b) + 1ULL));
    i = static_cast<int64_T>((idx - static_cast<uint64_T>(b_i)) /
      (static_cast<uint64_T>(b) + 1ULL));
    Q.data[b_i + Q_dim0 * (static_cast<int32_T>(static_cast<int64_T>(k) + i) - 1)]
      = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel75(const int32_T
  b, emxArray_real_T tau)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    tau.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel76(const
  emxArray_real_T Q, const int32_T nx, const int32_T b, emxArray_real_T R,
  int32_T R_dim0, int32_T Q_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    R.data[i + R_dim0 * (nx - 1)] = Q.data[i + Q_dim0 * (nx - 1)];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel77(const int32_T
  nx, const int32_T k, const int64_T b, emxArray_real_T R, int32_T R_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int64_T i;
    i = static_cast<int64_T>(idx);
    R.data[(static_cast<int32_T>(static_cast<int64_T>(k) + i) + R_dim0 * (nx - 1))
      - 1] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel78(const int32_T
  AX, emxArray_real_T Q)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(AX);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    Q.data[i] = CUDART_NAN;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel79(const int32_T
  b, emxArray_int32_T iC, emxArray_boolean_T iA)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    iA.data[i] = false;
    iC.data[i] = 0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel8(const
  struct0_T stateSpace, const emxArray_real_T A_powers, const int32_T b, const
  int32_T c, emxArray_real_T BU, int32_T BU_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(c) + 1ULL) * (static_cast<uint64_T>(b) + 1ULL)
    - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    int32_T j;
    j = static_cast<int32_T>(idx % (static_cast<uint64_T>(b) + 1ULL));
    i = static_cast<int32_T>((idx - static_cast<uint64_T>(j)) /
      (static_cast<uint64_T>(b) + 1ULL));
    if (i > j) {
      //  A^(i-j-1) corresponds to A_powers(:,:,i-j)
      BU.data[i + BU_dim0 * j] = A_powers.data[(i - j) - 1] * stateSpace.B;
    }

    //  else leave zeros (already allocated as zero)
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel80(const
  emxArray_real_T H, const int32_T i, const int32_T b_H, emxArray_real_T a,
  int32_T H_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_H);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T b_i;
    b_i = static_cast<int32_T>(idx);
    a.data[b_i] = H.data[i + H_dim0 * b_i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel81(const
  emxArray_real_T Rhs, const int32_T b, emxArray_real_T b_b)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    b_b.data[i] = Rhs.data[i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel82(const
  emxArray_real_T Rhs, const int32_T b, emxArray_real_T b_b)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    b_b.data[i] = Rhs.data[i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel83(const int32_T
  i, const emxArray_real_T D, const int32_T b_D, emxArray_real_T A, int32_T
  D_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_D);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T b_i;
    b_i = static_cast<int32_T>(idx);
    A.data[b_i] = D.data[b_i + D_dim0 * i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel84(const
  emxArray_real_T Opt, const int32_T b, emxArray_real_T z_solution)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    z_solution.data[i] = Opt.data[i];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel85(const int32_T
  b, emxArray_int32_T iC, emxArray_boolean_T iA)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    iA.data[i] = false;
    iC.data[i] = 0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel86(const int32_T
  lda, const emxArray_real_T Q, const int32_T b_Q, emxArray_real_T b, int32_T
  Q_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_Q);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    b.data[i] = Q.data[i + Q_dim0 * lda];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel87(const int32_T
  i, const emxArray_real_T Linv, const int32_T b_Linv, emxArray_real_T A,
  int32_T Linv_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b_Linv);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T b_i;
    b_i = static_cast<int32_T>(idx);
    A.data[b_i] = Linv.data[b_i + Linv_dim0 * i];
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel88(const real_T t,
  const int32_T lda, const int32_T i, emxArray_real_T TL, int32_T TL_dim0)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    TL.data[i + TL_dim0 * lda] = t;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel89(const int32_T
  AX, const int32_T b_AX, emxArray_real_T RLinv, int32_T RLinv_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(b_AX) + 1ULL) * (static_cast<uint64_T>(AX) +
    1ULL) - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    int32_T k;
    k = static_cast<int32_T>(idx % (static_cast<uint64_T>(AX) + 1ULL));
    i = static_cast<int32_T>((idx - static_cast<uint64_T>(k)) /
      (static_cast<uint64_T>(AX) + 1ULL));
    RLinv.data[k + RLinv_dim0 * i] = 0.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel9(const int32_T
  b, emxArray_real_T QX)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    QX.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel90(const int32_T
  lda, const int32_T nA, emxArray_real_T RLinv, int32_T RLinv_dim0)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    RLinv.data[((nA - lda) + RLinv_dim0 * ((nA - lda) - 1)) - 1] = 1.0;
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel91(const
  emxArray_real_T R, const int32_T k, const int32_T nx, const int64_T b,
  emxArray_real_T RLinv, int32_T RLinv_dim0, int32_T R_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int64_T i;
    i = static_cast<int64_T>(idx);
    RLinv.data[(nx + RLinv_dim0 * (static_cast<int32_T>(static_cast<int64_T>(k)
      + i) - 1)) - 1] /= R.data[(nx + R_dim0 * (nx - 1)) - 1];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel92(const
  emxArray_real_T R, const int32_T nx, const int32_T k, const int64_T b,
  emxArray_real_T RLinv, int32_T RLinv_dim0, int32_T R_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(b);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int64_T i;
    i = static_cast<int64_T>(idx);
    RLinv.data[(k + RLinv_dim0 * (static_cast<int32_T>(static_cast<int64_T>(nx)
      + i) - 1)) - 1] -= R.data[(k + R_dim0 * (nx - 1)) - 1] * RLinv.data[(nx +
      RLinv_dim0 * (static_cast<int32_T>(static_cast<int64_T>(nx) + i) - 1)) - 1];
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel93(const
  emxArray_real_T RLinv, const emxArray_real_T TL, const int32_T nA, const
  int32_T b, const int32_T c, emxArray_real_T D, int32_T D_dim0, int32_T TL_dim0,
  int32_T RLinv_dim0)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = (static_cast<uint64_T>(c) + 1ULL) * (static_cast<uint64_T>(b) + 1ULL)
    - 1ULL;
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T b_i;
    int32_T j;
    int32_T k;
    b_i = static_cast<int32_T>(idx % (static_cast<uint64_T>(b) + 1ULL));
    j = static_cast<int32_T>((idx - static_cast<uint64_T>(b_i)) /
      (static_cast<uint64_T>(b) + 1ULL));
    k = j + 1;
    D.data[b_i + D_dim0 * j] = 0.0;
    for (int64_T i{0LL}; i <= computeEndIdx_device(static_cast<int64_T>(k),
          static_cast<int64_T>(nA), 1LL); i++) {
      D.data[b_i + D_dim0 * j] += TL.data[b_i + TL_dim0 * (static_cast<int32_T>(
        static_cast<int64_T>(j + 1) + i) - 1)] * RLinv.data[j + RLinv_dim0 * (
        static_cast<int32_T>(static_cast<int64_T>(j + 1) + i) - 1)];
    }
  }
}

static __global__ __launch_bounds__(1024, 1) void mpcStep_kernel94(const int32_T
  Q, emxArray_real_T work)
{
  uint64_T gStride;
  uint64_T gThreadId;
  uint64_T loopEnd;
  gThreadId = mwGetGlobalThreadIndex();
  gStride = mwGetTotalThreadsLaunched();
  loopEnd = static_cast<uint64_T>(Q);
  for (uint64_T idx{gThreadId}; idx <= loopEnd; idx += gStride) {
    int32_T i;
    i = static_cast<int32_T>(idx);
    work.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel95(const int32_T i,
  emxArray_real_T tau)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    tau.data[i] = 0.0;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel96(const real_T
  atmp, const real_T cMin, const int32_T i, emxArray_real_T tau)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    tau.data[i] = (cMin - atmp) / cMin;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel97(const real_T
  atmp, const int32_T ii, emxArray_real_T Q)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    Q.data[ii] = atmp;
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel98(const
  emxArray_real_T Q, const int32_T ii, real_T *atmp)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    *atmp = Q.data[ii];
  }
}

static __global__ __launch_bounds__(32, 1) void mpcStep_kernel99(const int32_T
  ii, emxArray_real_T Q)
{
  int32_T tmpIdx;
  tmpIdx = static_cast<int32_T>(mwGetGlobalThreadIndex());
  if (tmpIdx < 1) {
    Q.data[ii] = 1.0;
  }
}

static real_T rt_hypotd_snf(real_T u0, real_T u1)
{
  real_T a;
  real_T b;
  real_T y;
  a = std::abs(u0);
  b = std::abs(u1);
  if (a < b) {
    a /= b;
    y = b * std::sqrt(a * a + 1.0);
  } else if (a > b) {
    b /= a;
    y = a * std::sqrt(b * b + 1.0);
  } else if (std::isnan(b)) {
    y = rtNaN;
  } else {
    y = a * 1.4142135623730951;
  }

  return y;
}

real_T mpcStep(real_T v_ref, real_T v_meas, const struct0_T *stateSpace, real_T
               velocity_penalty, real_T prediction_horizon, real_T
               torque_penalty)
{
  static const int32_T iv18[2]{ 1, 25 };

  static const int32_T iv19[2]{ 1, 36 };

  static const int32_T iv20[2]{ 1, 36 };

  static const int32_T iv21[2]{ 1, 40 };

  static const int32_T iv22[2]{ 1, 111 };

  static const int32_T iv23[2]{ 1, 205 };

  static const int32_T iv24[2]{ 1, 27 };

  static const int32_T iv25[2]{ 1, 127 };

  static const char_T c_varargin_2[205]{ 'T', 'h', 'e', ' ', 'n', 'u', 'm', 'b',
    'e', 'r', ' ', 'o', 'f', ' ', 'a', 'c', 't', 'i', 'v', 'e', ' ', 'i', 'n',
    'e', 'q', 'u', 'a', 'l', 'i', 't', 'i', 'e', 's', ' ', 's', 'p', 'e', 'c',
    'i', 'f', 'i', 'e', 'd', ' ', 'b', 'y', ' ', '\"', 'i', 'A', '0', '\"', ' ',
    'i', 's', ' ', '%', 'd', '.', ' ', ' ', 'W', 'i', 't', 'h', ' ', '%', 'd',
    ' ', 'e', 'q', 'u', 'a', 'l', 'i', 't', 'y', ' ', 'c', 'o', 'n', 's', 't',
    'r', 'a', 'i', 'n', 't', 's', ',', ' ', 't', 'h', 'e', ' ', 't', 'o', 't',
    'a', 'l', ' ', 'n', 'u', 'm', 'b', 'e', 'r', ' ', 'o', 'f', ' ', 'a', 'c',
    't', 'i', 'v', 'e', ' ', 'c', 'o', 'n', 's', 't', 'r', 'a', 'i', 'n', 't',
    's', ',', ' ', '%', 'd', ',', ' ', 'e', 'x', 'c', 'e', 'e', 'd', 's', ' ',
    't', 'h', 'e', ' ', 'n', 'u', 'm', 'b', 'e', 'r', ' ', 'o', 'f', ' ', 'v',
    'a', 'r', 'i', 'a', 'b', 'l', 'e', 's', ',', ' ', '%', 'd', ',', ' ', 'm',
    'a', 'k', 'i', 'n', 'g', ' ', 't', 'h', 'e', ' ', 'Q', 'P', ' ', 'p', 'r',
    'o', 'b', 'l', 'e', 'm', ' ', 'i', 'n', 'f', 'e', 'a', 's', 'i', 'b', 'l',
    'e', '.' };

  static const char_T d_varargin_2[127]{ 'T', 'h', 'e', ' ', 'e', 'q', 'u', 'a',
    'l', 'i', 't', 'y', ' ', 'c', 'o', 'n', 's', 't', 'r', 'a', 'i', 'n', 't',
    's', ' ', 's', 'p', 'e', 'c', 'i', 'f', 'i', 'e', 'd', ' ', 'b', 'y', ' ',
    '\"', 'A', 'e', 'q', '\"', ' ', 'a', 'r', 'e', ' ', 'n', 'o', 't', ' ', 'l',
    'i', 'n', 'e', 'a', 'r', 'l', 'y', ' ', 'i', 'n', 'd', 'e', 'p', 'e', 'n',
    'd', 'e', 'n', 't', '.', ' ', ' ', 'R', 'a', 'n', 'k', '(', 'A', 'e', 'q',
    ')', ' ', '=', ' ', '%', 'd', ',', ' ', 'w', 'h', 'i', 'c', 'h', ' ', 'i',
    's', ' ', 'l', 'e', 's', 's', ' ', 't', 'h', 'a', 'n', ' ', 's', 'i', 'z',
    'e', '(', 'A', 'e', 'q', ',', '1', ')', ' ', '=', ' ', '%', 'd', '.' };

  static const char_T b_varargin_2[111]{ 'T', 'h', 'e', ' ', 'n', 'u', 'm', 'b',
    'e', 'r', ' ', 'o', 'f', ' ', 'e', 'q', 'u', 'a', 'l', 'i', 't', 'y', ' ',
    'c', 'o', 'n', 's', 't', 'r', 'a', 'i', 'n', 't', 's', ' ', '(', '%', 'd',
    ')', ' ', 'e', 'x', 'c', 'e', 'e', 'd', 's', ' ', 't', 'h', 'e', ' ', 'n',
    'u', 'm', 'b', 'e', 'r', ' ', 'o', 'f', ' ', 'v', 'a', 'r', 'i', 'a', 'b',
    'l', 'e', 's', ' ', '(', '%', 'd', ')', ',', ' ', 'm', 'a', 'k', 'i', 'n',
    'g', ' ', 't', 'h', 'e', ' ', 'Q', 'P', ' ', 'p', 'r', 'o', 'b', 'l', 'e',
    'm', ' ', 'i', 'n', 'f', 'e', 'a', 's', 'i', 'b', 'l', 'e', '.' };

  static const char_T varargin_2[40]{ 'H', 'e', 's', 's', 'i', 'a', 'n', ' ',
    'm', 'a', 't', 'r', 'i', 'x', ' ', 'i', 's', ' ', 'n', 'o', 't', ' ', 'p',
    'o', 's', 'i', 't', 'i', 'v', 'e', ' ', 'd', 'e', 'f', 'i', 'n', 'i', 't',
    'e', '.' };

  static const char_T b_varargin_1[36]{ 'M', 'P', 'C', ':', 'A', 'c', 't', 'i',
    'v', 'e', 'S', 'e', 't', 'S', 'o', 'l', 'v', 'e', 'r', ':', 'O', 'v', 'e',
    'r', 'S', 'p', 'e', 'c', 'E', 'q', 'u', 'a', 'C', 'o', 'n', 's' };

  static const char_T c_varargin_1[36]{ 'M', 'P', 'C', ':', 'A', 'c', 't', 'i',
    'v', 'e', 'S', 'e', 't', 'S', 'o', 'l', 'v', 'e', 'r', ':', 'I', 'n', 'v',
    'a', 'l', 'i', 'd', 'W', 'a', 'r', 'm', 'S', 't', 'a', 'r', 't' };

  static const char_T d_varargin_1[27]{ 'M', 'P', 'C', ':', 'A', 'c', 't', 'i',
    'v', 'e', 'S', 'e', 't', 'S', 'o', 'l', 'v', 'e', 'r', ':', 'A', 'e', 'q',
    'R', 'a', 'n', 'k' };

  static const char_T varargin_1[25]{ 'M', 'P', 'C', ':', 'A', 'c', 't', 'i',
    'v', 'e', 'S', 'e', 't', 'S', 'o', 'l', 'v', 'e', 'r', ':', 'B', 'a', 'd',
    '_', 'H' };

  dim3 block;
  dim3 grid;
  emxArray_boolean_T b_gpu_x;
  emxArray_boolean_T gpu_iA;
  emxArray_boolean_T *cpu_iA;
  emxArray_boolean_T *cpu_x;
  emxArray_int16_T gpu_gU;
  emxArray_int16_T gpu_gX;
  emxArray_int16_T gpu_inequality_vector;
  emxArray_int16_T *cpu_gU;
  emxArray_int16_T *cpu_gX;
  emxArray_int16_T *cpu_inequality_vector;
  emxArray_int32_T gpu_iC;
  emxArray_int32_T gpu_iv;
  emxArray_int32_T gpu_iv10;
  emxArray_int32_T gpu_iv12;
  emxArray_int32_T gpu_iv13;
  emxArray_int32_T gpu_iv15;
  emxArray_int32_T gpu_iv2;
  emxArray_int32_T gpu_iv4;
  emxArray_int32_T gpu_iv5;
  emxArray_int32_T gpu_iv6;
  emxArray_int32_T gpu_iv7;
  emxArray_int32_T gpu_iv8;
  emxArray_int32_T *cpu_iC;
  emxArray_int32_T *cpu_iv;
  emxArray_int32_T *cpu_iv10;
  emxArray_int32_T *cpu_iv12;
  emxArray_int32_T *cpu_iv13;
  emxArray_int32_T *cpu_iv15;
  emxArray_int32_T *cpu_iv2;
  emxArray_int32_T *cpu_iv4;
  emxArray_int32_T *cpu_iv5;
  emxArray_int32_T *cpu_iv6;
  emxArray_int32_T *cpu_iv7;
  emxArray_int32_T *cpu_iv8;
  emxArray_int32_T *iv1;
  emxArray_int32_T *iv11;
  emxArray_int32_T *iv14;
  emxArray_int32_T *iv3;
  emxArray_int8_T b_gpu_I;
  emxArray_int8_T c_gpu_I;
  emxArray_int8_T gpu_FU;
  emxArray_int8_T gpu_FX;
  emxArray_int8_T gpu_I;
  emxArray_int8_T gpu_inequality_matrix;
  emxArray_int8_T gpu_varargin_1;
  emxArray_int8_T *b_cpu_I;
  emxArray_int8_T *c_cpu_I;
  emxArray_int8_T *cpu_FU;
  emxArray_int8_T *cpu_FX;
  emxArray_int8_T *cpu_I;
  emxArray_int8_T *cpu_inequality_matrix;
  emxArray_int8_T *cpu_varargin_1;
  emxArray_real_T b_gpu_A;
  emxArray_real_T b_gpu_B;
  emxArray_real_T b_gpu_Q;
  emxArray_real_T b_gpu_R;
  emxArray_real_T b_gpu_TL;
  emxArray_real_T b_gpu_a;
  emxArray_real_T b_gpu_b;
  emxArray_real_T b_gpu_tau;
  emxArray_real_T b_gpu_work;
  emxArray_real_T b_gpu_y;
  emxArray_real_T c_gpu_A;
  emxArray_real_T c_gpu_B;
  emxArray_real_T c_gpu_a;
  emxArray_real_T c_gpu_b;
  emxArray_real_T c_gpu_tau;
  emxArray_real_T c_gpu_work;
  emxArray_real_T c_gpu_y;
  emxArray_real_T d_gpu_A;
  emxArray_real_T d_gpu_B;
  emxArray_real_T d_gpu_a;
  emxArray_real_T d_gpu_b;
  emxArray_real_T d_gpu_tau;
  emxArray_real_T d_gpu_work;
  emxArray_real_T e_gpu_A;
  emxArray_real_T e_gpu_B;
  emxArray_real_T e_gpu_a;
  emxArray_real_T e_gpu_b;
  emxArray_real_T f_gpu_A;
  emxArray_real_T f_gpu_a;
  emxArray_real_T f_gpu_b;
  emxArray_real_T g_gpu_A;
  emxArray_real_T g_gpu_a;
  emxArray_real_T gpu_A;
  emxArray_real_T gpu_AX;
  emxArray_real_T gpu_A_powers;
  emxArray_real_T gpu_AcRow;
  emxArray_real_T gpu_B;
  emxArray_real_T gpu_BU;
  emxArray_real_T gpu_D;
  emxArray_real_T gpu_H;
  emxArray_real_T gpu_H_mat;
  emxArray_real_T gpu_Hinv;
  emxArray_real_T gpu_Linv;
  emxArray_real_T gpu_Opt;
  emxArray_real_T gpu_Q;
  emxArray_real_T gpu_QX;
  emxArray_real_T gpu_R;
  emxArray_real_T gpu_RLinv;
  emxArray_real_T gpu_RU;
  emxArray_real_T gpu_Rhs;
  emxArray_real_T gpu_TL;
  emxArray_real_T gpu_a;
  emxArray_real_T gpu_b;
  emxArray_real_T gpu_cTol;
  emxArray_real_T gpu_d;
  emxArray_real_T gpu_dv;
  emxArray_real_T gpu_dv1;
  emxArray_real_T gpu_equality_matrix;
  emxArray_real_T gpu_f;
  emxArray_real_T gpu_idfu;
  emxArray_real_T gpu_idfx;
  emxArray_real_T gpu_idx;
  emxArray_real_T gpu_idxx;
  emxArray_real_T gpu_lam;
  emxArray_real_T gpu_r;
  emxArray_real_T gpu_result;
  emxArray_real_T gpu_s;
  emxArray_real_T gpu_superb;
  emxArray_real_T gpu_tau;
  emxArray_real_T gpu_varargin_2;
  emxArray_real_T gpu_work;
  emxArray_real_T gpu_x;
  emxArray_real_T gpu_y;
  emxArray_real_T gpu_z;
  emxArray_real_T gpu_z_ref;
  emxArray_real_T gpu_z_solution;
  emxArray_real_T h_gpu_A;
  emxArray_real_T i_gpu_A;
  emxArray_real_T *U;
  emxArray_real_T *b_cpu_A;
  emxArray_real_T *b_cpu_B;
  emxArray_real_T *b_cpu_Q;
  emxArray_real_T *b_cpu_R;
  emxArray_real_T *b_cpu_TL;
  emxArray_real_T *b_cpu_a;
  emxArray_real_T *b_cpu_b;
  emxArray_real_T *b_cpu_tau;
  emxArray_real_T *b_cpu_work;
  emxArray_real_T *b_cpu_x;
  emxArray_real_T *b_cpu_y;
  emxArray_real_T *c_cpu_A;
  emxArray_real_T *c_cpu_B;
  emxArray_real_T *c_cpu_a;
  emxArray_real_T *c_cpu_b;
  emxArray_real_T *c_cpu_tau;
  emxArray_real_T *c_cpu_work;
  emxArray_real_T *c_cpu_y;
  emxArray_real_T *cpu_A;
  emxArray_real_T *cpu_AX;
  emxArray_real_T *cpu_A_powers;
  emxArray_real_T *cpu_AcRow;
  emxArray_real_T *cpu_B;
  emxArray_real_T *cpu_BU;
  emxArray_real_T *cpu_D;
  emxArray_real_T *cpu_H;
  emxArray_real_T *cpu_H_mat;
  emxArray_real_T *cpu_Hinv;
  emxArray_real_T *cpu_Linv;
  emxArray_real_T *cpu_Opt;
  emxArray_real_T *cpu_Q;
  emxArray_real_T *cpu_QX;
  emxArray_real_T *cpu_R;
  emxArray_real_T *cpu_RLinv;
  emxArray_real_T *cpu_RU;
  emxArray_real_T *cpu_Rhs;
  emxArray_real_T *cpu_TL;
  emxArray_real_T *cpu_a;
  emxArray_real_T *cpu_b;
  emxArray_real_T *cpu_cTol;
  emxArray_real_T *cpu_d;
  emxArray_real_T *cpu_dv;
  emxArray_real_T *cpu_dv1;
  emxArray_real_T *cpu_equality_matrix;
  emxArray_real_T *cpu_f;
  emxArray_real_T *cpu_idfu;
  emxArray_real_T *cpu_idfx;
  emxArray_real_T *cpu_idx;
  emxArray_real_T *cpu_idxx;
  emxArray_real_T *cpu_lam;
  emxArray_real_T *cpu_r;
  emxArray_real_T *cpu_result;
  emxArray_real_T *cpu_s;
  emxArray_real_T *cpu_superb;
  emxArray_real_T *cpu_tau;
  emxArray_real_T *cpu_varargin_2;
  emxArray_real_T *cpu_work;
  emxArray_real_T *cpu_y;
  emxArray_real_T *cpu_z;
  emxArray_real_T *cpu_z_ref;
  emxArray_real_T *cpu_z_solution;
  emxArray_real_T *d_cpu_A;
  emxArray_real_T *d_cpu_B;
  emxArray_real_T *d_cpu_a;
  emxArray_real_T *d_cpu_b;
  emxArray_real_T *d_cpu_tau;
  emxArray_real_T *d_cpu_work;
  emxArray_real_T *e_cpu_A;
  emxArray_real_T *e_cpu_B;
  emxArray_real_T *e_cpu_a;
  emxArray_real_T *e_cpu_b;
  emxArray_real_T *f_cpu_A;
  emxArray_real_T *f_cpu_a;
  emxArray_real_T *f_cpu_b;
  emxArray_real_T *g_cpu_A;
  emxArray_real_T *g_cpu_a;
  emxArray_real_T *h_cpu_A;
  emxArray_real_T *i_cpu_A;
  emxArray_real_T *superb;
  const mxArray *b_m;
  const mxArray *b_y;
  const mxArray *c_y;
  const mxArray *d_y;
  const mxArray *e_y;
  const mxArray *f_y;
  const mxArray *g_y;
  const mxArray *h_y;
  const mxArray *m1;
  const mxArray *m2;
  const mxArray *m3;
  const mxArray *m4;
  const mxArray *m5;
  const mxArray *m6;
  const mxArray *m7;
  const mxArray *y;
  int64_T b;
  real_T absx;
  real_T cMin;
  real_T out;
  real_T t;
  real_T *gpu_atmp;
  uint64_T numIters;
  int32_T AX[2];
  int32_T input_sizes[2];
  int32_T outsize[2];
  int32_T s[1];
  int32_T b_cpu_info;
  int32_T b_n;
  int32_T c_cpu_info;
  int32_T cpu_ii;
  int32_T cpu_info;
  int32_T cpu_info_t;
  int32_T d_cpu_info;
  int32_T e_cpu_info;
  int32_T exitflag;
  int32_T exitg1;
  int32_T exitg2;
  int32_T exitg3;
  int32_T exitg4;
  int32_T f_cpu_info;
  int32_T g_cpu_info;
  int32_T h_cpu_info;
  int32_T i;
  int32_T idfu;
  int32_T idfx;
  int32_T k;
  int32_T lda;
  int32_T m;
  int32_T meq;
  int32_T mmi;
  int32_T n;
  int32_T nA;
  int32_T nx;
  int32_T outsize_idx_0;
  int32_T *b_gpu_info;
  int32_T *c_gpu_info;
  int32_T *d_gpu_info;
  int32_T *e_gpu_info;
  int32_T *f_gpu_info;
  int32_T *g_gpu_info;
  int32_T *gpu_ii;
  int32_T *gpu_info;
  int32_T *gpu_info_t;
  int32_T *h_gpu_info;
  uint32_T b_t;
  int8_T iv[2];
  boolean_T A_powers_needsGpuEnsureCapacity;
  boolean_T A_powers_outdatedOnCpu;
  boolean_T A_powers_outdatedOnGpu;
  boolean_T ColdReset;
  boolean_T FU_needsGpuEnsureCapacity;
  boolean_T FU_outdatedOnGpu;
  boolean_T FX_needsGpuEnsureCapacity;
  boolean_T FX_outdatedOnCpu;
  boolean_T FX_outdatedOnGpu;
  boolean_T QX_needsGpuEnsureCapacity;
  boolean_T QX_outdatedOnCpu;
  boolean_T QX_outdatedOnGpu;
  boolean_T empty_non_axis_sizes;
  boolean_T exitg5;
  boolean_T gU_needsGpuEnsureCapacity;
  boolean_T gU_outdatedOnGpu;
  boolean_T gX_needsGpuEnsureCapacity;
  boolean_T gX_outdatedOnCpu;
  boolean_T gX_outdatedOnGpu;
  boolean_T guard1;
  boolean_T guard2;
  boolean_T idfu_needsGpuEnsureCapacity;
  boolean_T idx_needsGpuEnsureCapacity;
  boolean_T idxx_needsGpuEnsureCapacity;
  boolean_T iv4_needsGpuEnsureCapacity;
  boolean_T iv5_needsGpuEnsureCapacity;
  boolean_T validLaunchParams;
  boolean_T x_outdatedOnCpu;
  checkCudaError(mwCudaMalloc(&gpu_atmp, 8ULL), __FILE__, __LINE__);
  checkCudaError(mwCudaMalloc(&e_gpu_info, 4ULL), __FILE__, __LINE__);
  checkCudaError(mwCudaMalloc(&gpu_info, 4ULL), __FILE__, __LINE__);
  checkCudaError(mwCudaMalloc(&g_gpu_info, 4ULL), __FILE__, __LINE__);
  checkCudaError(mwCudaMalloc(&c_gpu_info, 4ULL), __FILE__, __LINE__);
  checkCudaError(mwCudaMalloc(&f_gpu_info, 4ULL), __FILE__, __LINE__);
  checkCudaError(mwCudaMalloc(&b_gpu_info, 4ULL), __FILE__, __LINE__);
  checkCudaError(mwCudaMalloc(&h_gpu_info, 4ULL), __FILE__, __LINE__);
  checkCudaError(mwCudaMalloc(&d_gpu_info, 4ULL), __FILE__, __LINE__);
  gpuEmxReset_real_T(&e_gpu_b);
  gpuEmxReset_real_T(&d_gpu_A);
  gpuEmxReset_real_T(&c_gpu_b);
  gpuEmxReset_real_T(&e_gpu_B);
  gpuEmxReset_real_T(&f_gpu_a);
  gpuEmxReset_real_T(&h_gpu_A);
  gpuEmxReset_real_T(&b_gpu_b);
  gpuEmxReset_real_T(&f_gpu_b);
  gpuEmxReset_real_T(&c_gpu_a);
  gpuEmxReset_real_T(&e_gpu_A);
  gpuEmxReset_real_T(&d_gpu_b);
  gpuEmxReset_real_T(&c_gpu_work);
  gpuEmxReset_real_T(&d_gpu_work);
  gpuEmxReset_real_T(&gpu_work);
  gpuEmxReset_real_T(&b_gpu_work);
  gpuEmxReset_real_T(&c_gpu_tau);
  gpuEmxReset_real_T(&c_gpu_B);
  gpuEmxReset_real_T(&f_gpu_A);
  gpuEmxReset_real_T(&d_gpu_tau);
  gpuEmxReset_real_T(&gpu_tau);
  gpuEmxReset_real_T(&gpu_dv1);
  gpuEmxReset_real_T(&b_gpu_tau);
  gpuEmxReset_real_T(&b_gpu_R);
  gpuEmxReset_real_T(&b_gpu_Q);
  gpuEmxReset_real_T(&d_gpu_B);
  gpuEmxReset_real_T(&gpu_z);
  gpuEmxReset_real_T(&g_gpu_A);
  gpuEmxReset_real_T(&gpu_dv);
  gpuEmxReset_real_T(&c_gpu_y);
  gpuEmxReset_real_T(&gpu_R);
  gpuEmxReset_real_T(&gpu_Q);
  gpuEmxReset_real_T(&b_gpu_B);
  gpuEmxReset_real_T(&b_gpu_TL);
  gpuEmxReset_real_T(&gpu_B);
  gpuEmxReset_real_T(&gpu_AcRow);
  gpuEmxReset_real_T(&c_gpu_A);
  gpuEmxReset_real_T(&b_gpu_y);
  gpuEmxReset_real_T(&d_gpu_a);
  gpuEmxReset_real_T(&e_gpu_a);
  gpuEmxReset_real_T(&gpu_x);
  gpuEmxReset_real_T(&gpu_TL);
  gpuEmxReset_real_T(&g_gpu_a);
  gpuEmxReset_real_T(&gpu_Rhs);
  gpuEmxReset_real_T(&gpu_Opt);
  gpuEmxReset_int32_T(&gpu_iC);
  gpuEmxReset_real_T(&gpu_cTol);
  gpuEmxReset_real_T(&gpu_H);
  gpuEmxReset_real_T(&gpu_D);
  gpuEmxReset_real_T(&b_gpu_a);
  gpuEmxReset_real_T(&gpu_RLinv);
  gpuEmxReset_real_T(&gpu_r);
  gpuEmxReset_real_T(&gpu_lam);
  gpuEmxReset_real_T(&gpu_z_solution);
  gpuEmxReset_boolean_T(&gpu_iA);
  gpuEmxReset_real_T(&gpu_b);
  checkCudaError(mwCudaMalloc(&gpu_ii, 4ULL), __FILE__, __LINE__);
  gpuEmxReset_int8_T(&gpu_varargin_1);
  gpuEmxReset_real_T(&gpu_superb);
  gpuEmxReset_real_T(&gpu_result);
  gpuEmxReset_real_T(&gpu_Hinv);
  gpuEmxReset_real_T(&gpu_A);
  gpuEmxReset_real_T(&i_gpu_A);
  gpuEmxReset_real_T(&gpu_s);
  gpuEmxReset_real_T(&b_gpu_A);
  gpuEmxReset_boolean_T(&b_gpu_x);
  gpuEmxReset_real_T(&gpu_d);
  gpuEmxReset_real_T(&gpu_Linv);
  gpuEmxReset_int8_T(&c_gpu_I);
  gpuEmxReset_real_T(&gpu_f);
  gpuEmxReset_real_T(&gpu_a);
  gpuEmxReset_real_T(&gpu_equality_matrix);
  gpuEmxReset_real_T(&gpu_varargin_2);
  gpuEmxReset_int8_T(&b_gpu_I);
  gpuEmxReset_int16_T(&gpu_inequality_vector);
  gpuEmxReset_int8_T(&gpu_inequality_matrix);
  gpuEmxReset_real_T(&gpu_H_mat);
  gpuEmxReset_int8_T(&gpu_I);
  gpuEmxReset_real_T(&gpu_y);
  gpuEmxReset_int32_T(&gpu_iv8);
  gpuEmxReset_int32_T(&gpu_iv7);
  gpuEmxReset_int32_T(&gpu_iv6);
  gpuEmxReset_real_T(&gpu_idxx);
  gpuEmxReset_int32_T(&gpu_iv2);
  gpuEmxReset_int32_T(&gpu_iv);
  gpuEmxReset_real_T(&gpu_idx);
  gpuEmxReset_int32_T(&gpu_iv15);
  gpuEmxReset_int32_T(&gpu_iv13);
  gpuEmxReset_real_T(&gpu_idfu);
  gpuEmxReset_int32_T(&gpu_iv12);
  gpuEmxReset_int32_T(&gpu_iv10);
  gpuEmxReset_real_T(&gpu_idfx);
  gpuEmxReset_int32_T(&gpu_iv5);
  gpuEmxReset_int32_T(&gpu_iv4);
  gpuEmxReset_int16_T(&gpu_gU);
  gpuEmxReset_int8_T(&gpu_FU);
  gpuEmxReset_int16_T(&gpu_gX);
  gpuEmxReset_int8_T(&gpu_FX);
  gpuEmxReset_real_T(&gpu_RU);
  gpuEmxReset_real_T(&gpu_QX);
  checkCudaError(mwCudaMalloc(&gpu_info_t, 4ULL), __FILE__, __LINE__);
  gpuEmxReset_real_T(&gpu_BU);
  gpuEmxReset_real_T(&gpu_AX);
  gpuEmxReset_real_T(&gpu_A_powers);
  gpuEmxReset_real_T(&gpu_z_ref);
  x_outdatedOnCpu = false;
  idxx_needsGpuEnsureCapacity = true;
  idx_needsGpuEnsureCapacity = true;
  idfu_needsGpuEnsureCapacity = true;
  empty_non_axis_sizes = true;
  iv5_needsGpuEnsureCapacity = true;
  iv4_needsGpuEnsureCapacity = true;
  emlrtHeapReferenceStackEnterFcnR2012b(emlrtRootTLSGlobal);

  //  LMPC_STEP  One-step linear MPC with condensed QP formulation.
  //  Inputs:
  //    roadIndex : integer in {1=dry, 2=wet, 3=snow, 4=ice}
  //    v_ref     : current reference velocity [m/s] (assumed constant over horizon)
  //    v_meas    : measured vehicle velocity [m/s]
  //
  // ===========================================================
  //  0) MPC Controller Parameter Definition
  // ===========================================================
  //  State space model of the vehicle dynamics
  //  Simulation parameters
  //  Number of system states (n)
  //  Number of system inputs (m)
  //  Cost function weighting matrices
  //  State penalty matrix (Q)
  //  Terminal state penalty (QN)
  //  Input penalty matrix (R)
  //  Reference signal computation (set point)
  //  Desired state
  //  State constraints (Fx * x <= gx)
  //  State constraint matrix
  //  State constraint bounds (shifted by reference)
  //  Input constraints (Fu * u <= gu)
  //  Input constraint matrix
  //  Input constraint bounds (shifted by reference)
  // ===========================================================
  //  1) Lifted prediction matrices AX, BU (for states) and Oy
  // ===========================================================
  //  Lifted state/input matrices
  //  Predicted state trajectory
  //  Predicted inputs
  emxInit_real_T(&cpu_z_ref, 1, &emlrtRTEI, true);
  cpu_z_ref->size[0] = static_cast<int32_T>(prediction_horizon + 1.0) +
    static_cast<int32_T>(prediction_horizon);
  mwGetLaunchParameters1D(computeNumIters(static_cast<int32_T>
    (prediction_horizon + 1.0) - 1), &grid, &block, 2147483647U);
  gpuEmxEnsureCapacity_real_T(cpu_z_ref, &gpu_z_ref, true);
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel1<<<grid, block>>>(v_ref, static_cast<int32_T>
      (prediction_horizon + 1.0) - 1, gpu_z_ref);
  }

  mwGetLaunchParameters1D(computeNumIters(static_cast<int32_T>
    (prediction_horizon) - 1), &grid, &block, 2147483647U);
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel2<<<grid, block>>>((1.0 - stateSpace->A) * v_ref /
      stateSpace->B, static_cast<int32_T>(prediction_horizon + 1.0),
      static_cast<int32_T>(prediction_horizon) - 1, gpu_z_ref);
  }

  //  Decision vector for optimizer (contains states & inputs)
  //  Build AX (state evolution) and BU (control influence)
  emxInit_real_T(&cpu_A_powers, 3, &b_emlrtRTEI, true);
  k = cpu_A_powers->size[0] * cpu_A_powers->size[1] * cpu_A_powers->size[2];
  cpu_A_powers->size[0] = 1;
  cpu_A_powers->size[1] = 1;
  cpu_A_powers->size[2] = static_cast<int32_T>(prediction_horizon + 1.0);
  emxEnsureCapacity_real_T(cpu_A_powers, k, &b_emlrtRTEI);
  mwGetLaunchParameters1D(computeNumIters(static_cast<int32_T>
    (prediction_horizon + 1.0) - 1), &grid, &block, 2147483647U);
  gpuEmxEnsureCapacity_real_T(cpu_A_powers, &gpu_A_powers, true);
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel3<<<grid, block>>>(static_cast<int32_T>(prediction_horizon +
      1.0) - 1, gpu_A_powers);
  }

  A_powers_needsGpuEnsureCapacity = false;
  mpcStep_kernel4<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_A_powers);
  A_powers_outdatedOnGpu = false;
  A_powers_outdatedOnCpu = true;
  i = static_cast<int32_T>((prediction_horizon + 1.0) - 1.0);
  for (k = 0; k < i; k++) {
    if (A_powers_outdatedOnCpu) {
      gpuEmxMemcpyGpuToCpu_real_T(cpu_A_powers, &gpu_A_powers);
    }

    cpu_A_powers->data[k + 1] = cpu_A_powers->data[k] * stateSpace->A;
    A_powers_outdatedOnCpu = false;
    A_powers_outdatedOnGpu = true;
    A_powers_needsGpuEnsureCapacity = true;
  }

  //  Preallocate outputs
  emxInit_real_T(&cpu_AX, 1, &c_emlrtRTEI, true);
  cpu_AX->size[0] = static_cast<int32_T>(prediction_horizon + 1.0);
  mwGetLaunchParameters1D(computeNumIters(static_cast<int32_T>
    (prediction_horizon + 1.0) - 1), &grid, &block, 2147483647U);
  gpuEmxEnsureCapacity_real_T(cpu_AX, &gpu_AX, true);
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel5<<<grid, block>>>(static_cast<int32_T>(prediction_horizon +
      1.0) - 1, gpu_AX);
  }

  emxInit_real_T(&cpu_BU, 2, &d_emlrtRTEI, true);
  cpu_BU->size[0] = static_cast<int32_T>(prediction_horizon + 1.0);
  cpu_BU->size[1] = static_cast<int32_T>(prediction_horizon);
  idfx = static_cast<int32_T>(prediction_horizon + 1.0) * static_cast<int32_T>
    (prediction_horizon) - 1;
  mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
  gpuEmxEnsureCapacity_real_T(cpu_BU, &gpu_BU, true);
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel6<<<grid, block>>>(idfx, gpu_BU);
  }

  //  Fill AX using precomputed A^k
  mwGetLaunchParameters1D(computeNumIters(static_cast<int32_T>
    (prediction_horizon + 1.0) - 1), &grid, &block, 2147483647U);
  if (A_powers_needsGpuEnsureCapacity) {
    gpuEmxEnsureCapacity_real_T(cpu_A_powers, &gpu_A_powers,
      !A_powers_outdatedOnGpu);
  }

  if (A_powers_outdatedOnGpu) {
    gpuEmxMemcpyCpuToGpu_real_T(&gpu_A_powers, cpu_A_powers);
  }

  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel7<<<grid, block>>>(gpu_A_powers, static_cast<int32_T>
      (prediction_horizon + 1.0) - 1, gpu_AX);
  }

  //  Fill BU using A^k and B
  numIters = computeNumIters(static_cast<int32_T>(prediction_horizon + 1.0) - 1,
    static_cast<int32_T>(prediction_horizon) - 1);
  mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel8<<<grid, block>>>(*stateSpace, gpu_A_powers,
      static_cast<int32_T>(prediction_horizon) - 1, static_cast<int32_T>
      (prediction_horizon + 1.0) - 1, gpu_BU, cpu_BU->size[0U]);
  }

  emxFree_real_T(&cpu_A_powers);

  //  Extended weighting matrices for optimization. Preallocate with fixed sizes
  emxInit_real_T(&cpu_QX, 2, &e_emlrtRTEI, true);
  k = cpu_QX->size[0] * cpu_QX->size[1];
  cpu_QX->size[0] = static_cast<int32_T>(prediction_horizon + 1.0);
  cpu_QX->size[1] = static_cast<int32_T>(prediction_horizon + 1.0);
  emxEnsureCapacity_real_T(cpu_QX, k, &e_emlrtRTEI);
  idfx = static_cast<int32_T>(prediction_horizon + 1.0) * static_cast<int32_T>
    (prediction_horizon + 1.0) - 1;
  mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
  gpuEmxEnsureCapacity_real_T(cpu_QX, &gpu_QX, true);
  QX_needsGpuEnsureCapacity = false;
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel9<<<grid, block>>>(idfx, gpu_QX);
  }

  QX_outdatedOnGpu = false;
  QX_outdatedOnCpu = true;
  emxInit_real_T(&cpu_RU, 2, &f_emlrtRTEI, true);
  cpu_RU->size[0] = static_cast<int32_T>(prediction_horizon);
  cpu_RU->size[1] = static_cast<int32_T>(prediction_horizon);
  idfx = static_cast<int32_T>(prediction_horizon) * static_cast<int32_T>
    (prediction_horizon) - 1;
  mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
  gpuEmxEnsureCapacity_real_T(cpu_RU, &gpu_RU, true);
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel10<<<grid, block>>>(idfx, gpu_RU);
  }

  emxInit_int8_T(&cpu_FX, 2, &g_emlrtRTEI, true);
  k = cpu_FX->size[0] * cpu_FX->size[1];
  cpu_FX->size[0] = static_cast<int32_T>(2.0 * (prediction_horizon + 1.0));
  cpu_FX->size[1] = static_cast<int32_T>(prediction_horizon + 1.0);
  emxEnsureCapacity_int8_T(cpu_FX, k, &g_emlrtRTEI);
  idfx = static_cast<int32_T>(2.0 * (prediction_horizon + 1.0)) * static_cast<
    int32_T>(prediction_horizon + 1.0) - 1;
  mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
  gpuEmxEnsureCapacity_int8_T(cpu_FX, &gpu_FX, true);
  FX_needsGpuEnsureCapacity = false;
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel11<<<grid, block>>>(idfx, gpu_FX);
  }

  FX_outdatedOnGpu = false;
  FX_outdatedOnCpu = true;
  emxInit_int16_T(&cpu_gX, 1, &h_emlrtRTEI, true);
  k = cpu_gX->size[0];
  cpu_gX->size[0] = static_cast<int32_T>(2.0 * (prediction_horizon + 1.0));
  emxEnsureCapacity_int16_T(cpu_gX, k, &h_emlrtRTEI);
  idfx = static_cast<int32_T>(2.0 * (prediction_horizon + 1.0)) - 1;
  mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
  gpuEmxEnsureCapacity_int16_T(cpu_gX, &gpu_gX, true);
  gX_needsGpuEnsureCapacity = false;
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel12<<<grid, block>>>(idfx, gpu_gX);
  }

  gX_outdatedOnGpu = false;
  gX_outdatedOnCpu = true;
  emxInit_int8_T(&cpu_FU, 2, &i_emlrtRTEI, true);
  k = cpu_FU->size[0] * cpu_FU->size[1];
  cpu_FU->size[0] = static_cast<int32_T>(2.0 * prediction_horizon);
  cpu_FU->size[1] = static_cast<int32_T>(prediction_horizon);
  emxEnsureCapacity_int8_T(cpu_FU, k, &i_emlrtRTEI);
  idfx = static_cast<int32_T>(2.0 * prediction_horizon) * static_cast<int32_T>
    (prediction_horizon) - 1;
  mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
  gpuEmxEnsureCapacity_int8_T(cpu_FU, &gpu_FU, true);
  FU_needsGpuEnsureCapacity = false;
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel13<<<grid, block>>>(idfx, gpu_FU);
  }

  FU_outdatedOnGpu = false;
  A_powers_outdatedOnGpu = true;
  emxInit_int16_T(&cpu_gU, 1, &j_emlrtRTEI, true);
  k = cpu_gU->size[0];
  cpu_gU->size[0] = static_cast<int32_T>(2.0 * prediction_horizon);
  emxEnsureCapacity_int16_T(cpu_gU, k, &j_emlrtRTEI);
  idfx = static_cast<int32_T>(2.0 * prediction_horizon) - 1;
  mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
  gpuEmxEnsureCapacity_int16_T(cpu_gU, &gpu_gU, true);
  gU_needsGpuEnsureCapacity = false;
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel14<<<grid, block>>>(idfx, gpu_gU);
  }

  gU_outdatedOnGpu = false;
  A_powers_outdatedOnCpu = true;

  //  Fill block diagonals for stage cost
  outsize_idx_0 = static_cast<int32_T>(prediction_horizon - 1.0);
  emxInit_int32_T(&iv1, 1, &rc_emlrtRTEI, true);
  emxInit_int32_T(&iv3, 1, &rc_emlrtRTEI, true);
  emxInit_int32_T(&cpu_iv4, 1, &sc_emlrtRTEI, true);
  emxInit_int32_T(&cpu_iv5, 1, &sc_emlrtRTEI, true);
  emxInit_int32_T(&iv11, 1, &wc_emlrtRTEI, true);
  emxInit_int32_T(&iv14, 1, &bd_emlrtRTEI, true);
  if (static_cast<int32_T>(prediction_horizon - 1.0) - 1 >= 0) {
    k = iv1->size[0];
    iv1->size[0] = 1;
    emxEnsureCapacity_int32_T(iv1, k, &k_emlrtRTEI);
    k = iv3->size[0];
    iv3->size[0] = 1;
    emxEnsureCapacity_int32_T(iv3, k, &l_emlrtRTEI);
    cpu_iv4->size[0] = 1;
    cpu_iv5->size[0] = 1;
    k = iv11->size[0];
    iv11->size[0] = 1;
    emxEnsureCapacity_int32_T(iv11, k, &n_emlrtRTEI);
    k = iv14->size[0];
    iv14->size[0] = 1;
    emxEnsureCapacity_int32_T(iv14, k, &p_emlrtRTEI);
  }

  emxInit_real_T(&cpu_idfx, 2, &q_emlrtRTEI, true);
  emxInit_int32_T(&cpu_iv10, 1, &wc_emlrtRTEI, true);
  emxInit_int32_T(&cpu_iv12, 2, &yc_emlrtRTEI, true);
  emxInit_real_T(&cpu_idfu, 2, &v_emlrtRTEI, true);
  emxInit_int32_T(&cpu_iv13, 1, &bd_emlrtRTEI, true);
  emxInit_int32_T(&cpu_iv15, 2, &cd_emlrtRTEI, true);
  for (i = 0; i < outsize_idx_0; i++) {
    //  Q blocks
    iv1->data[0] = i + 1;
    iv3->data[0] = static_cast<int32_T>(static_cast<uint32_T>(i) + 1U);

    //  R blocks
    if (iv5_needsGpuEnsureCapacity) {
      gpuEmxEnsureCapacity_int32_T(cpu_iv5, &gpu_iv5, true);
    }

    if (iv4_needsGpuEnsureCapacity) {
      gpuEmxEnsureCapacity_int32_T(cpu_iv4, &gpu_iv4, true);
    }

    mpcStep_kernel15<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(i, gpu_iv5,
      gpu_iv4);
    if (QX_outdatedOnCpu) {
      gpuEmxMemcpyGpuToCpu_real_T(cpu_QX, &gpu_QX);
    }

    cpu_QX->data[(iv1->data[0] + cpu_QX->size[0] * (iv3->data[0] - 1)) - 1] =
      velocity_penalty;
    QX_outdatedOnCpu = false;
    QX_outdatedOnGpu = true;
    QX_needsGpuEnsureCapacity = true;
    iv5_needsGpuEnsureCapacity = false;
    iv4_needsGpuEnsureCapacity = false;
    mpcStep_kernel16<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(torque_penalty,
      gpu_iv5, gpu_iv4, gpu_RU, cpu_RU->size[0U]);

    //  Fx and gx
    b_t = (static_cast<uint32_T>(i) << 1) + 1U;
    absx = (static_cast<real_T>(i) + 1.0) * 2.0;
    if (absx < b_t) {
      cpu_idfx->size[0] = 1;
      cpu_idfx->size[1] = 0;
    } else {
      cpu_idfx->size[0] = 1;
      cpu_idfx->size[1] = static_cast<int32_T>(absx - static_cast<real_T>(b_t))
        + 1;
      idfx = static_cast<int32_T>(absx - static_cast<real_T>(b_t));
      mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
      gpuEmxEnsureCapacity_real_T(cpu_idfx, &gpu_idfx, true);
      empty_non_axis_sizes = false;
      validLaunchParams = mwValidateLaunchParameters(grid, block);
      if (validLaunchParams) {
        mpcStep_kernel22<<<grid, block>>>(b_t, idfx, gpu_idfx);
      }
    }

    k = cpu_iv10->size[0];
    cpu_iv10->size[0] = cpu_idfx->size[1];
    emxEnsureCapacity_int32_T(cpu_iv10, k, &r_emlrtRTEI);
    idfx = cpu_idfx->size[1] - 1;
    mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
    if (empty_non_axis_sizes) {
      gpuEmxEnsureCapacity_real_T(cpu_idfx, &gpu_idfx, true);
    }

    gpuEmxEnsureCapacity_int32_T(cpu_iv10, &gpu_iv10, true);
    validLaunchParams = mwValidateLaunchParameters(grid, block);
    if (validLaunchParams) {
      mpcStep_kernel17<<<grid, block>>>(gpu_idfx, idfx, gpu_iv10);
    }

    A_powers_needsGpuEnsureCapacity = true;
    iv11->data[0] = i;
    for (idfx = 0; idfx < 2; idfx++) {
      iv[idfx] = static_cast<int8_T>(-2 * idfx + 1);
    }

    AX[0] = cpu_iv10->size[0];
    idfx = AX[0];
    for (nx = 0; nx < idfx; nx++) {
      if (FX_outdatedOnCpu) {
        gpuEmxMemcpyGpuToCpu_int8_T(cpu_FX, &gpu_FX);
      }

      if (A_powers_needsGpuEnsureCapacity) {
        gpuEmxMemcpyGpuToCpu_int32_T(cpu_iv10, &gpu_iv10);
      }

      A_powers_needsGpuEnsureCapacity = false;
      cpu_FX->data[cpu_iv10->data[nx] + cpu_FX->size[0] * iv11->data[0]] = iv[nx];
      FX_outdatedOnCpu = false;
      FX_outdatedOnGpu = true;
      FX_needsGpuEnsureCapacity = true;
    }

    k = cpu_iv12->size[0] * cpu_iv12->size[1];
    cpu_iv12->size[0] = 1;
    cpu_iv12->size[1] = cpu_idfx->size[1];
    emxEnsureCapacity_int32_T(cpu_iv12, k, &u_emlrtRTEI);
    idfx = cpu_idfx->size[1] - 1;
    mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
    empty_non_axis_sizes = false;
    gpuEmxEnsureCapacity_int32_T(cpu_iv12, &gpu_iv12, true);
    validLaunchParams = mwValidateLaunchParameters(grid, block);
    if (validLaunchParams) {
      mpcStep_kernel18<<<grid, block>>>(gpu_idfx, idfx, gpu_iv12);
    }

    A_powers_needsGpuEnsureCapacity = true;
    idfx = cpu_iv12->size[1];
    for (k = 0; k < idfx; k++) {
      if (gX_outdatedOnCpu) {
        gpuEmxMemcpyGpuToCpu_int16_T(cpu_gX, &gpu_gX);
      }

      if (A_powers_needsGpuEnsureCapacity) {
        gpuEmxMemcpyGpuToCpu_int32_T(cpu_iv12, &gpu_iv12);
      }

      A_powers_needsGpuEnsureCapacity = false;
      cpu_gX->data[cpu_iv12->data[k] - 1] = 1000;
      gX_outdatedOnCpu = false;
      gX_outdatedOnGpu = true;
      gX_needsGpuEnsureCapacity = true;
    }

    //  Fu and gu
    b_t = (static_cast<uint32_T>(i) << 1) + 1U;
    absx = (static_cast<real_T>(i) + 1.0) * 2.0;
    if (absx < b_t) {
      cpu_idfu->size[0] = 1;
      cpu_idfu->size[1] = 0;
    } else {
      cpu_idfu->size[0] = 1;
      cpu_idfu->size[1] = static_cast<int32_T>(absx - static_cast<real_T>(b_t))
        + 1;
      idfx = static_cast<int32_T>(absx - static_cast<real_T>(b_t));
      mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
      gpuEmxEnsureCapacity_real_T(cpu_idfu, &gpu_idfu, true);
      idfu_needsGpuEnsureCapacity = false;
      validLaunchParams = mwValidateLaunchParameters(grid, block);
      if (validLaunchParams) {
        mpcStep_kernel21<<<grid, block>>>(b_t, idfx, gpu_idfu);
      }
    }

    k = cpu_iv13->size[0];
    cpu_iv13->size[0] = cpu_idfu->size[1];
    emxEnsureCapacity_int32_T(cpu_iv13, k, &x_emlrtRTEI);
    idfu = cpu_idfu->size[1] - 1;
    mwGetLaunchParameters1D(computeNumIters(idfu), &grid, &block, 2147483647U);
    if (idfu_needsGpuEnsureCapacity) {
      gpuEmxEnsureCapacity_real_T(cpu_idfu, &gpu_idfu, true);
    }

    gpuEmxEnsureCapacity_int32_T(cpu_iv13, &gpu_iv13, true);
    validLaunchParams = mwValidateLaunchParameters(grid, block);
    if (validLaunchParams) {
      mpcStep_kernel19<<<grid, block>>>(gpu_idfu, idfu, gpu_iv13);
    }

    A_powers_needsGpuEnsureCapacity = true;
    iv14->data[0] = i;
    for (idfx = 0; idfx < 2; idfx++) {
      iv[idfx] = static_cast<int8_T>(-2 * idfx + 1);
    }

    AX[0] = cpu_iv13->size[0];
    idfx = AX[0];
    for (nx = 0; nx < idfx; nx++) {
      if (A_powers_outdatedOnGpu) {
        gpuEmxMemcpyGpuToCpu_int8_T(cpu_FU, &gpu_FU);
      }

      if (A_powers_needsGpuEnsureCapacity) {
        gpuEmxMemcpyGpuToCpu_int32_T(cpu_iv13, &gpu_iv13);
      }

      A_powers_needsGpuEnsureCapacity = false;
      cpu_FU->data[cpu_iv13->data[nx] + cpu_FU->size[0] * iv14->data[0]] = iv[nx];
      A_powers_outdatedOnGpu = false;
      FU_outdatedOnGpu = true;
      FU_needsGpuEnsureCapacity = true;
    }

    k = cpu_iv15->size[0] * cpu_iv15->size[1];
    cpu_iv15->size[0] = 1;
    cpu_iv15->size[1] = cpu_idfu->size[1];
    emxEnsureCapacity_int32_T(cpu_iv15, k, &ab_emlrtRTEI);
    idfu = cpu_idfu->size[1] - 1;
    mwGetLaunchParameters1D(computeNumIters(idfu), &grid, &block, 2147483647U);
    idfu_needsGpuEnsureCapacity = false;
    gpuEmxEnsureCapacity_int32_T(cpu_iv15, &gpu_iv15, true);
    validLaunchParams = mwValidateLaunchParameters(grid, block);
    if (validLaunchParams) {
      mpcStep_kernel20<<<grid, block>>>(gpu_idfu, idfu, gpu_iv15);
    }

    A_powers_needsGpuEnsureCapacity = true;
    idfx = cpu_iv15->size[1];
    for (k = 0; k < idfx; k++) {
      if (A_powers_outdatedOnCpu) {
        gpuEmxMemcpyGpuToCpu_int16_T(cpu_gU, &gpu_gU);
      }

      if (A_powers_needsGpuEnsureCapacity) {
        gpuEmxMemcpyGpuToCpu_int32_T(cpu_iv15, &gpu_iv15);
      }

      A_powers_needsGpuEnsureCapacity = false;
      cpu_gU->data[cpu_iv15->data[k] - 1] = 800;
      A_powers_outdatedOnCpu = false;
      gU_outdatedOnGpu = true;
      gU_needsGpuEnsureCapacity = true;
    }
  }

  emxFree_int32_T(&cpu_iv15);
  emxFree_int32_T(&iv14);
  emxFree_int32_T(&cpu_iv13);
  emxFree_real_T(&cpu_idfu);
  emxFree_int32_T(&cpu_iv12);
  emxFree_int32_T(&iv11);
  emxFree_int32_T(&cpu_iv10);
  emxFree_int32_T(&cpu_iv5);
  emxFree_int32_T(&cpu_iv4);
  emxFree_int32_T(&iv3);
  emxFree_int32_T(&iv1);

  //  Final QN block
  emxInit_real_T(&cpu_idx, 2, &pc_emlrtRTEI, true);
  if (prediction_horizon < (prediction_horizon - 1.0) + 1.0) {
    cpu_idx->size[0] = 1;
    cpu_idx->size[1] = 0;
  } else if ((std::isinf((prediction_horizon - 1.0) + 1.0) || std::isinf
              (prediction_horizon)) && ((prediction_horizon - 1.0) + 1.0 ==
              prediction_horizon)) {
    cpu_idx->size[0] = 1;
    cpu_idx->size[1] = 1;
    gpuEmxEnsureCapacity_real_T(cpu_idx, &gpu_idx, true);
    idx_needsGpuEnsureCapacity = false;
    mpcStep_kernel200<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_idx);
  } else {
    cpu_idx->size[0] = 1;
    cpu_idx->size[1] = static_cast<int32_T>(prediction_horizon -
      ((prediction_horizon - 1.0) + 1.0)) + 1;
    idfx = static_cast<int32_T>(prediction_horizon - ((prediction_horizon - 1.0)
      + 1.0));
    mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
    gpuEmxEnsureCapacity_real_T(cpu_idx, &gpu_idx, true);
    idx_needsGpuEnsureCapacity = false;
    validLaunchParams = mwValidateLaunchParameters(grid, block);
    if (validLaunchParams) {
      mpcStep_kernel201<<<grid, block>>>((prediction_horizon - 1.0) + 1.0, idfx,
        gpu_idx);
    }
  }

  emxInit_int32_T(&cpu_iv, 1, &qc_emlrtRTEI, true);
  k = cpu_iv->size[0];
  cpu_iv->size[0] = cpu_idx->size[1];
  emxEnsureCapacity_int32_T(cpu_iv, k, &m_emlrtRTEI);
  emxInit_int32_T(&cpu_iv2, 1, &qc_emlrtRTEI, true);
  k = cpu_iv2->size[0];
  cpu_iv2->size[0] = cpu_idx->size[1];
  emxEnsureCapacity_int32_T(cpu_iv2, k, &o_emlrtRTEI);
  idfx = cpu_idx->size[1] - 1;
  mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
  if (idx_needsGpuEnsureCapacity) {
    gpuEmxEnsureCapacity_real_T(cpu_idx, &gpu_idx, true);
  }

  gpuEmxEnsureCapacity_int32_T(cpu_iv2, &gpu_iv2, true);
  gpuEmxEnsureCapacity_int32_T(cpu_iv, &gpu_iv, true);
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel23<<<grid, block>>>(gpu_idx, idfx, gpu_iv2, gpu_iv);
  }

  A_powers_needsGpuEnsureCapacity = true;
  A_powers_outdatedOnGpu = true;
  emxFree_real_T(&cpu_idx);
  idfx = cpu_iv2->size[0];
  for (k = 0; k < idfx; k++) {
    cpu_info_t = cpu_iv->size[0];
    for (nx = 0; nx < cpu_info_t; nx++) {
      if (QX_outdatedOnCpu) {
        gpuEmxMemcpyGpuToCpu_real_T(cpu_QX, &gpu_QX);
      }

      if (A_powers_needsGpuEnsureCapacity) {
        gpuEmxMemcpyGpuToCpu_int32_T(cpu_iv, &gpu_iv);
      }

      A_powers_needsGpuEnsureCapacity = false;
      if (A_powers_outdatedOnGpu) {
        gpuEmxMemcpyGpuToCpu_int32_T(cpu_iv2, &gpu_iv2);
      }

      A_powers_outdatedOnGpu = false;
      cpu_QX->data[(cpu_iv->data[nx] + cpu_QX->size[0] * (cpu_iv2->data[k] - 1))
        - 1] = velocity_penalty;
      QX_outdatedOnCpu = false;
      QX_outdatedOnGpu = true;
      QX_needsGpuEnsureCapacity = true;
    }
  }

  emxFree_int32_T(&cpu_iv2);
  emxFree_int32_T(&cpu_iv);

  //  Final Fx and gx
  t = (prediction_horizon - 1.0) * 2.0 + 1.0;
  absx = prediction_horizon * 2.0;
  if (absx < t) {
    cpu_idfx->size[0] = 1;
    cpu_idfx->size[1] = 0;
  } else if ((std::isinf(t) || std::isinf(absx)) && (t == absx)) {
    cpu_idfx->size[0] = 1;
    cpu_idfx->size[1] = 1;
    gpuEmxEnsureCapacity_real_T(cpu_idfx, &gpu_idfx, true);
    empty_non_axis_sizes = false;
    mpcStep_kernel198<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_idfx);
  } else {
    cpu_idfx->size[0] = 1;
    cpu_idfx->size[1] = static_cast<int32_T>(absx - t) + 1;
    idfx = static_cast<int32_T>(absx - t);
    mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
    gpuEmxEnsureCapacity_real_T(cpu_idfx, &gpu_idfx, true);
    empty_non_axis_sizes = false;
    validLaunchParams = mwValidateLaunchParameters(grid, block);
    if (validLaunchParams) {
      mpcStep_kernel199<<<grid, block>>>(t, idfx, gpu_idfx);
    }
  }

  emxInit_real_T(&cpu_idxx, 2, &tc_emlrtRTEI, true);
  if (prediction_horizon < (prediction_horizon - 1.0) + 1.0) {
    cpu_idxx->size[0] = 1;
    cpu_idxx->size[1] = 0;
  } else if ((std::isinf((prediction_horizon - 1.0) + 1.0) || std::isinf
              (prediction_horizon)) && ((prediction_horizon - 1.0) + 1.0 ==
              prediction_horizon)) {
    cpu_idxx->size[0] = 1;
    cpu_idxx->size[1] = 1;
    gpuEmxEnsureCapacity_real_T(cpu_idxx, &gpu_idxx, true);
    idxx_needsGpuEnsureCapacity = false;
    mpcStep_kernel196<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_idxx);
  } else {
    cpu_idxx->size[0] = 1;
    cpu_idxx->size[1] = static_cast<int32_T>(prediction_horizon -
      ((prediction_horizon - 1.0) + 1.0)) + 1;
    idfx = static_cast<int32_T>(prediction_horizon - ((prediction_horizon - 1.0)
      + 1.0));
    mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
    gpuEmxEnsureCapacity_real_T(cpu_idxx, &gpu_idxx, true);
    idxx_needsGpuEnsureCapacity = false;
    validLaunchParams = mwValidateLaunchParameters(grid, block);
    if (validLaunchParams) {
      mpcStep_kernel197<<<grid, block>>>((prediction_horizon - 1.0) + 1.0, idfx,
        gpu_idxx);
    }
  }

  emxInit_int32_T(&cpu_iv6, 1, &uc_emlrtRTEI, true);
  k = cpu_iv6->size[0];
  cpu_iv6->size[0] = cpu_idfx->size[1];
  emxEnsureCapacity_int32_T(cpu_iv6, k, &s_emlrtRTEI);
  idfx = cpu_idfx->size[1] - 1;
  mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
  if (empty_non_axis_sizes) {
    gpuEmxEnsureCapacity_real_T(cpu_idfx, &gpu_idfx, true);
  }

  gpuEmxEnsureCapacity_int32_T(cpu_iv6, &gpu_iv6, true);
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel24<<<grid, block>>>(gpu_idfx, idfx, gpu_iv6);
  }

  A_powers_outdatedOnGpu = true;
  emxInit_int32_T(&cpu_iv7, 1, &uc_emlrtRTEI, true);
  k = cpu_iv7->size[0];
  cpu_iv7->size[0] = cpu_idxx->size[1];
  emxEnsureCapacity_int32_T(cpu_iv7, k, &t_emlrtRTEI);
  idfx = cpu_idxx->size[1] - 1;
  mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
  if (idxx_needsGpuEnsureCapacity) {
    gpuEmxEnsureCapacity_real_T(cpu_idxx, &gpu_idxx, true);
  }

  gpuEmxEnsureCapacity_int32_T(cpu_iv7, &gpu_iv7, true);
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel25<<<grid, block>>>(gpu_idxx, idfx, gpu_iv7);
  }

  A_powers_needsGpuEnsureCapacity = true;
  emxFree_real_T(&cpu_idxx);
  for (idfx = 0; idfx < 2; idfx++) {
    iv[idfx] = static_cast<int8_T>(-2 * idfx + 1);
  }

  AX[0] = cpu_iv6->size[0];
  idfx = cpu_iv7->size[0];
  for (k = 0; k < idfx; k++) {
    cpu_info_t = AX[0];
    for (nx = 0; nx < cpu_info_t; nx++) {
      if (FX_outdatedOnCpu) {
        gpuEmxMemcpyGpuToCpu_int8_T(cpu_FX, &gpu_FX);
      }

      if (A_powers_outdatedOnGpu) {
        gpuEmxMemcpyGpuToCpu_int32_T(cpu_iv6, &gpu_iv6);
      }

      A_powers_outdatedOnGpu = false;
      if (A_powers_needsGpuEnsureCapacity) {
        gpuEmxMemcpyGpuToCpu_int32_T(cpu_iv7, &gpu_iv7);
      }

      A_powers_needsGpuEnsureCapacity = false;
      cpu_FX->data[cpu_iv6->data[nx] + cpu_FX->size[0] * cpu_iv7->data[k]] =
        iv[nx + AX[0] * k];
      FX_outdatedOnCpu = false;
      FX_outdatedOnGpu = true;
      FX_needsGpuEnsureCapacity = true;
    }
  }

  emxFree_int32_T(&cpu_iv7);
  emxFree_int32_T(&cpu_iv6);
  emxInit_int32_T(&cpu_iv8, 2, &vc_emlrtRTEI, true);
  k = cpu_iv8->size[0] * cpu_iv8->size[1];
  cpu_iv8->size[0] = 1;
  cpu_iv8->size[1] = cpu_idfx->size[1];
  emxEnsureCapacity_int32_T(cpu_iv8, k, &w_emlrtRTEI);
  idfx = cpu_idfx->size[1] - 1;
  mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
  gpuEmxEnsureCapacity_int32_T(cpu_iv8, &gpu_iv8, true);
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel26<<<grid, block>>>(gpu_idfx, idfx, gpu_iv8);
  }

  A_powers_needsGpuEnsureCapacity = true;
  emxFree_real_T(&cpu_idfx);
  idfx = cpu_iv8->size[1];
  for (k = 0; k < idfx; k++) {
    if (gX_outdatedOnCpu) {
      gpuEmxMemcpyGpuToCpu_int16_T(cpu_gX, &gpu_gX);
    }

    if (A_powers_needsGpuEnsureCapacity) {
      gpuEmxMemcpyGpuToCpu_int32_T(cpu_iv8, &gpu_iv8);
    }

    A_powers_needsGpuEnsureCapacity = false;
    cpu_gX->data[cpu_iv8->data[k] - 1] = 1000;
    gX_outdatedOnCpu = false;
    gX_outdatedOnGpu = true;
    gX_needsGpuEnsureCapacity = true;
  }

  emxFree_int32_T(&cpu_iv8);

  //  Build H
  //  small positive number
  outsize[0] = cpu_QX->size[0] + cpu_RU->size[0];
  outsize[1] = cpu_QX->size[1] + cpu_RU->size[1];
  emxInit_real_T(&cpu_y, 2, &xc_emlrtRTEI, true);
  k = cpu_y->size[0] * cpu_y->size[1];
  cpu_y->size[0] = outsize[0];
  cpu_y->size[1] = outsize[1];
  emxEnsureCapacity_real_T(cpu_y, k, &y_emlrtRTEI);
  idfx = outsize[0] * outsize[1] - 1;
  mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
  gpuEmxEnsureCapacity_real_T(cpu_y, &gpu_y, true);
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel27<<<grid, block>>>(idfx, gpu_y);
  }

  if ((cpu_QX->size[0] > 0) && (cpu_QX->size[1] > 0)) {
    idfx = cpu_QX->size[1] - 1;
    idfu = cpu_QX->size[0] - 1;
    numIters = computeNumIters(idfx, idfu);
    mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
    if (QX_needsGpuEnsureCapacity) {
      gpuEmxEnsureCapacity_real_T(cpu_QX, &gpu_QX, !QX_outdatedOnGpu);
    }

    if (QX_outdatedOnGpu) {
      gpuEmxMemcpyCpuToGpu_real_T(&gpu_QX, cpu_QX);
    }

    validLaunchParams = mwValidateLaunchParameters(grid, block);
    if (validLaunchParams) {
      mpcStep_kernel28<<<grid, block>>>(gpu_QX, idfu, idfx, gpu_y, cpu_y->size
        [0U], cpu_QX->size[0U]);
    }
  }

  if ((cpu_RU->size[0] > 0) && (cpu_RU->size[1] > 0)) {
    cpu_info_t = cpu_QX->size[0] + cpu_RU->size[0];
    if (cpu_QX->size[0] + 1 > cpu_info_t) {
      nx = 0;
      cpu_info_t = 0;
    } else {
      nx = cpu_QX->size[0];
    }

    outsize_idx_0 = cpu_QX->size[1] + cpu_RU->size[1];
    if (cpu_QX->size[1] + 1 > outsize_idx_0) {
      idfx = 0;
      outsize_idx_0 = 0;
    } else {
      idfx = cpu_QX->size[1];
    }

    AX[0] = cpu_info_t - nx;
    AX[1] = outsize_idx_0 - idfx;
    numIters = computeNumIters(AX[1] - 1, AX[0] - 1);
    mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
    validLaunchParams = mwValidateLaunchParameters(grid, block);
    if (validLaunchParams) {
      mpcStep_kernel29<<<grid, block>>>(gpu_RU, idfx, nx, AX[0] - 1, AX[1] - 1,
        gpu_y, cpu_y->size[0U], AX[0]);
    }
  }

  b_t = static_cast<uint32_T>(cpu_QX->size[0]) + static_cast<uint32_T>
    (cpu_RU->size[0]);
  m = cpu_QX->size[0] + cpu_RU->size[0];
  emxFree_real_T(&cpu_RU);
  emxFree_real_T(&cpu_QX);
  emxInit_int8_T(&cpu_I, 2, &ad_emlrtRTEI, true);
  k = cpu_I->size[0] * cpu_I->size[1];
  cpu_I->size[0] = static_cast<int32_T>(b_t);
  cpu_I->size[1] = static_cast<int32_T>(b_t);
  emxEnsureCapacity_int8_T(cpu_I, k, &bb_emlrtRTEI);
  idfx = static_cast<int32_T>(b_t) * static_cast<int32_T>(b_t) - 1;
  mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
  gpuEmxEnsureCapacity_int8_T(cpu_I, &gpu_I, true);
  QX_outdatedOnCpu = false;
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel30<<<grid, block>>>(idfx, gpu_I);
  }

  idx_needsGpuEnsureCapacity = false;
  A_powers_needsGpuEnsureCapacity = true;
  if (static_cast<int32_T>(b_t) > 0) {
    for (k = 0; k < m; k++) {
      if (A_powers_needsGpuEnsureCapacity) {
        gpuEmxMemcpyGpuToCpu_int8_T(cpu_I, &gpu_I);
      }

      cpu_I->data[k + cpu_I->size[0] * k] = 1;
      A_powers_needsGpuEnsureCapacity = false;
      idx_needsGpuEnsureCapacity = true;
      QX_outdatedOnCpu = true;
    }
  }

  emxInit_real_T(&cpu_H_mat, 2, &cb_emlrtRTEI, true);
  if ((cpu_y->size[0] == cpu_I->size[0]) && (cpu_y->size[1] == cpu_I->size[1]))
  {
    k = cpu_H_mat->size[0] * cpu_H_mat->size[1];
    cpu_H_mat->size[0] = cpu_y->size[0];
    cpu_H_mat->size[1] = cpu_y->size[1];
    emxEnsureCapacity_real_T(cpu_H_mat, k, &cb_emlrtRTEI);
    idfx = cpu_y->size[0] * cpu_y->size[1] - 1;
    mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
    if (QX_outdatedOnCpu) {
      gpuEmxEnsureCapacity_int8_T(cpu_I, &gpu_I, !idx_needsGpuEnsureCapacity);
    }

    gpuEmxEnsureCapacity_real_T(cpu_H_mat, &gpu_H_mat, true);
    A_powers_outdatedOnGpu = false;
    if (idx_needsGpuEnsureCapacity) {
      gpuEmxMemcpyCpuToGpu_int8_T(&gpu_I, cpu_I);
    }

    validLaunchParams = mwValidateLaunchParameters(grid, block);
    if (validLaunchParams) {
      mpcStep_kernel31<<<grid, block>>>(gpu_I, gpu_y, idfx, gpu_H_mat);
    }

    iv4_needsGpuEnsureCapacity = false;
  } else {
    gpuEmxMemcpyGpuToCpu_real_T(cpu_y, &gpu_y);
    if (A_powers_needsGpuEnsureCapacity) {
      gpuEmxMemcpyGpuToCpu_int8_T(cpu_I, &gpu_I);
    }

    binary_expand_op_2(cpu_H_mat, cpu_y, cpu_I);
    iv4_needsGpuEnsureCapacity = true;
    A_powers_outdatedOnGpu = true;
  }

  emxFree_int8_T(&cpu_I);
  emxFree_real_T(&cpu_y);

  // ===========================================================
  //  2) Cost: J = (Y - r)'Qy_blk(Y - r) + U'RU
  // ===========================================================
  //  Constraints
  outsize[0] = cpu_FX->size[0] + cpu_FU->size[0];
  outsize[1] = cpu_FX->size[1] + cpu_FU->size[1];
  emxInit_int8_T(&cpu_inequality_matrix, 2, &db_emlrtRTEI, true);
  cpu_inequality_matrix->size[0] = outsize[0];
  cpu_inequality_matrix->size[1] = outsize[1];
  idfx = outsize[0] * outsize[1] - 1;
  mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
  gpuEmxEnsureCapacity_int8_T(cpu_inequality_matrix, &gpu_inequality_matrix,
    true);
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel32<<<grid, block>>>(idfx, gpu_inequality_matrix);
  }

  if ((cpu_FX->size[0] > 0) && (cpu_FX->size[1] > 0)) {
    idfx = cpu_FX->size[1] - 1;
    idfu = cpu_FX->size[0] - 1;
    numIters = computeNumIters(idfx, idfu);
    mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
    if (FX_needsGpuEnsureCapacity) {
      gpuEmxEnsureCapacity_int8_T(cpu_FX, &gpu_FX, !FX_outdatedOnGpu);
    }

    if (FX_outdatedOnGpu) {
      gpuEmxMemcpyCpuToGpu_int8_T(&gpu_FX, cpu_FX);
    }

    validLaunchParams = mwValidateLaunchParameters(grid, block);
    if (validLaunchParams) {
      mpcStep_kernel33<<<grid, block>>>(gpu_FX, idfu, idfx,
        gpu_inequality_matrix, cpu_inequality_matrix->size[0U], cpu_FX->size[0U]);
    }
  }

  if ((cpu_FU->size[0] > 0) && (cpu_FU->size[1] > 0)) {
    cpu_info_t = cpu_FX->size[0] + cpu_FU->size[0];
    if (cpu_FX->size[0] + 1 > cpu_info_t) {
      nx = 0;
      cpu_info_t = 0;
    } else {
      nx = cpu_FX->size[0];
    }

    outsize_idx_0 = cpu_FX->size[1] + cpu_FU->size[1];
    if (cpu_FX->size[1] + 1 > outsize_idx_0) {
      idfx = 0;
      outsize_idx_0 = 0;
    } else {
      idfx = cpu_FX->size[1];
    }

    AX[0] = cpu_info_t - nx;
    AX[1] = outsize_idx_0 - idfx;
    numIters = computeNumIters(AX[1] - 1, AX[0] - 1);
    mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
    if (FU_needsGpuEnsureCapacity) {
      gpuEmxEnsureCapacity_int8_T(cpu_FU, &gpu_FU, !FU_outdatedOnGpu);
    }

    if (FU_outdatedOnGpu) {
      gpuEmxMemcpyCpuToGpu_int8_T(&gpu_FU, cpu_FU);
    }

    validLaunchParams = mwValidateLaunchParameters(grid, block);
    if (validLaunchParams) {
      mpcStep_kernel34<<<grid, block>>>(gpu_FU, idfx, nx, AX[0] - 1, AX[1] - 1,
        gpu_inequality_matrix, cpu_inequality_matrix->size[0U], AX[0]);
    }
  }

  emxFree_int8_T(&cpu_FU);
  emxFree_int8_T(&cpu_FX);
  emxInit_int16_T(&cpu_inequality_vector, 1, &eb_emlrtRTEI, true);
  cpu_inequality_vector->size[0] = cpu_gX->size[0] + cpu_gU->size[0];
  idfx = cpu_gX->size[0];
  mwGetLaunchParameters1D(computeNumIters(idfx - 1), &grid, &block, 2147483647U);
  if (gX_needsGpuEnsureCapacity) {
    gpuEmxEnsureCapacity_int16_T(cpu_gX, &gpu_gX, !gX_outdatedOnGpu);
  }

  gpuEmxEnsureCapacity_int16_T(cpu_inequality_vector, &gpu_inequality_vector,
    true);
  if (gX_outdatedOnGpu) {
    gpuEmxMemcpyCpuToGpu_int16_T(&gpu_gX, cpu_gX);
  }

  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel35<<<grid, block>>>(gpu_gX, idfx - 1, gpu_inequality_vector);
  }

  idfx = cpu_gU->size[0];
  mwGetLaunchParameters1D(computeNumIters(idfx - 1), &grid, &block, 2147483647U);
  if (gU_needsGpuEnsureCapacity) {
    gpuEmxEnsureCapacity_int16_T(cpu_gU, &gpu_gU, !gU_outdatedOnGpu);
  }

  if (gU_outdatedOnGpu) {
    gpuEmxMemcpyCpuToGpu_int16_T(&gpu_gU, cpu_gU);
  }

  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel36<<<grid, block>>>(gpu_gU, idfx - 1, gpu_inequality_vector,
      cpu_gX->size[0U]);
  }

  emxFree_int16_T(&cpu_gU);
  emxFree_int16_T(&cpu_gX);
  m = static_cast<int32_T>(prediction_horizon + 1.0);
  emxInit_int8_T(&b_cpu_I, 2, &dd_emlrtRTEI, true);
  k = b_cpu_I->size[0] * b_cpu_I->size[1];
  b_cpu_I->size[0] = static_cast<int32_T>(prediction_horizon + 1.0);
  b_cpu_I->size[1] = static_cast<int32_T>(prediction_horizon + 1.0);
  emxEnsureCapacity_int8_T(b_cpu_I, k, &bb_emlrtRTEI);
  idfx = static_cast<int32_T>(prediction_horizon + 1.0) * static_cast<int32_T>
    (prediction_horizon + 1.0) - 1;
  mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
  gpuEmxEnsureCapacity_int8_T(b_cpu_I, &b_gpu_I, true);
  QX_outdatedOnCpu = false;
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel37<<<grid, block>>>(idfx, b_gpu_I);
  }

  idx_needsGpuEnsureCapacity = false;
  A_powers_needsGpuEnsureCapacity = true;
  if (static_cast<int32_T>(prediction_horizon + 1.0) > 0) {
    for (k = 0; k < m; k++) {
      if (A_powers_needsGpuEnsureCapacity) {
        gpuEmxMemcpyGpuToCpu_int8_T(b_cpu_I, &b_gpu_I);
      }

      b_cpu_I->data[k + b_cpu_I->size[0] * k] = 1;
      A_powers_needsGpuEnsureCapacity = false;
      idx_needsGpuEnsureCapacity = true;
      QX_outdatedOnCpu = true;
    }
  }

  emxInit_real_T(&cpu_varargin_2, 2, &fb_emlrtRTEI, true);
  cpu_varargin_2->size[0] = cpu_BU->size[0];
  cpu_varargin_2->size[1] = cpu_BU->size[1];
  idfx = cpu_BU->size[0] * cpu_BU->size[1] - 1;
  mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
  gpuEmxEnsureCapacity_real_T(cpu_varargin_2, &gpu_varargin_2, true);
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel38<<<grid, block>>>(gpu_BU, idfx, gpu_varargin_2);
  }

  emxFree_real_T(&cpu_BU);
  if ((b_cpu_I->size[0] != 0) && (b_cpu_I->size[1] != 0)) {
    nx = b_cpu_I->size[0];
  } else if ((cpu_varargin_2->size[0] != 0) && (cpu_varargin_2->size[1] != 0)) {
    nx = cpu_varargin_2->size[0];
  } else {
    nx = b_cpu_I->size[0];
    if (cpu_varargin_2->size[0] > b_cpu_I->size[0]) {
      nx = cpu_varargin_2->size[0];
    }
  }

  empty_non_axis_sizes = (nx == 0);
  if (empty_non_axis_sizes || ((b_cpu_I->size[0] != 0) && (b_cpu_I->size[1] != 0)))
  {
    input_sizes[1] = b_cpu_I->size[1];
  } else {
    input_sizes[1] = 0;
  }

  if (empty_non_axis_sizes || ((cpu_varargin_2->size[0] != 0) &&
       (cpu_varargin_2->size[1] != 0))) {
    outsize_idx_0 = cpu_varargin_2->size[1];
  } else {
    outsize_idx_0 = 0;
  }

  AX[0] = nx;
  emxInit_real_T(&cpu_equality_matrix, 2, &gb_emlrtRTEI, true);
  k = cpu_equality_matrix->size[0] * cpu_equality_matrix->size[1];
  cpu_equality_matrix->size[0] = nx;
  cpu_equality_matrix->size[1] = input_sizes[1] + outsize_idx_0;
  emxEnsureCapacity_real_T(cpu_equality_matrix, k, &gb_emlrtRTEI);
  numIters = computeNumIters(input_sizes[1] - 1, nx - 1);
  mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
  if (QX_outdatedOnCpu) {
    gpuEmxEnsureCapacity_int8_T(b_cpu_I, &b_gpu_I, !idx_needsGpuEnsureCapacity);
  }

  gpuEmxEnsureCapacity_real_T(cpu_equality_matrix, &gpu_equality_matrix, true);
  if (idx_needsGpuEnsureCapacity) {
    gpuEmxMemcpyCpuToGpu_int8_T(&b_gpu_I, b_cpu_I);
  }

  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel39<<<grid, block>>>(b_gpu_I, nx, nx - 1, input_sizes[1] - 1,
      gpu_equality_matrix, cpu_equality_matrix->size[0U]);
  }

  emxFree_int8_T(&b_cpu_I);
  numIters = computeNumIters(outsize_idx_0 - 1, nx - 1);
  mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel40<<<grid, block>>>(gpu_varargin_2, input_sizes[1], nx - 1,
      outsize_idx_0 - 1, gpu_equality_matrix, cpu_equality_matrix->size[0U], AX
      [0]);
  }

  idfu_needsGpuEnsureCapacity = true;
  emxFree_real_T(&cpu_varargin_2);

  //  Solve QP (fmincon used here)
  emxInit_real_T(&cpu_a, 2, &hb_emlrtRTEI, true);
  cpu_a->size[0] = cpu_H_mat->size[0];
  cpu_a->size[1] = cpu_H_mat->size[1];
  idfx = cpu_H_mat->size[0] * cpu_H_mat->size[1] - 1;
  mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
  if (A_powers_outdatedOnGpu) {
    gpuEmxEnsureCapacity_real_T(cpu_H_mat, &gpu_H_mat,
      !iv4_needsGpuEnsureCapacity);
  }

  gpuEmxEnsureCapacity_real_T(cpu_a, &gpu_a, true);
  if (iv4_needsGpuEnsureCapacity) {
    gpuEmxMemcpyCpuToGpu_real_T(&gpu_H_mat, cpu_H_mat);
  }

  iv4_needsGpuEnsureCapacity = false;
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel41<<<grid, block>>>(gpu_H_mat, idfx, gpu_a);
  }

  emxInit_real_T(&cpu_f, 1, &jb_emlrtRTEI, true);
  if ((cpu_a->size[0] == 0) || (cpu_a->size[1] == 0) || (cpu_z_ref->size[0] == 0))
  {
    cpu_f->size[0] = cpu_a->size[0];
    idfx = cpu_a->size[0] - 1;
    mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
    gpuEmxEnsureCapacity_real_T(cpu_f, &gpu_f, true);
    validLaunchParams = mwValidateLaunchParameters(grid, block);
    if (validLaunchParams) {
      mpcStep_kernel42<<<grid, block>>>(idfx, gpu_f);
    }
  } else {
    cpu_f->size[0] = cpu_a->size[0];
    absx = 1.0;
    cMin = 0.0;
    gpuEmxEnsureCapacity_real_T(cpu_f, &gpu_f, true);
    cublasDgemm(getCublasGlobalHandle(), CUBLAS_OP_N, CUBLAS_OP_N, cpu_a->size[0],
                1, cpu_a->size[1], (double *)&absx, (double *)&gpu_a.data[0],
                cpu_a->size[0], (double *)&gpu_z_ref.data[0], cpu_a->size[1],
                (double *)&cMin, (double *)&gpu_f.data[0], cpu_a->size[0]);
  }

  emxFree_real_T(&cpu_a);
  emxFree_real_T(&cpu_z_ref);
  n = cpu_H_mat->size[0];
  nx = cpu_H_mat->size[0];
  b_n = cpu_H_mat->size[1];
  if (nx <= b_n) {
    b_n = nx;
  }

  if (b_n != 0) {
    cusolverDnDpotrf_bufferSize(getCuSolverGlobalHandle(),
      CUBLAS_FILL_MODE_LOWER, b_n, (double *)&gpu_H_mat.data[0], cpu_H_mat->
      size[0], getCuSolverWorkspaceReq());
    setCuSolverWorkspaceTypeSize(8);
    cusolverInitWorkspace();
    cusolverDnDpotrf(getCuSolverGlobalHandle(), CUBLAS_FILL_MODE_LOWER, b_n,
                     (double *)&gpu_H_mat.data[0], cpu_H_mat->size[0],
                     static_cast<real_T *>(getCuSolverWorkspaceBuff()),
                     *getCuSolverWorkspaceReq(), gpu_info_t);
    checkCudaError(cudaMemcpy(&cpu_info_t, gpu_info_t, 4ULL,
      cudaMemcpyDeviceToHost), __FILE__, __LINE__);
    if (cpu_info_t < 0) {
      for (idfx = 0; idfx < 2; idfx++) {
        AX[idfx] = cpu_H_mat->size[idfx];
      }

      k = cpu_H_mat->size[0] * cpu_H_mat->size[1];
      cpu_H_mat->size[0] = AX[0];
      cpu_H_mat->size[1] = AX[1];
      emxEnsureCapacity_real_T(cpu_H_mat, k, &kb_emlrtRTEI);
      idfx = AX[0] * AX[1] - 1;
      mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
      gpuEmxEnsureCapacity_real_T(cpu_H_mat, &gpu_H_mat, true);
      validLaunchParams = mwValidateLaunchParameters(grid, block);
      if (validLaunchParams) {
        mpcStep_kernel43<<<grid, block>>>(idfx, gpu_H_mat);
      }
    }

    if (cpu_info_t == 0) {
      idfx = b_n;
    } else {
      idfx = cpu_info_t - 1;
    }

    mwGetLaunchParameters1D(computeNumIters(idfx - 2), &grid, &block,
      2147483647U);
    if (cpu_info_t != 0) {
      b_n = cpu_info_t - 1;
    }

    validLaunchParams = mwValidateLaunchParameters(grid, block);
    if (validLaunchParams) {
      mpcStep_kernel44<<<grid, block>>>(b_n - 2, gpu_H_mat, cpu_H_mat->size[0U]);
    }
  }

  emxInit_int8_T(&c_cpu_I, 2, &ed_emlrtRTEI, true);
  k = c_cpu_I->size[0] * c_cpu_I->size[1];
  c_cpu_I->size[0] = n;
  c_cpu_I->size[1] = n;
  emxEnsureCapacity_int8_T(c_cpu_I, k, &bb_emlrtRTEI);
  idfx = n * n - 1;
  mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
  gpuEmxEnsureCapacity_int8_T(c_cpu_I, &c_gpu_I, true);
  QX_outdatedOnCpu = false;
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel45<<<grid, block>>>(idfx, c_gpu_I);
  }

  idx_needsGpuEnsureCapacity = false;
  A_powers_needsGpuEnsureCapacity = true;
  if (n > 0) {
    for (k = 0; k < n; k++) {
      if (A_powers_needsGpuEnsureCapacity) {
        gpuEmxMemcpyGpuToCpu_int8_T(c_cpu_I, &c_gpu_I);
      }

      c_cpu_I->data[k + c_cpu_I->size[0] * k] = 1;
      A_powers_needsGpuEnsureCapacity = false;
      idx_needsGpuEnsureCapacity = true;
      QX_outdatedOnCpu = true;
    }
  }

  nA = cpu_H_mat->size[1];
  outsize_idx_0 = c_cpu_I->size[1];
  nx = cpu_H_mat->size[0];
  cpu_info_t = cpu_H_mat->size[1];
  if (nx <= cpu_info_t) {
    cpu_info_t = nx;
  }

  emxInit_real_T(&cpu_Linv, 2, &fd_emlrtRTEI, true);
  A_powers_needsGpuEnsureCapacity = false;
  A_powers_outdatedOnGpu = false;
  k = cpu_Linv->size[0] * cpu_Linv->size[1];
  cpu_Linv->size[0] = cpu_H_mat->size[1];
  cpu_Linv->size[1] = c_cpu_I->size[1];
  emxEnsureCapacity_real_T(cpu_Linv, k, &lb_emlrtRTEI);
  A_powers_outdatedOnCpu = true;
  for (lda = 0; lda < outsize_idx_0; lda++) {
    mwGetLaunchParameters1D(computeNumIters(cpu_info_t - 1), &grid, &block,
      2147483647U);
    if (QX_outdatedOnCpu) {
      gpuEmxEnsureCapacity_int8_T(c_cpu_I, &c_gpu_I, !idx_needsGpuEnsureCapacity);
    }

    QX_outdatedOnCpu = false;
    if (A_powers_outdatedOnCpu) {
      gpuEmxEnsureCapacity_real_T(cpu_Linv, &gpu_Linv, true);
    }

    if (idx_needsGpuEnsureCapacity) {
      gpuEmxMemcpyCpuToGpu_int8_T(&c_gpu_I, c_cpu_I);
    }

    idx_needsGpuEnsureCapacity = false;
    validLaunchParams = mwValidateLaunchParameters(grid, block);
    if (validLaunchParams) {
      mpcStep_kernel46<<<grid, block>>>(c_gpu_I, lda + 1, cpu_info_t - 1,
        gpu_Linv, cpu_Linv->size[0U], c_cpu_I->size[0U]);
    }

    b = computeEndIdx(static_cast<int64_T>(cpu_info_t + 1), static_cast<int64_T>
                      (nA), 1LL);
    mwGetLaunchParameters1D(computeNumIters(b), &grid, &block, 2147483647U);
    A_powers_outdatedOnCpu = false;
    validLaunchParams = mwValidateLaunchParameters(grid, block);
    if (validLaunchParams) {
      mpcStep_kernel47<<<grid, block>>>(lda + 1, cpu_info_t + 1, b, gpu_Linv,
        cpu_Linv->size[0U]);
    }

    A_powers_needsGpuEnsureCapacity = true;
  }

  emxFree_int8_T(&c_cpu_I);
  coder::internal::trisolve(cpu_H_mat, &gpu_H_mat, &iv4_needsGpuEnsureCapacity,
    cpu_Linv, &A_powers_needsGpuEnsureCapacity, &gpu_Linv,
    &A_powers_outdatedOnGpu);
  A_powers_outdatedOnCpu = true;
  emxFree_real_T(&cpu_H_mat);
  empty_non_axis_sizes = (cpu_Linv->size[0] == 0);
  ColdReset = (cpu_Linv->size[1] == 0);
  emxInit_real_T(&cpu_d, 1, &mb_emlrtRTEI, true);
  emxInit_boolean_T(&cpu_x, 1, &mb_emlrtRTEI, true);
  guard1 = false;
  guard2 = false;
  if ((!empty_non_axis_sizes) && (!ColdReset)) {
    lda = 0;
    do {
      exitg4 = 0;
      nx = cpu_Linv->size[0];
      outsize_idx_0 = cpu_Linv->size[1];
      if (nx <= outsize_idx_0) {
        outsize_idx_0 = nx;
      }

      if (lda + 1 <= outsize_idx_0) {
        i = 1;
        do {
          exitg3 = 0;
          if (i <= lda) {
            if (A_powers_needsGpuEnsureCapacity) {
              gpuEmxMemcpyGpuToCpu_real_T(cpu_Linv, &gpu_Linv);
            }

            A_powers_needsGpuEnsureCapacity = false;
            if (!(cpu_Linv->data[(i + cpu_Linv->size[0] * lda) - 1] == 0.0)) {
              guard1 = true;
              exitg3 = 1;
            } else {
              i++;
            }
          } else {
            lda++;
            exitg3 = 2;
          }
        } while (exitg3 == 0);

        if (exitg3 == 1) {
          exitg4 = 1;
        }
      } else {
        exitg4 = 2;
      }
    } while (exitg4 == 0);

    if (exitg4 != 1) {
      if (cpu_Linv->size[1] > cpu_Linv->size[0]) {
        lda = cpu_Linv->size[0];
        do {
          exitg2 = 0;
          if (lda + 1 <= cpu_Linv->size[1]) {
            i = 1;
            do {
              exitg1 = 0;
              if (i <= cpu_Linv->size[0]) {
                if (A_powers_needsGpuEnsureCapacity) {
                  gpuEmxMemcpyGpuToCpu_real_T(cpu_Linv, &gpu_Linv);
                }

                A_powers_needsGpuEnsureCapacity = false;
                if (!(cpu_Linv->data[(i + cpu_Linv->size[0] * lda) - 1] == 0.0))
                {
                  guard1 = true;
                  exitg1 = 1;
                } else {
                  i++;
                }
              } else {
                lda++;
                exitg1 = 2;
              }
            } while (exitg1 == 0);

            if (exitg1 == 1) {
              exitg2 = 1;
            }
          } else {
            guard2 = true;
            exitg2 = 1;
          }
        } while (exitg2 == 0);
      } else {
        guard2 = true;
      }
    }
  } else {
    guard2 = true;
  }

  if (guard2) {
    if ((cpu_Linv->size[0] == 1) && (cpu_Linv->size[1] == 1)) {
      cpu_d->size[0] = 1;
      gpuEmxEnsureCapacity_real_T(cpu_Linv, &gpu_Linv, !A_powers_outdatedOnGpu);
      A_powers_outdatedOnCpu = false;
      gpuEmxEnsureCapacity_real_T(cpu_d, &gpu_d, true);
      if (A_powers_outdatedOnGpu) {
        gpuEmxMemcpyCpuToGpu_real_T(&gpu_Linv, cpu_Linv);
      }

      A_powers_outdatedOnGpu = false;
      mpcStep_kernel193<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(gpu_Linv, gpu_d);
    } else {
      nx = cpu_Linv->size[0];
      outsize_idx_0 = cpu_Linv->size[1];
      if (nx <= outsize_idx_0) {
        outsize_idx_0 = nx;
      }

      if (cpu_Linv->size[1] > 0) {
        cpu_info_t = outsize_idx_0;
      } else {
        cpu_info_t = 0;
      }

      cpu_d->size[0] = cpu_info_t;
      mwGetLaunchParameters1D(computeNumIters(cpu_info_t - 1), &grid, &block,
        2147483647U);
      gpuEmxEnsureCapacity_real_T(cpu_Linv, &gpu_Linv, !A_powers_outdatedOnGpu);
      A_powers_outdatedOnCpu = false;
      gpuEmxEnsureCapacity_real_T(cpu_d, &gpu_d, true);
      if (A_powers_outdatedOnGpu) {
        gpuEmxMemcpyCpuToGpu_real_T(&gpu_Linv, cpu_Linv);
      }

      A_powers_outdatedOnGpu = false;
      validLaunchParams = mwValidateLaunchParameters(grid, block);
      if (validLaunchParams) {
        mpcStep_kernel195<<<grid, block>>>(gpu_Linv, cpu_info_t - 1, gpu_d,
          cpu_Linv->size[0U]);
      }
    }

    k = cpu_x->size[0];
    cpu_x->size[0] = cpu_d->size[0];
    emxEnsureCapacity_boolean_T(cpu_x, k, &mb_emlrtRTEI);
    idfx = cpu_d->size[0] - 1;
    mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
    gpuEmxEnsureCapacity_boolean_T(cpu_x, &b_gpu_x, true);
    validLaunchParams = mwValidateLaunchParameters(grid, block);
    if (validLaunchParams) {
      mpcStep_kernel194<<<grid, block>>>(gpu_d, idfx, b_gpu_x);
    }

    A_powers_needsGpuEnsureCapacity = true;
    empty_non_axis_sizes = true;
    outsize_idx_0 = 1;
    exitg5 = false;
    while ((!exitg5) && (outsize_idx_0 <= cpu_x->size[0])) {
      if (A_powers_needsGpuEnsureCapacity) {
        gpuEmxMemcpyGpuToCpu_boolean_T(cpu_x, &b_gpu_x);
      }

      A_powers_needsGpuEnsureCapacity = false;
      if (!cpu_x->data[outsize_idx_0 - 1]) {
        empty_non_axis_sizes = false;
        exitg5 = true;
      } else {
        outsize_idx_0++;
      }
    }

    if (!empty_non_axis_sizes) {
      guard1 = true;
    }
  }

  if (guard1) {
    y = nullptr;
    b_m = emlrtCreateCharArray(2, &iv18[0]);
    emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 25, b_m, &varargin_1[0]);
    emlrtAssign(&y, b_m);
    b_y = nullptr;
    m3 = emlrtCreateCharArray(2, &iv21[0]);
    emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 40, m3, &varargin_2[0]);
    emlrtAssign(&b_y, m3);
    b_error(y, b_y, &emlrtMCI);
  }

  emxFree_boolean_T(&cpu_x);
  emxFree_real_T(&cpu_d);
  if ((cpu_equality_matrix->size[0] != 0) && (cpu_equality_matrix->size[1] != 0))
  {
    if (cpu_equality_matrix->size[0] > n) {
      c_y = nullptr;
      m1 = emlrtCreateCharArray(2, &iv19[0]);
      emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 36, m1, &b_varargin_1[0]);
      emlrtAssign(&c_y, m1);
      e_y = nullptr;
      m4 = emlrtCreateCharArray(2, &iv22[0]);
      emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 111, m4, &b_varargin_2[0]);
      emlrtAssign(&e_y, m4);
      b_error(c_y, e_y, emlrt_marshallOut(static_cast<real_T>
               (cpu_equality_matrix->size[0])), emlrt_marshallOut
              (static_cast<real_T>(n)), &emlrtMCI);
    }

    cpu_info_t = 0;
    nx = cpu_equality_matrix->size[0] * cpu_equality_matrix->size[1];
    empty_non_axis_sizes = true;
    for (k = 0; k < nx; k++) {
      if (empty_non_axis_sizes) {
        if (idfu_needsGpuEnsureCapacity) {
          gpuEmxMemcpyGpuToCpu_real_T(cpu_equality_matrix, &gpu_equality_matrix);
        }

        idfu_needsGpuEnsureCapacity = false;
        if (std::isinf(cpu_equality_matrix->data[k]) || std::isnan
            (cpu_equality_matrix->data[k])) {
          empty_non_axis_sizes = false;
        }
      } else {
        empty_non_axis_sizes = false;
      }
    }

    emxInit_real_T(&cpu_s, 1, &gd_emlrtRTEI, true);
    if (empty_non_axis_sizes) {
      if (cpu_equality_matrix->size[0] >= cpu_equality_matrix->size[1]) {
        emxInit_real_T(&c_cpu_A, 2, &qb_emlrtRTEI, true);
        c_cpu_A->size[0] = cpu_equality_matrix->size[0];
        c_cpu_A->size[1] = cpu_equality_matrix->size[1];
        idfx = cpu_equality_matrix->size[0] * cpu_equality_matrix->size[1] - 1;
        mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
          2147483647U);
        gpuEmxEnsureCapacity_real_T(c_cpu_A, &gpu_A, true);
        validLaunchParams = mwValidateLaunchParameters(grid, block);
        if (validLaunchParams) {
          mpcStep_kernel48<<<grid, block>>>(gpu_equality_matrix, idfx, gpu_A);
        }

        nx = cpu_equality_matrix->size[1];
        outsize_idx_0 = cpu_equality_matrix->size[0];
        if (nx <= outsize_idx_0) {
          outsize_idx_0 = nx;
        }

        k = cpu_s->size[0];
        cpu_s->size[0] = outsize_idx_0;
        emxEnsureCapacity_real_T(cpu_s, k, &sb_emlrtRTEI);
        emxInit_real_T(&cpu_superb, 1, &sb_emlrtRTEI, true);
        if (outsize_idx_0 > 1) {
          cpu_superb->size[0] = outsize_idx_0 - 1;
        } else {
          cpu_superb->size[0] = 1;
        }

        cusolverDnDgesvd_bufferSize(getCuSolverGlobalHandle(),
          cpu_equality_matrix->size[0], cpu_equality_matrix->size[1],
          getCuSolverWorkspaceReq());
        setCuSolverWorkspaceTypeSize(8);
        cusolverInitWorkspace();
        gpuEmxEnsureCapacity_real_T(cpu_s, &gpu_s, true);
        gpuEmxEnsureCapacity_real_T(cpu_superb, &gpu_superb, true);
        cusolverDnDgesvd(getCuSolverGlobalHandle(), 'N', 'N',
                         cpu_equality_matrix->size[0], cpu_equality_matrix->
                         size[1], (double *)&gpu_A.data[0],
                         cpu_equality_matrix->size[0], &gpu_s.data[0], nullptr,
                         1, nullptr, 1, static_cast<real_T *>
                         (getCuSolverWorkspaceBuff()), *getCuSolverWorkspaceReq(),
                         &gpu_superb.data[0], gpu_ii);
        A_powers_needsGpuEnsureCapacity = true;
        emxFree_real_T(&cpu_superb);
        emxFree_real_T(&c_cpu_A);
        checkCudaError(cudaMemcpy(&cpu_ii, gpu_ii, 4ULL, cudaMemcpyDeviceToHost),
                       __FILE__, __LINE__);
        if (cpu_ii < 0) {
          s[0] = cpu_s->size[0];
          k = cpu_s->size[0];
          cpu_s->size[0] = s[0];
          emxEnsureCapacity_real_T(cpu_s, k, &sb_emlrtRTEI);
          mwGetLaunchParameters1D(computeNumIters(s[0] - 1), &grid, &block,
            2147483647U);
          gpuEmxEnsureCapacity_real_T(cpu_s, &gpu_s, true);
          validLaunchParams = mwValidateLaunchParameters(grid, block);
          if (validLaunchParams) {
            mpcStep_kernel49<<<grid, block>>>(s[0] - 1, gpu_s);
          }
        }
      } else {
        ptrdiff_t info_t;
        emxInit_real_T(&b_cpu_A, 2, &pb_emlrtRTEI, true);
        k = b_cpu_A->size[0] * b_cpu_A->size[1];
        b_cpu_A->size[0] = cpu_equality_matrix->size[0];
        b_cpu_A->size[1] = cpu_equality_matrix->size[1];
        emxEnsureCapacity_real_T(b_cpu_A, k, &pb_emlrtRTEI);
        idfx = cpu_equality_matrix->size[0] * cpu_equality_matrix->size[1] - 1;
        mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
          2147483647U);
        gpuEmxEnsureCapacity_real_T(b_cpu_A, &i_gpu_A, true);
        validLaunchParams = mwValidateLaunchParameters(grid, block);
        if (validLaunchParams) {
          mpcStep_kernel190<<<grid, block>>>(gpu_equality_matrix, idfx, i_gpu_A);
        }

        nx = cpu_equality_matrix->size[1];
        outsize_idx_0 = cpu_equality_matrix->size[0];
        if (nx <= outsize_idx_0) {
          outsize_idx_0 = nx;
        }

        k = cpu_s->size[0];
        cpu_s->size[0] = outsize_idx_0;
        emxEnsureCapacity_real_T(cpu_s, k, &tb_emlrtRTEI);
        emxInit_real_T(&superb, 1, &id_emlrtRTEI, true);
        if (outsize_idx_0 > 1) {
          k = superb->size[0];
          superb->size[0] = outsize_idx_0 - 1;
          emxEnsureCapacity_real_T(superb, k, &wb_emlrtRTEI);
        } else {
          k = superb->size[0];
          superb->size[0] = 1;
          emxEnsureCapacity_real_T(superb, k, &vb_emlrtRTEI);
        }

        gpuEmxMemcpyGpuToCpu_real_T(b_cpu_A, &i_gpu_A);
        info_t = LAPACKE_dgesvd(102, 'N', 'N', (ptrdiff_t)
          cpu_equality_matrix->size[0], (ptrdiff_t)cpu_equality_matrix->size[1],
          &b_cpu_A->data[0], (ptrdiff_t)cpu_equality_matrix->size[0],
          &cpu_s->data[0], nullptr, (ptrdiff_t)1, nullptr, (ptrdiff_t)1,
          &superb->data[0]);
        A_powers_needsGpuEnsureCapacity = false;
        emxFree_real_T(&superb);
        emxFree_real_T(&b_cpu_A);
        if ((int32_T)info_t < 0) {
          s[0] = cpu_s->size[0];
          k = cpu_s->size[0];
          cpu_s->size[0] = s[0];
          emxEnsureCapacity_real_T(cpu_s, k, &xb_emlrtRTEI);
          mwGetLaunchParameters1D(computeNumIters(s[0] - 1), &grid, &block,
            2147483647U);
          gpuEmxEnsureCapacity_real_T(cpu_s, &gpu_s, true);
          validLaunchParams = mwValidateLaunchParameters(grid, block);
          if (validLaunchParams) {
            mpcStep_kernel191<<<grid, block>>>(s[0] - 1, gpu_s);
          }

          A_powers_needsGpuEnsureCapacity = true;
        }
      }
    } else {
      k = static_cast<int32_T>(std::fmin(static_cast<real_T>
        (cpu_equality_matrix->size[0]), static_cast<real_T>
        (cpu_equality_matrix->size[1])));
      nx = cpu_s->size[0];
      cpu_s->size[0] = k;
      emxEnsureCapacity_real_T(cpu_s, nx, &ob_emlrtRTEI);
      mwGetLaunchParameters1D(computeNumIters(k - 1), &grid, &block, 2147483647U);
      gpuEmxEnsureCapacity_real_T(cpu_s, &gpu_s, true);
      validLaunchParams = mwValidateLaunchParameters(grid, block);
      if (validLaunchParams) {
        mpcStep_kernel192<<<grid, block>>>(k - 1, gpu_s);
      }

      A_powers_needsGpuEnsureCapacity = true;
    }

    if (A_powers_needsGpuEnsureCapacity) {
      gpuEmxMemcpyGpuToCpu_real_T(cpu_s, &gpu_s);
    }

    absx = std::abs(cpu_s->data[0]);
    if (std::isinf(absx) || std::isnan(absx)) {
      absx = rtNaN;
    } else if (absx < 4.4501477170144028E-308) {
      absx = 4.94065645841247E-324;
    } else {
      std::frexp(absx, &mmi);
      absx = std::ldexp(1.0, mmi - 53);
    }

    nx = cpu_equality_matrix->size[0];
    outsize_idx_0 = cpu_equality_matrix->size[1];
    if (nx >= outsize_idx_0) {
      outsize_idx_0 = nx;
    }

    absx *= static_cast<real_T>(outsize_idx_0);
    i = 0;
    exitg5 = false;
    while ((!exitg5) && (i <= cpu_s->size[0] - 1)) {
      if (std::isinf(cpu_s->data[i]) || std::isnan(cpu_s->data[i])) {
        absx = 1.7976931348623157E+308;
        exitg5 = true;
      } else {
        i++;
      }
    }

    k = 1;
    while ((k <= cpu_s->size[0]) && (cpu_s->data[k - 1] > absx)) {
      cpu_info_t++;
      k++;
    }

    emxFree_real_T(&cpu_s);
    if (cpu_info_t < cpu_equality_matrix->size[0]) {
      g_y = nullptr;
      m6 = emlrtCreateCharArray(2, &iv24[0]);
      emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 27, m6, &d_varargin_1[0]);
      emlrtAssign(&g_y, m6);
      h_y = nullptr;
      m7 = emlrtCreateCharArray(2, &iv25[0]);
      emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 127, m7, &d_varargin_2[0]);
      emlrtAssign(&h_y, m7);
      b_error(g_y, h_y, emlrt_marshallOut(static_cast<real_T>(cpu_info_t)),
              emlrt_marshallOut(static_cast<real_T>(cpu_equality_matrix->size[0])),
              &emlrtMCI);
    }
  }

  if (cpu_equality_matrix->size[0] > n) {
    d_y = nullptr;
    m2 = emlrtCreateCharArray(2, &iv20[0]);
    emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 36, m2, &c_varargin_1[0]);
    emlrtAssign(&d_y, m2);
    f_y = nullptr;
    m5 = emlrtCreateCharArray(2, &iv23[0]);
    emlrtInitCharArrayR2013a(emlrtRootTLSGlobal, 205, m5, &c_varargin_2[0]);
    emlrtAssign(&f_y, m5);
    b_error(d_y, f_y, emlrt_marshallOut(0.0), emlrt_marshallOut
            (static_cast<real_T>(cpu_equality_matrix->size[0])),
            emlrt_marshallOut(static_cast<real_T>(cpu_equality_matrix->size[0])),
            emlrt_marshallOut(static_cast<real_T>(n)), &emlrtMCI);
  }

  emxInit_real_T(&cpu_A, 2, &nb_emlrtRTEI, true);
  cpu_A->size[0] = cpu_Linv->size[1];
  cpu_A->size[1] = cpu_Linv->size[0];
  idfu = cpu_Linv->size[0] - 1;
  idfx = cpu_Linv->size[1] - 1;
  numIters = computeNumIters(idfu, idfx);
  mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
  if (A_powers_outdatedOnCpu) {
    gpuEmxEnsureCapacity_real_T(cpu_Linv, &gpu_Linv, !A_powers_outdatedOnGpu);
  }

  gpuEmxEnsureCapacity_real_T(cpu_A, &b_gpu_A, true);
  if (A_powers_outdatedOnGpu) {
    gpuEmxMemcpyCpuToGpu_real_T(&gpu_Linv, cpu_Linv);
  }

  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel50<<<grid, block>>>(gpu_Linv, idfx, idfu, b_gpu_A, cpu_A->
      size[0U], cpu_Linv->size[0U]);
  }

  emxInit_real_T(&cpu_Hinv, 2, &rb_emlrtRTEI, true);
  if ((cpu_A->size[0] == 0) || (cpu_A->size[1] == 0) || (cpu_Linv->size[0] == 0)
      || (cpu_Linv->size[1] == 0)) {
    cpu_Hinv->size[0] = cpu_A->size[0];
    cpu_Hinv->size[1] = cpu_Linv->size[1];
    idfx = cpu_A->size[0] * cpu_Linv->size[1] - 1;
    mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
    gpuEmxEnsureCapacity_real_T(cpu_Hinv, &gpu_Hinv, true);
    validLaunchParams = mwValidateLaunchParameters(grid, block);
    if (validLaunchParams) {
      mpcStep_kernel51<<<grid, block>>>(idfx, gpu_Hinv);
    }
  } else {
    cpu_Hinv->size[0] = cpu_A->size[0];
    cpu_Hinv->size[1] = cpu_Linv->size[1];
    absx = 1.0;
    cMin = 0.0;
    gpuEmxEnsureCapacity_real_T(cpu_Hinv, &gpu_Hinv, true);
    cublasDgemm(getCublasGlobalHandle(), CUBLAS_OP_N, CUBLAS_OP_N, cpu_A->size[0],
                cpu_Linv->size[1], cpu_A->size[1], (double *)&absx, (double *)
                &b_gpu_A.data[0], cpu_A->size[0], (double *)&gpu_Linv.data[0],
                cpu_A->size[1], (double *)&cMin, (double *)&gpu_Hinv.data[0],
                cpu_A->size[0]);
  }

  emxFree_real_T(&cpu_A);
  emxInit_real_T(&cpu_result, 2, &hd_emlrtRTEI, true);
  emxInit_int8_T(&cpu_varargin_1, 2, &ub_emlrtRTEI, true);
  cpu_varargin_1->size[0] = cpu_inequality_matrix->size[0];
  cpu_varargin_1->size[1] = cpu_inequality_matrix->size[1];
  idfx = cpu_inequality_matrix->size[0] * cpu_inequality_matrix->size[1] - 1;
  mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
  gpuEmxEnsureCapacity_int8_T(cpu_varargin_1, &gpu_varargin_1, true);
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel52<<<grid, block>>>(gpu_inequality_matrix, idfx,
      gpu_varargin_1);
  }

  if ((cpu_varargin_1->size[0] != 0) && (cpu_varargin_1->size[1] != 0)) {
    nx = cpu_varargin_1->size[1];
  } else if ((cpu_equality_matrix->size[0] != 0) && (cpu_equality_matrix->size[1]
              != 0)) {
    nx = cpu_equality_matrix->size[1];
  } else {
    nx = cpu_varargin_1->size[1];
    if (cpu_equality_matrix->size[1] > cpu_varargin_1->size[1]) {
      nx = cpu_equality_matrix->size[1];
    }
  }

  empty_non_axis_sizes = (nx == 0);
  if (empty_non_axis_sizes || ((cpu_varargin_1->size[0] != 0) &&
       (cpu_varargin_1->size[1] != 0))) {
    outsize_idx_0 = cpu_varargin_1->size[0];
  } else {
    outsize_idx_0 = 0;
  }

  if (empty_non_axis_sizes || ((cpu_equality_matrix->size[0] != 0) &&
       (cpu_equality_matrix->size[1] != 0))) {
    cpu_info_t = cpu_equality_matrix->size[0];
  } else {
    cpu_info_t = 0;
  }

  AX[0] = cpu_info_t;
  k = cpu_result->size[0] * cpu_result->size[1];
  cpu_result->size[0] = outsize_idx_0 + cpu_info_t;
  cpu_result->size[1] = nx;
  emxEnsureCapacity_real_T(cpu_result, k, &yb_emlrtRTEI);
  numIters = computeNumIters(nx - 1, outsize_idx_0 - 1);
  mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
  gpuEmxEnsureCapacity_real_T(cpu_result, &gpu_result, true);
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel53<<<grid, block>>>(gpu_varargin_1, outsize_idx_0,
      outsize_idx_0 - 1, nx - 1, gpu_result, cpu_result->size[0U]);
  }

  emxFree_int8_T(&cpu_varargin_1);
  numIters = computeNumIters(nx - 1, cpu_info_t - 1);
  mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel54<<<grid, block>>>(gpu_equality_matrix, outsize_idx_0,
      cpu_info_t - 1, nx - 1, gpu_result, cpu_result->size[0U], AX[0]);
  }

  FX_outdatedOnGpu = true;
  emxInit_real_T(&cpu_b, 1, &ac_emlrtRTEI, true);
  k = cpu_b->size[0];
  cpu_b->size[0] = cpu_inequality_vector->size[0] + cpu_AX->size[0];
  emxEnsureCapacity_real_T(cpu_b, k, &ac_emlrtRTEI);
  idfx = cpu_inequality_vector->size[0];
  mwGetLaunchParameters1D(computeNumIters(idfx - 1), &grid, &block, 2147483647U);
  gpuEmxEnsureCapacity_real_T(cpu_b, &gpu_b, true);
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel55<<<grid, block>>>(gpu_inequality_vector, idfx - 1, gpu_b);
  }

  idfx = cpu_AX->size[0];
  mwGetLaunchParameters1D(computeNumIters(idfx - 1), &grid, &block, 2147483647U);
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel56<<<grid, block>>>(v_meas, gpu_AX, idfx - 1, gpu_b,
      cpu_inequality_vector->size[0U]);
  }

  gX_needsGpuEnsureCapacity = true;
  emxFree_real_T(&cpu_AX);
  emxInit_boolean_T(&cpu_iA, 1, &jd_emlrtRTEI, true);
  k = cpu_iA->size[0];
  cpu_iA->size[0] = cpu_inequality_vector->size[0] + cpu_equality_matrix->size[0];
  emxEnsureCapacity_boolean_T(cpu_iA, k, &bc_emlrtRTEI);
  idfx = cpu_inequality_vector->size[0];
  mwGetLaunchParameters1D(computeNumIters(idfx - 1), &grid, &block, 2147483647U);
  gpuEmxEnsureCapacity_boolean_T(cpu_iA, &gpu_iA, true);
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel57<<<grid, block>>>(idfx - 1, gpu_iA);
  }

  idfx = cpu_equality_matrix->size[0];
  mwGetLaunchParameters1D(computeNumIters(idfx - 1), &grid, &block, 2147483647U);
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel58<<<grid, block>>>(idfx - 1, gpu_iA,
      cpu_inequality_vector->size[0U]);
  }

  gX_outdatedOnGpu = true;
  emxFree_int16_T(&cpu_inequality_vector);
  b_t = static_cast<uint32_T>(cpu_inequality_matrix->size[0]) +
    static_cast<uint32_T>(cpu_equality_matrix->size[0]);
  emxFree_int8_T(&cpu_inequality_matrix);
  if (b_t > 2147483647U) {
    b_t = 2147483647U;
  }

  m = static_cast<int32_T>(b_t);
  meq = cpu_equality_matrix->size[0];
  emxFree_real_T(&cpu_equality_matrix);
  emxInit_real_T(&cpu_z_solution, 1, &kd_emlrtRTEI, true);
  k = cpu_z_solution->size[0];
  cpu_z_solution->size[0] = n;
  emxEnsureCapacity_real_T(cpu_z_solution, k, &cc_emlrtRTEI);
  mwGetLaunchParameters1D(computeNumIters(n - 1), &grid, &block, 2147483647U);
  gpuEmxEnsureCapacity_real_T(cpu_z_solution, &gpu_z_solution, true);
  FU_needsGpuEnsureCapacity = false;
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel59<<<grid, block>>>(n - 1, gpu_z_solution);
  }

  FU_outdatedOnGpu = false;
  gU_needsGpuEnsureCapacity = true;
  emxInit_real_T(&cpu_lam, 1, &jd_emlrtRTEI, true);
  k = cpu_lam->size[0];
  cpu_lam->size[0] = static_cast<int32_T>(b_t);
  emxEnsureCapacity_real_T(cpu_lam, k, &cc_emlrtRTEI);
  mwGetLaunchParameters1D(computeNumIters(static_cast<int32_T>(b_t) - 1), &grid,
    &block, 2147483647U);
  gpuEmxEnsureCapacity_real_T(cpu_lam, &gpu_lam, true);
  validLaunchParams = mwValidateLaunchParameters(grid, block);
  if (validLaunchParams) {
    mpcStep_kernel60<<<grid, block>>>(static_cast<int32_T>(b_t) - 1, gpu_lam);
  }

  gU_outdatedOnGpu = true;
  exitflag = 1;
  emxInit_real_T(&cpu_r, 1, &cc_emlrtRTEI, true);
  emxInit_real_T(&cpu_RLinv, 2, &cc_emlrtRTEI, true);
  emxInit_real_T(&b_cpu_a, 2, &cc_emlrtRTEI, true);
  emxInit_real_T(&cpu_D, 2, &cc_emlrtRTEI, true);
  emxInit_real_T(&cpu_H, 2, &cc_emlrtRTEI, true);
  emxInit_real_T(&U, 2, &cc_emlrtRTEI, true);
  emxInit_real_T(&cpu_cTol, 1, &cc_emlrtRTEI, true);
  emxInit_int32_T(&cpu_iC, 1, &cc_emlrtRTEI, true);
  emxInit_real_T(&cpu_Opt, 1, &cc_emlrtRTEI, true);
  emxInit_real_T(&cpu_Rhs, 1, &cc_emlrtRTEI, true);
  emxInit_real_T(&c_cpu_a, 2, &cc_emlrtRTEI, true);
  emxInit_real_T(&cpu_TL, 2, &cc_emlrtRTEI, true);
  emxInit_real_T(&b_cpu_x, 2, &cc_emlrtRTEI, true);
  emxInit_real_T(&d_cpu_a, 2, &cc_emlrtRTEI, true);
  emxInit_real_T(&e_cpu_a, 2, &cc_emlrtRTEI, true);
  emxInit_real_T(&b_cpu_y, 2, &cc_emlrtRTEI, true);
  emxInit_real_T(&d_cpu_A, 2, &jd_emlrtRTEI, true);
  emxInit_real_T(&cpu_AcRow, 2, &cc_emlrtRTEI, true);
  emxInit_real_T(&cpu_B, 1, &ec_emlrtRTEI, true);
  emxInit_real_T(&b_cpu_TL, 2, &cc_emlrtRTEI, true);
  emxInit_real_T(&b_cpu_B, 1, &ec_emlrtRTEI, true);
  emxInit_real_T(&cpu_Q, 2, &jd_emlrtRTEI, true);
  emxInit_real_T(&cpu_R, 2, &jd_emlrtRTEI, true);
  emxInit_real_T(&c_cpu_y, 1, &cc_emlrtRTEI, true);
  emxInit_real_T(&cpu_dv, 1, &cc_emlrtRTEI, true);
  emxInit_real_T(&e_cpu_A, 2, &jd_emlrtRTEI, true);
  emxInit_real_T(&cpu_z, 1, &cc_emlrtRTEI, true);
  emxInit_real_T(&c_cpu_B, 1, &ec_emlrtRTEI, true);
  emxInit_real_T(&b_cpu_Q, 2, &jd_emlrtRTEI, true);
  emxInit_real_T(&b_cpu_R, 2, &jd_emlrtRTEI, true);
  emxInit_real_T(&cpu_tau, 1, &jd_emlrtRTEI, true);
  emxInit_real_T(&cpu_dv1, 1, &cc_emlrtRTEI, true);
  emxInit_real_T(&b_cpu_tau, 1, &jd_emlrtRTEI, true);
  emxInit_real_T(&c_cpu_tau, 1, &jd_emlrtRTEI, true);
  emxInit_real_T(&f_cpu_A, 2, &nb_emlrtRTEI, true);
  emxInit_real_T(&d_cpu_B, 1, &ec_emlrtRTEI, true);
  emxInit_real_T(&d_cpu_tau, 1, &jd_emlrtRTEI, true);
  emxInit_real_T(&cpu_work, 1, &lc_emlrtRTEI, true);
  emxInit_real_T(&b_cpu_work, 1, &lc_emlrtRTEI, true);
  emxInit_real_T(&c_cpu_work, 1, &lc_emlrtRTEI, true);
  emxInit_real_T(&d_cpu_work, 1, &lc_emlrtRTEI, true);
  emxInit_real_T(&b_cpu_b, 1, &cc_emlrtRTEI, true);
  emxInit_real_T(&g_cpu_A, 2, &nb_emlrtRTEI, true);
  emxInit_real_T(&f_cpu_a, 2, &cc_emlrtRTEI, true);
  emxInit_real_T(&c_cpu_b, 1, &cc_emlrtRTEI, true);
  emxInit_real_T(&d_cpu_b, 1, &oc_emlrtRTEI, true);
  emxInit_real_T(&h_cpu_A, 2, &nb_emlrtRTEI, true);
  emxInit_real_T(&g_cpu_a, 2, &cc_emlrtRTEI, true);
  emxInit_real_T(&e_cpu_B, 1, &ec_emlrtRTEI, true);
  emxInit_real_T(&e_cpu_b, 1, &oc_emlrtRTEI, true);
  emxInit_real_T(&i_cpu_A, 2, &nb_emlrtRTEI, true);
  emxInit_real_T(&f_cpu_b, 1, &cc_emlrtRTEI, true);
  if (static_cast<int32_T>(b_t) == 0) {
    for (i = 0; i < n; i++) {
      b_cpu_a->size[0] = 1;
      b_cpu_a->size[1] = cpu_Hinv->size[1];
      idfx = cpu_Hinv->size[1] - 1;
      mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
      gpuEmxEnsureCapacity_real_T(b_cpu_a, &b_gpu_a, true);
      validLaunchParams = mwValidateLaunchParameters(grid, block);
      if (validLaunchParams) {
        mpcStep_kernel61<<<grid, block>>>(gpu_Hinv, i, idfx, b_gpu_a,
          cpu_Hinv->size[0U]);
      }

      if (b_cpu_a->size[1] < 1) {
        t = 0.0;
      } else {
        cublasDdot(getCublasGlobalHandle(), b_cpu_a->size[1], (double *)
                   &b_gpu_a.data[0], 1, (double *)&gpu_f.data[0], 1, (double *)
                   &t);
      }

      mpcStep_kernel62<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(t, i,
        gpu_z_solution);
    }
  } else {
    int64_T c;
    real_T cpu_atmp;
    real_T rMin;
    int32_T MaxWSiter;
    int32_T c_n;
    int32_T exitg7;
    int32_T minmn;
    boolean_T D_needsGpuEnsureCapacity;
    boolean_T H_needsGpuEnsureCapacity;
    boolean_T H_outdatedOnGpu;
    boolean_T RLinv_needsGpuEnsureCapacity;
    boolean_T b_guard1;
    boolean_T cTolComputed;
    boolean_T exitg6;
    boolean_T iC_outdatedOnCpu;
    boolean_T r_outdatedOnCpu;
    k = cpu_r->size[0];
    cpu_r->size[0] = n;
    emxEnsureCapacity_real_T(cpu_r, k, &cc_emlrtRTEI);
    mwGetLaunchParameters1D(computeNumIters(n - 1), &grid, &block, 2147483647U);
    gpuEmxEnsureCapacity_real_T(cpu_r, &gpu_r, true);
    validLaunchParams = mwValidateLaunchParameters(grid, block);
    if (validLaunchParams) {
      mpcStep_kernel63<<<grid, block>>>(n - 1, gpu_r);
    }

    r_outdatedOnCpu = true;
    rMin = 0.0;
    k = cpu_RLinv->size[0] * cpu_RLinv->size[1];
    cpu_RLinv->size[0] = cpu_Linv->size[0];
    cpu_RLinv->size[1] = cpu_Linv->size[1];
    emxEnsureCapacity_real_T(cpu_RLinv, k, &cc_emlrtRTEI);
    RLinv_needsGpuEnsureCapacity = true;
    k = cpu_D->size[0] * cpu_D->size[1];
    cpu_D->size[0] = cpu_Linv->size[0];
    cpu_D->size[1] = cpu_Linv->size[1];
    emxEnsureCapacity_real_T(cpu_D, k, &cc_emlrtRTEI);
    D_needsGpuEnsureCapacity = true;
    H_outdatedOnGpu = false;
    k = cpu_H->size[0] * cpu_H->size[1];
    cpu_H->size[0] = cpu_Linv->size[0];
    cpu_H->size[1] = cpu_Linv->size[1];
    emxEnsureCapacity_real_T(cpu_H, k, &cc_emlrtRTEI);
    H_needsGpuEnsureCapacity = true;
    k = U->size[0] * U->size[1];
    U->size[0] = cpu_Linv->size[0];
    U->size[1] = cpu_Linv->size[1];
    emxEnsureCapacity_real_T(U, k, &cc_emlrtRTEI);
    k = cpu_cTol->size[0];
    cpu_cTol->size[0] = static_cast<int32_T>(b_t);
    emxEnsureCapacity_real_T(cpu_cTol, k, &cc_emlrtRTEI);
    cTolComputed = false;
    k = cpu_iC->size[0];
    cpu_iC->size[0] = static_cast<int32_T>(b_t);
    emxEnsureCapacity_int32_T(cpu_iC, k, &cc_emlrtRTEI);
    mwGetLaunchParameters1D(computeNumIters(static_cast<int32_T>(b_t) - 1),
      &grid, &block, 2147483647U);
    gpuEmxEnsureCapacity_int32_T(cpu_iC, &gpu_iC, true);
    gpuEmxEnsureCapacity_real_T(cpu_cTol, &gpu_cTol, true);
    validLaunchParams = mwValidateLaunchParameters(grid, block);
    if (validLaunchParams) {
      mpcStep_kernel64<<<grid, block>>>(static_cast<int32_T>(b_t) - 1, gpu_iC,
        gpu_cTol);
    }

    FX_needsGpuEnsureCapacity = true;
    iC_outdatedOnCpu = true;
    nA = 0;
    for (i = 0; i < m; i++) {
      if (gX_outdatedOnGpu) {
        gpuEmxMemcpyGpuToCpu_boolean_T(cpu_iA, &gpu_iA);
      }

      gX_outdatedOnGpu = false;
      if (cpu_iA->data[i]) {
        if (nA <= 2147483646) {
          nA++;
        }

        if (iC_outdatedOnCpu) {
          gpuEmxMemcpyGpuToCpu_int32_T(cpu_iC, &gpu_iC);
        }

        cpu_iC->data[nA - 1] = i + 1;
        iC_outdatedOnCpu = false;
      }
    }

    b_guard1 = false;
    if (nA > 0) {
      if (n > 1073741823) {
        k = MAX_int32_T;
      } else {
        k = n << 1;
      }

      nx = cpu_Opt->size[0];
      cpu_Opt->size[0] = k;
      emxEnsureCapacity_real_T(cpu_Opt, nx, &cc_emlrtRTEI);
      idfx = 2 * n - 1;
      mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block, 2147483647U);
      gpuEmxEnsureCapacity_real_T(cpu_Opt, &gpu_Opt, true);
      iv5_needsGpuEnsureCapacity = false;
      validLaunchParams = mwValidateLaunchParameters(grid, block);
      if (validLaunchParams) {
        mpcStep_kernel65<<<grid, block>>>(idfx, gpu_Opt);
      }

      iv4_needsGpuEnsureCapacity = false;
      FX_outdatedOnCpu = true;
      k = cpu_Rhs->size[0];
      cpu_Rhs->size[0] = cpu_f->size[0] + n;
      emxEnsureCapacity_real_T(cpu_Rhs, k, &cc_emlrtRTEI);
      idfx = cpu_f->size[0];
      mwGetLaunchParameters1D(computeNumIters(idfx - 1), &grid, &block,
        2147483647U);
      gpuEmxEnsureCapacity_real_T(cpu_Rhs, &gpu_Rhs, true);
      validLaunchParams = mwValidateLaunchParameters(grid, block);
      if (validLaunchParams) {
        mpcStep_kernel66<<<grid, block>>>(gpu_f, idfx - 1, gpu_Rhs);
      }

      mwGetLaunchParameters1D(computeNumIters(n - 1), &grid, &block, 2147483647U);
      QX_needsGpuEnsureCapacity = false;
      validLaunchParams = mwValidateLaunchParameters(grid, block);
      if (validLaunchParams) {
        mpcStep_kernel67<<<grid, block>>>(n - 1, gpu_Rhs, cpu_f->size[0U]);
      }

      QX_outdatedOnGpu = false;
      gX_outdatedOnCpu = true;
      cpu_info_t = static_cast<int32_T>(std::round(0.3 * static_cast<real_T>(nA)));
      if (cpu_info_t <= 5) {
        MaxWSiter = 5;
      } else {
        MaxWSiter = cpu_info_t;
      }

      ColdReset = false;
      do {
        exitg4 = 0;
        if ((nA > 0) && (exitflag <= 200)) {
          idfu_needsGpuEnsureCapacity = false;
          k = cpu_TL->size[0] * cpu_TL->size[1];
          cpu_TL->size[0] = cpu_Linv->size[0];
          cpu_TL->size[1] = cpu_Linv->size[1];
          emxEnsureCapacity_real_T(cpu_TL, k, &cc_emlrtRTEI);
          QX_outdatedOnCpu = true;
          AX[0] = cpu_RLinv->size[0];
          AX[1] = cpu_RLinv->size[1];
          numIters = computeNumIters(AX[1] - 1, AX[0] - 1);
          mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
          if (RLinv_needsGpuEnsureCapacity) {
            gpuEmxEnsureCapacity_real_T(cpu_RLinv, &gpu_RLinv, true);
          }

          RLinv_needsGpuEnsureCapacity = false;
          validLaunchParams = mwValidateLaunchParameters(grid, block);
          if (validLaunchParams) {
            mpcStep_kernel68<<<grid, block>>>(AX[0] - 1, AX[1] - 1, gpu_RLinv,
              cpu_RLinv->size[0U]);
          }

          idxx_needsGpuEnsureCapacity = true;
          for (i = 0; i < nA; i++) {
            if (iC_outdatedOnCpu) {
              gpuEmxMemcpyGpuToCpu_int32_T(cpu_iC, &gpu_iC);
            }

            iC_outdatedOnCpu = false;
            outsize_idx_0 = cpu_iC->data[i];
            cpu_B->size[0] = cpu_result->size[1];
            idfx = cpu_result->size[1] - 1;
            mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
              2147483647U);
            gpuEmxEnsureCapacity_real_T(cpu_B, &gpu_B, true);
            validLaunchParams = mwValidateLaunchParameters(grid, block);
            if (validLaunchParams) {
              mpcStep_kernel69<<<grid, block>>>(gpu_result, outsize_idx_0, idfx,
                gpu_B, cpu_result->size[0U]);
            }

            if ((cpu_Linv->size[0] == 0) || (cpu_Linv->size[1] == 0) ||
                (cpu_B->size[0] == 0)) {
              cpu_dv->size[0] = cpu_Linv->size[0];
              idfu = cpu_Linv->size[0] - 1;
              mwGetLaunchParameters1D(computeNumIters(idfu), &grid, &block,
                2147483647U);
              gpuEmxEnsureCapacity_real_T(cpu_dv, &gpu_dv, true);
              validLaunchParams = mwValidateLaunchParameters(grid, block);
              if (validLaunchParams) {
                mpcStep_kernel70<<<grid, block>>>(idfu, gpu_dv);
              }
            } else {
              cpu_dv->size[0] = cpu_Linv->size[0];
              absx = 1.0;
              cMin = 0.0;
              gpuEmxEnsureCapacity_real_T(cpu_dv, &gpu_dv, true);
              cublasDgemm(getCublasGlobalHandle(), CUBLAS_OP_N, CUBLAS_OP_N,
                          cpu_Linv->size[0], 1, cpu_Linv->size[1], (double *)
                          &absx, (double *)&gpu_Linv.data[0], cpu_Linv->size[0],
                          (double *)&gpu_B.data[0], cpu_Linv->size[1], (double *)
                          &cMin, (double *)&gpu_dv.data[0], cpu_Linv->size[0]);
            }

            s[0] = cpu_RLinv->size[0];
            mwGetLaunchParameters1D(computeNumIters(s[0] - 1), &grid, &block,
              2147483647U);
            validLaunchParams = mwValidateLaunchParameters(grid, block);
            if (validLaunchParams) {
              mpcStep_kernel71<<<grid, block>>>(gpu_dv, i, s[0] - 1, gpu_RLinv,
                cpu_RLinv->size[0U]);
            }
          }

          k = d_cpu_A->size[0] * d_cpu_A->size[1];
          d_cpu_A->size[0] = cpu_RLinv->size[0];
          d_cpu_A->size[1] = cpu_RLinv->size[1];
          emxEnsureCapacity_real_T(d_cpu_A, k, &gc_emlrtRTEI);
          idfx = cpu_RLinv->size[0] * cpu_RLinv->size[1] - 1;
          mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
            2147483647U);
          gpuEmxEnsureCapacity_real_T(d_cpu_A, &c_gpu_A, true);
          A_powers_needsGpuEnsureCapacity = false;
          validLaunchParams = mwValidateLaunchParameters(grid, block);
          if (validLaunchParams) {
            mpcStep_kernel72<<<grid, block>>>(gpu_RLinv, idfx, c_gpu_A);
          }

          A_powers_outdatedOnGpu = false;
          A_powers_outdatedOnCpu = true;
          m = d_cpu_A->size[0];
          b_n = d_cpu_A->size[1];
          k = cpu_Q->size[0] * cpu_Q->size[1];
          cpu_Q->size[0] = d_cpu_A->size[0];
          cpu_Q->size[1] = d_cpu_A->size[0];
          emxEnsureCapacity_real_T(cpu_Q, k, &hc_emlrtRTEI);
          empty_non_axis_sizes = false;
          k = cpu_R->size[0] * cpu_R->size[1];
          cpu_R->size[0] = d_cpu_A->size[0];
          cpu_R->size[1] = d_cpu_A->size[1];
          emxEnsureCapacity_real_T(cpu_R, k, &ic_emlrtRTEI);
          idx_needsGpuEnsureCapacity = true;
          if (d_cpu_A->size[0] > d_cpu_A->size[1]) {
            numIters = computeNumIters(b_n - 1, m - 1);
            mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
            gpuEmxEnsureCapacity_real_T(cpu_Q, &gpu_Q, true);
            validLaunchParams = mwValidateLaunchParameters(grid, block);
            if (validLaunchParams) {
              mpcStep_kernel73<<<grid, block>>>(c_gpu_A, m - 1, b_n - 1, gpu_Q,
                cpu_Q->size[0U], d_cpu_A->size[0U]);
            }

            k = d_cpu_A->size[1] + 1;
            b = computeEndIdx(static_cast<int64_T>(k), static_cast<int64_T>(m),
                              1LL);
            numIters = computeNumIters(b, m - 1);
            mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
            A_powers_needsGpuEnsureCapacity = false;
            validLaunchParams = mwValidateLaunchParameters(grid, block);
            if (validLaunchParams) {
              mpcStep_kernel74<<<grid, block>>>(k, m - 1, b, gpu_Q, cpu_Q->size
                [0U]);
            }

            A_powers_outdatedOnGpu = false;
            A_powers_outdatedOnCpu = true;
            idfu = cpu_Q->size[0];
            c_n = cpu_Q->size[1] - 1;
            nx = cpu_Q->size[0];
            outsize_idx_0 = cpu_Q->size[1];
            if (nx <= outsize_idx_0) {
              outsize_idx_0 = nx;
            }

            k = b_cpu_tau->size[0];
            b_cpu_tau->size[0] = outsize_idx_0;
            emxEnsureCapacity_real_T(b_cpu_tau, k, &jc_emlrtRTEI);
            if ((cpu_Q->size[0] == 0) || (cpu_Q->size[1] == 0)) {
              nx = cpu_Q->size[0];
              outsize_idx_0 = cpu_Q->size[1];
              if (nx <= outsize_idx_0) {
                outsize_idx_0 = nx;
              }

              nx = cpu_Q->size[0];
              minmn = cpu_Q->size[1];
              if (nx <= minmn) {
                minmn = nx;
              }

              k = b_cpu_tau->size[0];
              b_cpu_tau->size[0] = outsize_idx_0;
              emxEnsureCapacity_real_T(b_cpu_tau, k, &kc_emlrtRTEI);
              mwGetLaunchParameters1D(computeNumIters(outsize_idx_0 - 1), &grid,
                &block, 2147483647U);
              gpuEmxEnsureCapacity_real_T(b_cpu_tau, &gpu_tau, true);
              validLaunchParams = mwValidateLaunchParameters(grid, block);
              if (validLaunchParams) {
                mpcStep_kernel75<<<grid, block>>>(outsize_idx_0 - 1, gpu_tau);
              }

              if ((cpu_Q->size[0] != 0) && (cpu_Q->size[1] != 0) && (minmn >= 1))
              {
                lda = cpu_Q->size[0];
                b_cpu_work->size[0] = cpu_Q->size[1];
                idfx = cpu_Q->size[1] - 1;
                mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
                  2147483647U);
                gpuEmxEnsureCapacity_real_T(b_cpu_work, &gpu_work, true);
                validLaunchParams = mwValidateLaunchParameters(grid, block);
                if (validLaunchParams) {
                  mpcStep_kernel94<<<grid, block>>>(idfx, gpu_work);
                }

                for (i = 0; i < minmn; i++) {
                  cpu_ii = i * lda + i;
                  mmi = idfu - i;
                  cpu_info_t = (idfu - i) - 1;
                  if (i + 1 < idfu) {
                    gpuEmxMemcpyGpuToCpu_real_T(cpu_Q, &gpu_Q);
                    cpu_atmp = cpu_Q->data[cpu_ii];
                    mpcStep_kernel95<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(i,
                      gpu_tau);
                    if (mmi > 0) {
                      if (cpu_info_t < 1) {
                        absx = 0.0;
                      } else {
                        cublasDnrm2(getCublasGlobalHandle(), cpu_info_t, (double
                          *)&gpu_Q.data[cpu_ii + 1], 1, (double *)&absx);
                      }

                      if (absx != 0.0) {
                        cMin = rt_hypotd_snf(cpu_Q->data[cpu_ii], absx);
                        if (cpu_Q->data[cpu_ii] >= 0.0) {
                          cMin = -cMin;
                        }

                        if (std::abs(cMin) < 1.0020841800044864E-292) {
                          outsize_idx_0 = 0;
                          do {
                            outsize_idx_0++;
                            if (cpu_info_t >= 1) {
                              t = 9.9792015476736E+291;
                              cublasDscal(getCublasGlobalHandle(), cpu_info_t,
                                          (double *)&t, (double *)
                                          &gpu_Q.data[cpu_ii + 1], 1);
                            }

                            cMin *= 9.9792015476736E+291;
                            cpu_atmp *= 9.9792015476736E+291;
                          } while ((std::abs(cMin) < 1.0020841800044864E-292) &&
                                   (outsize_idx_0 < 20));

                          if (cpu_info_t < 1) {
                            absx = 0.0;
                          } else {
                            cublasDnrm2(getCublasGlobalHandle(), cpu_info_t,
                                        (double *)&gpu_Q.data[cpu_ii + 1], 1,
                                        (double *)&absx);
                          }

                          cMin = rt_hypotd_snf(cpu_atmp, absx);
                          if (cpu_atmp >= 0.0) {
                            cMin = -cMin;
                          }

                          mpcStep_kernel96<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                            (cpu_atmp, cMin, i, gpu_tau);
                          t = 1.0 / (cpu_atmp - cMin);
                          if (cpu_info_t >= 1) {
                            cublasDscal(getCublasGlobalHandle(), cpu_info_t,
                                        (double *)&t, (double *)
                                        &gpu_Q.data[cpu_ii + 1], 1);
                          }

                          for (k = 0; k < outsize_idx_0; k++) {
                            cMin *= 1.0020841800044864E-292;
                          }

                          cpu_atmp = cMin;
                        } else {
                          mpcStep_kernel101<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                            (gpu_Q, cpu_ii, cMin, i, gpu_tau);
                          t = 1.0 / (cpu_Q->data[cpu_ii] - cMin);
                          if (cpu_info_t >= 1) {
                            cublasDscal(getCublasGlobalHandle(), cpu_info_t,
                                        (double *)&t, (double *)
                                        &gpu_Q.data[cpu_ii + 1], 1);
                          }

                          cpu_atmp = cMin;
                        }
                      }
                    }

                    mpcStep_kernel97<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                      (cpu_atmp, cpu_ii, gpu_Q);
                  } else {
                    mpcStep_kernel102<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(i,
                      gpu_tau);
                  }

                  if (i < c_n) {
                    mpcStep_kernel98<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                      (gpu_Q, cpu_ii, gpu_atmp);
                    mpcStep_kernel99<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                      (cpu_ii, gpu_Q);
                    idfx = cpu_ii + lda;
                    gpuEmxMemcpyGpuToCpu_real_T(b_cpu_tau, &gpu_tau);
                    if (b_cpu_tau->data[i] != 0.0) {
                      k = cpu_ii + cpu_info_t;
                      exitg6 = false;
                      while ((!exitg6) && (mmi > 0)) {
                        if (A_powers_outdatedOnCpu) {
                          gpuEmxMemcpyGpuToCpu_real_T(cpu_Q, &gpu_Q);
                        }

                        A_powers_outdatedOnCpu = false;
                        if (cpu_Q->data[k] == 0.0) {
                          mmi--;
                          k--;
                        } else {
                          exitg6 = true;
                        }
                      }

                      outsize_idx_0 = c_n - i;
                      exitg6 = false;
                      while ((!exitg6) && (outsize_idx_0 > 0)) {
                        cpu_info_t = idfx + (outsize_idx_0 - 1) * lda;
                        nx = cpu_info_t + 1;
                        do {
                          exitg7 = 0;
                          if (nx <= cpu_info_t + mmi) {
                            if (A_powers_outdatedOnCpu) {
                              gpuEmxMemcpyGpuToCpu_real_T(cpu_Q, &gpu_Q);
                            }

                            A_powers_outdatedOnCpu = false;
                            if (cpu_Q->data[nx - 1] != 0.0) {
                              exitg7 = 1;
                            } else {
                              nx++;
                            }
                          } else {
                            outsize_idx_0--;
                            exitg7 = 2;
                          }
                        } while (exitg7 == 0);

                        if (exitg7 == 1) {
                          exitg6 = true;
                        }
                      }
                    } else {
                      mmi = 0;
                      outsize_idx_0 = 0;
                    }

                    if (mmi > 0) {
                      if (outsize_idx_0 >= 1) {
                        cMin = 0.0;
                        absx = 1.0;
                        cublasDgemv(getCublasGlobalHandle(), CUBLAS_OP_C, mmi,
                                    outsize_idx_0, (double *)&absx, (double *)
                                    &gpu_Q.data[idfx], lda, (double *)
                                    &gpu_Q.data[cpu_ii], 1, (double *)&cMin,
                                    (double *)&gpu_work.data[0], 1);
                      }

                      absx = -b_cpu_tau->data[i];
                      if (outsize_idx_0 >= 1) {
                        cublasDger(getCublasGlobalHandle(), mmi, outsize_idx_0,
                                   (double *)&absx, (double *)&gpu_Q.data[cpu_ii],
                                   1, (double *)&gpu_work.data[0], 1, (double *)
                                   &gpu_Q.data[idfx], lda);
                      }
                    }

                    mpcStep_kernel100<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                      (gpu_atmp, cpu_ii, gpu_Q);
                    A_powers_outdatedOnCpu = true;
                  }
                }
              }
            } else {
              cusolverDnDgeqrf_bufferSize(getCuSolverGlobalHandle(), cpu_Q->
                size[0], cpu_Q->size[1], (double *)&gpu_Q.data[0], cpu_Q->size[0],
                getCuSolverWorkspaceReq());
              setCuSolverWorkspaceTypeSize(8);
              cusolverInitWorkspace();
              gpuEmxEnsureCapacity_real_T(b_cpu_tau, &gpu_tau, true);
              cusolverDnDgeqrf(getCuSolverGlobalHandle(), cpu_Q->size[0],
                               cpu_Q->size[1], (double *)&gpu_Q.data[0],
                               cpu_Q->size[0], (double *)&gpu_tau.data[0],
                               static_cast<real_T *>(getCuSolverWorkspaceBuff()),
                               *getCuSolverWorkspaceReq(), b_gpu_info);
              checkCudaError(cudaMemcpy(&c_cpu_info, b_gpu_info, 4ULL,
                cudaMemcpyDeviceToHost), __FILE__, __LINE__);
              if (c_cpu_info != 0) {
                for (lda = 0; lda <= c_n; lda++) {
                  for (i = 0; i < idfu; i++) {
                    if (A_powers_outdatedOnCpu) {
                      gpuEmxMemcpyGpuToCpu_real_T(cpu_Q, &gpu_Q);
                    }

                    cpu_Q->data[lda * cpu_Q->size[0] + i] = rtNaN;
                    A_powers_outdatedOnCpu = false;
                    A_powers_outdatedOnGpu = true;
                    A_powers_needsGpuEnsureCapacity = true;
                  }
                }

                nx = cpu_Q->size[0];
                minmn = cpu_Q->size[1];
                if (nx <= minmn) {
                  minmn = nx;
                }

                mwGetLaunchParameters1D(computeNumIters(minmn - 1), &grid,
                  &block, 2147483647U);
                validLaunchParams = mwValidateLaunchParameters(grid, block);
                if (validLaunchParams) {
                  mpcStep_kernel103<<<grid, block>>>(minmn - 1, gpu_tau);
                }

                b = computeEndIdx(static_cast<int64_T>(minmn + 1),
                                  static_cast<int64_T>(outsize_idx_0), 1LL);
                mwGetLaunchParameters1D(computeNumIters(b), &grid, &block,
                  2147483647U);
                validLaunchParams = mwValidateLaunchParameters(grid, block);
                if (validLaunchParams) {
                  mpcStep_kernel104<<<grid, block>>>(minmn + 1, b, gpu_tau);
                }
              }
            }

            for (lda = 0; lda < b_n; lda++) {
              mwGetLaunchParameters1D(computeNumIters(lda), &grid, &block,
                2147483647U);
              if (A_powers_needsGpuEnsureCapacity) {
                gpuEmxEnsureCapacity_real_T(cpu_Q, &gpu_Q,
                  !A_powers_outdatedOnGpu);
              }

              A_powers_needsGpuEnsureCapacity = false;
              if (idx_needsGpuEnsureCapacity) {
                gpuEmxEnsureCapacity_real_T(cpu_R, &gpu_R, true);
              }

              if (A_powers_outdatedOnGpu) {
                gpuEmxMemcpyCpuToGpu_real_T(&gpu_Q, cpu_Q);
              }

              A_powers_outdatedOnGpu = false;
              validLaunchParams = mwValidateLaunchParameters(grid, block);
              if (validLaunchParams) {
                mpcStep_kernel76<<<grid, block>>>(gpu_Q, lda + 1, lda, gpu_R,
                  cpu_R->size[0U], cpu_Q->size[0U]);
              }

              b = computeEndIdx(static_cast<int64_T>(lda + 2),
                                static_cast<int64_T>(m), 1LL);
              mwGetLaunchParameters1D(computeNumIters(b), &grid, &block,
                2147483647U);
              idx_needsGpuEnsureCapacity = false;
              validLaunchParams = mwValidateLaunchParameters(grid, block);
              if (validLaunchParams) {
                mpcStep_kernel77<<<grid, block>>>(lda + 1, lda + 2, b, gpu_R,
                  cpu_R->size[0U]);
              }

              empty_non_axis_sizes = true;
            }

            if ((cpu_Q->size[0] != 0) && (cpu_Q->size[1] != 0)) {
              if (A_powers_needsGpuEnsureCapacity) {
                gpuEmxEnsureCapacity_real_T(cpu_Q, &gpu_Q,
                  !A_powers_outdatedOnGpu);
              }

              if (A_powers_outdatedOnGpu) {
                gpuEmxMemcpyCpuToGpu_real_T(&gpu_Q, cpu_Q);
              }

              cusolverDnDorgqr_bufferSize(getCuSolverGlobalHandle(),
                d_cpu_A->size[0], d_cpu_A->size[0], d_cpu_A->size[1], (double *)
                &gpu_Q.data[0], d_cpu_A->size[0], &gpu_tau.data[0],
                getCuSolverWorkspaceReq());
              setCuSolverWorkspaceTypeSize(8);
              cusolverInitWorkspace();
              A_powers_needsGpuEnsureCapacity = false;
              cusolverDnDorgqr(getCuSolverGlobalHandle(), d_cpu_A->size[0],
                               d_cpu_A->size[0], d_cpu_A->size[1], (double *)
                               &gpu_Q.data[0], d_cpu_A->size[0], &gpu_tau.data[0],
                               static_cast<real_T *>(getCuSolverWorkspaceBuff()),
                               *getCuSolverWorkspaceReq(), gpu_info);
              A_powers_outdatedOnGpu = false;
              checkCudaError(cudaMemcpy(&g_cpu_info, gpu_info, 4ULL,
                cudaMemcpyDeviceToHost), __FILE__, __LINE__);
              if (g_cpu_info != 0) {
                for (idfx = 0; idfx < 2; idfx++) {
                  AX[idfx] = cpu_Q->size[idfx];
                }

                k = cpu_Q->size[0] * cpu_Q->size[1];
                cpu_Q->size[0] = AX[0];
                cpu_Q->size[1] = AX[1];
                emxEnsureCapacity_real_T(cpu_Q, k, &nc_emlrtRTEI);
                idfx = AX[0] * AX[1] - 1;
                mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
                  2147483647U);
                gpuEmxEnsureCapacity_real_T(cpu_Q, &gpu_Q, true);
                validLaunchParams = mwValidateLaunchParameters(grid, block);
                if (validLaunchParams) {
                  mpcStep_kernel78<<<grid, block>>>(idfx, gpu_Q);
                }
              }
            }
          } else {
            idfu = d_cpu_A->size[0];
            c_n = d_cpu_A->size[1] - 1;
            nx = d_cpu_A->size[0];
            outsize_idx_0 = d_cpu_A->size[1];
            if (nx <= outsize_idx_0) {
              outsize_idx_0 = nx;
            }

            k = cpu_tau->size[0];
            cpu_tau->size[0] = outsize_idx_0;
            emxEnsureCapacity_real_T(cpu_tau, k, &jc_emlrtRTEI);
            if ((d_cpu_A->size[0] == 0) || (d_cpu_A->size[1] == 0)) {
              nx = d_cpu_A->size[0];
              outsize_idx_0 = d_cpu_A->size[1];
              if (nx <= outsize_idx_0) {
                outsize_idx_0 = nx;
              }

              nx = d_cpu_A->size[0];
              minmn = d_cpu_A->size[1];
              if (nx <= minmn) {
                minmn = nx;
              }

              k = cpu_tau->size[0];
              cpu_tau->size[0] = outsize_idx_0;
              emxEnsureCapacity_real_T(cpu_tau, k, &kc_emlrtRTEI);
              mwGetLaunchParameters1D(computeNumIters(outsize_idx_0 - 1), &grid,
                &block, 2147483647U);
              gpuEmxEnsureCapacity_real_T(cpu_tau, &b_gpu_tau, true);
              validLaunchParams = mwValidateLaunchParameters(grid, block);
              if (validLaunchParams) {
                mpcStep_kernel105<<<grid, block>>>(outsize_idx_0 - 1, b_gpu_tau);
              }

              if ((d_cpu_A->size[0] != 0) && (d_cpu_A->size[1] != 0) && (minmn >=
                   1)) {
                lda = d_cpu_A->size[0];
                cpu_work->size[0] = d_cpu_A->size[1];
                idfx = d_cpu_A->size[1] - 1;
                mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
                  2147483647U);
                gpuEmxEnsureCapacity_real_T(cpu_work, &b_gpu_work, true);
                validLaunchParams = mwValidateLaunchParameters(grid, block);
                if (validLaunchParams) {
                  mpcStep_kernel111<<<grid, block>>>(idfx, b_gpu_work);
                }

                for (i = 0; i < minmn; i++) {
                  cpu_ii = i * lda + i;
                  mmi = idfu - i;
                  cpu_info_t = (idfu - i) - 1;
                  if (i + 1 < idfu) {
                    gpuEmxMemcpyGpuToCpu_real_T(d_cpu_A, &c_gpu_A);
                    cpu_atmp = d_cpu_A->data[cpu_ii];
                    mpcStep_kernel112<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(i,
                      b_gpu_tau);
                    if (mmi > 0) {
                      if (cpu_info_t < 1) {
                        absx = 0.0;
                      } else {
                        cublasDnrm2(getCublasGlobalHandle(), cpu_info_t, (double
                          *)&c_gpu_A.data[cpu_ii + 1], 1, (double *)&absx);
                      }

                      if (absx != 0.0) {
                        cMin = rt_hypotd_snf(d_cpu_A->data[cpu_ii], absx);
                        if (d_cpu_A->data[cpu_ii] >= 0.0) {
                          cMin = -cMin;
                        }

                        if (std::abs(cMin) < 1.0020841800044864E-292) {
                          outsize_idx_0 = 0;
                          do {
                            outsize_idx_0++;
                            if (cpu_info_t >= 1) {
                              t = 9.9792015476736E+291;
                              cublasDscal(getCublasGlobalHandle(), cpu_info_t,
                                          (double *)&t, (double *)
                                          &c_gpu_A.data[cpu_ii + 1], 1);
                            }

                            cMin *= 9.9792015476736E+291;
                            cpu_atmp *= 9.9792015476736E+291;
                          } while ((std::abs(cMin) < 1.0020841800044864E-292) &&
                                   (outsize_idx_0 < 20));

                          if (cpu_info_t < 1) {
                            absx = 0.0;
                          } else {
                            cublasDnrm2(getCublasGlobalHandle(), cpu_info_t,
                                        (double *)&c_gpu_A.data[cpu_ii + 1], 1,
                                        (double *)&absx);
                          }

                          cMin = rt_hypotd_snf(cpu_atmp, absx);
                          if (cpu_atmp >= 0.0) {
                            cMin = -cMin;
                          }

                          mpcStep_kernel113<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                            (cpu_atmp, cMin, i, b_gpu_tau);
                          t = 1.0 / (cpu_atmp - cMin);
                          if (cpu_info_t >= 1) {
                            cublasDscal(getCublasGlobalHandle(), cpu_info_t,
                                        (double *)&t, (double *)
                                        &c_gpu_A.data[cpu_ii + 1], 1);
                          }

                          for (k = 0; k < outsize_idx_0; k++) {
                            cMin *= 1.0020841800044864E-292;
                          }

                          cpu_atmp = cMin;
                        } else {
                          mpcStep_kernel118<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                            (c_gpu_A, cpu_ii, cMin, i, b_gpu_tau);
                          t = 1.0 / (d_cpu_A->data[cpu_ii] - cMin);
                          if (cpu_info_t >= 1) {
                            cublasDscal(getCublasGlobalHandle(), cpu_info_t,
                                        (double *)&t, (double *)
                                        &c_gpu_A.data[cpu_ii + 1], 1);
                          }

                          cpu_atmp = cMin;
                        }
                      }
                    }

                    mpcStep_kernel114<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                      (cpu_atmp, cpu_ii, c_gpu_A);
                  } else {
                    mpcStep_kernel119<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(i,
                      b_gpu_tau);
                  }

                  if (i < c_n) {
                    mpcStep_kernel115<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                      (c_gpu_A, cpu_ii, gpu_atmp);
                    mpcStep_kernel116<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                      (cpu_ii, c_gpu_A);
                    idfx = cpu_ii + lda;
                    gpuEmxMemcpyGpuToCpu_real_T(cpu_tau, &b_gpu_tau);
                    if (cpu_tau->data[i] != 0.0) {
                      k = cpu_ii + cpu_info_t;
                      exitg6 = false;
                      while ((!exitg6) && (mmi > 0)) {
                        if (A_powers_outdatedOnCpu) {
                          gpuEmxMemcpyGpuToCpu_real_T(d_cpu_A, &c_gpu_A);
                        }

                        A_powers_outdatedOnCpu = false;
                        if (d_cpu_A->data[k] == 0.0) {
                          mmi--;
                          k--;
                        } else {
                          exitg6 = true;
                        }
                      }

                      outsize_idx_0 = c_n - i;
                      exitg6 = false;
                      while ((!exitg6) && (outsize_idx_0 > 0)) {
                        cpu_info_t = idfx + (outsize_idx_0 - 1) * lda;
                        nx = cpu_info_t + 1;
                        do {
                          exitg7 = 0;
                          if (nx <= cpu_info_t + mmi) {
                            if (A_powers_outdatedOnCpu) {
                              gpuEmxMemcpyGpuToCpu_real_T(d_cpu_A, &c_gpu_A);
                            }

                            A_powers_outdatedOnCpu = false;
                            if (d_cpu_A->data[nx - 1] != 0.0) {
                              exitg7 = 1;
                            } else {
                              nx++;
                            }
                          } else {
                            outsize_idx_0--;
                            exitg7 = 2;
                          }
                        } while (exitg7 == 0);

                        if (exitg7 == 1) {
                          exitg6 = true;
                        }
                      }
                    } else {
                      mmi = 0;
                      outsize_idx_0 = 0;
                    }

                    if (mmi > 0) {
                      if (outsize_idx_0 >= 1) {
                        cMin = 0.0;
                        absx = 1.0;
                        cublasDgemv(getCublasGlobalHandle(), CUBLAS_OP_C, mmi,
                                    outsize_idx_0, (double *)&absx, (double *)
                                    &c_gpu_A.data[idfx], lda, (double *)
                                    &c_gpu_A.data[cpu_ii], 1, (double *)&cMin,
                                    (double *)&b_gpu_work.data[0], 1);
                      }

                      absx = -cpu_tau->data[i];
                      if (outsize_idx_0 >= 1) {
                        cublasDger(getCublasGlobalHandle(), mmi, outsize_idx_0,
                                   (double *)&absx, (double *)
                                   &c_gpu_A.data[cpu_ii], 1, (double *)
                                   &b_gpu_work.data[0], 1, (double *)
                                   &c_gpu_A.data[idfx], lda);
                      }
                    }

                    mpcStep_kernel117<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                      (gpu_atmp, cpu_ii, c_gpu_A);
                    A_powers_outdatedOnCpu = true;
                  }
                }
              }
            } else {
              cusolverDnDgeqrf_bufferSize(getCuSolverGlobalHandle(),
                d_cpu_A->size[0], d_cpu_A->size[1], (double *)&c_gpu_A.data[0],
                d_cpu_A->size[0], getCuSolverWorkspaceReq());
              setCuSolverWorkspaceTypeSize(8);
              cusolverInitWorkspace();
              gpuEmxEnsureCapacity_real_T(cpu_tau, &b_gpu_tau, true);
              cusolverDnDgeqrf(getCuSolverGlobalHandle(), d_cpu_A->size[0],
                               d_cpu_A->size[1], (double *)&c_gpu_A.data[0],
                               d_cpu_A->size[0], (double *)&b_gpu_tau.data[0],
                               static_cast<real_T *>(getCuSolverWorkspaceBuff()),
                               *getCuSolverWorkspaceReq(), d_gpu_info);
              checkCudaError(cudaMemcpy(&cpu_info, d_gpu_info, 4ULL,
                cudaMemcpyDeviceToHost), __FILE__, __LINE__);
              if (cpu_info != 0) {
                for (lda = 0; lda <= c_n; lda++) {
                  for (i = 0; i < idfu; i++) {
                    if (A_powers_outdatedOnCpu) {
                      gpuEmxMemcpyGpuToCpu_real_T(d_cpu_A, &c_gpu_A);
                    }

                    d_cpu_A->data[lda * d_cpu_A->size[0] + i] = rtNaN;
                    A_powers_outdatedOnCpu = false;
                    A_powers_outdatedOnGpu = true;
                    A_powers_needsGpuEnsureCapacity = true;
                  }
                }

                nx = d_cpu_A->size[0];
                minmn = d_cpu_A->size[1];
                if (nx <= minmn) {
                  minmn = nx;
                }

                mwGetLaunchParameters1D(computeNumIters(minmn - 1), &grid,
                  &block, 2147483647U);
                validLaunchParams = mwValidateLaunchParameters(grid, block);
                if (validLaunchParams) {
                  mpcStep_kernel120<<<grid, block>>>(minmn - 1, b_gpu_tau);
                }

                b = computeEndIdx(static_cast<int64_T>(minmn + 1),
                                  static_cast<int64_T>(outsize_idx_0), 1LL);
                mwGetLaunchParameters1D(computeNumIters(b), &grid, &block,
                  2147483647U);
                validLaunchParams = mwValidateLaunchParameters(grid, block);
                if (validLaunchParams) {
                  mpcStep_kernel121<<<grid, block>>>(minmn + 1, b, b_gpu_tau);
                }
              }
            }

            for (lda = 0; lda < m; lda++) {
              mwGetLaunchParameters1D(computeNumIters(lda), &grid, &block,
                2147483647U);
              if (A_powers_needsGpuEnsureCapacity) {
                gpuEmxEnsureCapacity_real_T(d_cpu_A, &c_gpu_A,
                  !A_powers_outdatedOnGpu);
              }

              A_powers_needsGpuEnsureCapacity = false;
              if (idx_needsGpuEnsureCapacity) {
                gpuEmxEnsureCapacity_real_T(cpu_R, &gpu_R, true);
              }

              if (A_powers_outdatedOnGpu) {
                gpuEmxMemcpyCpuToGpu_real_T(&c_gpu_A, d_cpu_A);
              }

              A_powers_outdatedOnGpu = false;
              validLaunchParams = mwValidateLaunchParameters(grid, block);
              if (validLaunchParams) {
                mpcStep_kernel106<<<grid, block>>>(c_gpu_A, lda + 1, lda, gpu_R,
                  cpu_R->size[0U], d_cpu_A->size[0U]);
              }

              b = computeEndIdx(static_cast<int64_T>(lda + 2),
                                static_cast<int64_T>(m), 1LL);
              mwGetLaunchParameters1D(computeNumIters(b), &grid, &block,
                2147483647U);
              idx_needsGpuEnsureCapacity = false;
              validLaunchParams = mwValidateLaunchParameters(grid, block);
              if (validLaunchParams) {
                mpcStep_kernel107<<<grid, block>>>(lda + 1, lda + 2, b, gpu_R,
                  cpu_R->size[0U]);
              }
            }

            k = d_cpu_A->size[0] + 1;
            b = computeEndIdx(static_cast<int64_T>(k), static_cast<int64_T>(b_n),
                              1LL);
            numIters = computeNumIters(b, m - 1);
            mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
            if (A_powers_needsGpuEnsureCapacity) {
              gpuEmxEnsureCapacity_real_T(d_cpu_A, &c_gpu_A,
                !A_powers_outdatedOnGpu);
            }

            if (idx_needsGpuEnsureCapacity) {
              gpuEmxEnsureCapacity_real_T(cpu_R, &gpu_R, true);
            }

            idx_needsGpuEnsureCapacity = false;
            if (A_powers_outdatedOnGpu) {
              gpuEmxMemcpyCpuToGpu_real_T(&c_gpu_A, d_cpu_A);
            }

            validLaunchParams = mwValidateLaunchParameters(grid, block);
            if (validLaunchParams) {
              mpcStep_kernel108<<<grid, block>>>(c_gpu_A, k, m - 1, b, gpu_R,
                cpu_R->size[0U], d_cpu_A->size[0U]);
            }

            empty_non_axis_sizes = true;
            if ((d_cpu_A->size[0] != 0) && (d_cpu_A->size[1] != 0)) {
              cusolverDnDorgqr_bufferSize(getCuSolverGlobalHandle(),
                d_cpu_A->size[0], d_cpu_A->size[0], d_cpu_A->size[0], (double *)
                &c_gpu_A.data[0], d_cpu_A->size[0], &b_gpu_tau.data[0],
                getCuSolverWorkspaceReq());
              setCuSolverWorkspaceTypeSize(8);
              cusolverInitWorkspace();
              cusolverDnDorgqr(getCuSolverGlobalHandle(), d_cpu_A->size[0],
                               d_cpu_A->size[0], d_cpu_A->size[0], (double *)
                               &c_gpu_A.data[0], d_cpu_A->size[0],
                               &b_gpu_tau.data[0], static_cast<real_T *>
                               (getCuSolverWorkspaceBuff()),
                               *getCuSolverWorkspaceReq(), c_gpu_info);
              checkCudaError(cudaMemcpy(&e_cpu_info, c_gpu_info, 4ULL,
                cudaMemcpyDeviceToHost), __FILE__, __LINE__);
              if (e_cpu_info != 0) {
                for (idfx = 0; idfx < 2; idfx++) {
                  AX[idfx] = d_cpu_A->size[idfx];
                }

                k = d_cpu_A->size[0] * d_cpu_A->size[1];
                d_cpu_A->size[0] = AX[0];
                d_cpu_A->size[1] = AX[1];
                emxEnsureCapacity_real_T(d_cpu_A, k, &mc_emlrtRTEI);
                idfx = AX[0] * AX[1] - 1;
                mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
                  2147483647U);
                gpuEmxEnsureCapacity_real_T(d_cpu_A, &c_gpu_A, true);
                validLaunchParams = mwValidateLaunchParameters(grid, block);
                if (validLaunchParams) {
                  mpcStep_kernel109<<<grid, block>>>(idfx, c_gpu_A);
                }
              }
            }

            numIters = computeNumIters(m - 1, m - 1);
            mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
            gpuEmxEnsureCapacity_real_T(cpu_Q, &gpu_Q, true);
            A_powers_needsGpuEnsureCapacity = false;
            validLaunchParams = mwValidateLaunchParameters(grid, block);
            if (validLaunchParams) {
              mpcStep_kernel110<<<grid, block>>>(c_gpu_A, m - 1, m - 1, gpu_Q,
                cpu_Q->size[0U], d_cpu_A->size[0U]);
            }

            A_powers_outdatedOnGpu = false;
          }

          i = 0;
          do {
            exitg3 = 0;
            if (i + 1 <= nA) {
              if (empty_non_axis_sizes) {
                gpuEmxMemcpyGpuToCpu_real_T(cpu_R, &gpu_R);
              }

              empty_non_axis_sizes = false;
              if (std::abs(cpu_R->data[i + cpu_R->size[0] * i]) < 1.0E-12) {
                exitg3 = 1;
              } else {
                i++;
              }
            } else {
              for (i = 0; i < n; i++) {
                for (lda = 0; lda < n; lda++) {
                  b_cpu_b->size[0] = cpu_Q->size[0];
                  idfx = cpu_Q->size[0] - 1;
                  mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
                    2147483647U);
                  if (A_powers_needsGpuEnsureCapacity) {
                    gpuEmxEnsureCapacity_real_T(cpu_Q, &gpu_Q,
                      !A_powers_outdatedOnGpu);
                  }

                  A_powers_needsGpuEnsureCapacity = false;
                  gpuEmxEnsureCapacity_real_T(b_cpu_b, &d_gpu_b, true);
                  if (A_powers_outdatedOnGpu) {
                    gpuEmxMemcpyCpuToGpu_real_T(&gpu_Q, cpu_Q);
                  }

                  A_powers_outdatedOnGpu = false;
                  validLaunchParams = mwValidateLaunchParameters(grid, block);
                  if (validLaunchParams) {
                    mpcStep_kernel86<<<grid, block>>>(lda, gpu_Q, idfx, d_gpu_b,
                      cpu_Q->size[0U]);
                  }

                  g_cpu_A->size[0] = 1;
                  g_cpu_A->size[1] = cpu_Linv->size[0];
                  idfu = cpu_Linv->size[0] - 1;
                  mwGetLaunchParameters1D(computeNumIters(idfu), &grid, &block,
                    2147483647U);
                  gpuEmxEnsureCapacity_real_T(g_cpu_A, &e_gpu_A, true);
                  validLaunchParams = mwValidateLaunchParameters(grid, block);
                  if (validLaunchParams) {
                    mpcStep_kernel87<<<grid, block>>>(i, gpu_Linv, idfu, e_gpu_A,
                      cpu_Linv->size[0U]);
                  }

                  if (cpu_Linv->size[0] < 1) {
                    t = 0.0;
                  } else {
                    cublasDdot(getCublasGlobalHandle(), cpu_Linv->size[0],
                               (double *)&e_gpu_A.data[0], 1, (double *)
                               &d_gpu_b.data[0], 1, (double *)&t);
                  }

                  if (QX_outdatedOnCpu) {
                    gpuEmxEnsureCapacity_real_T(cpu_TL, &gpu_TL, true);
                  }

                  QX_outdatedOnCpu = false;
                  mpcStep_kernel88<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(t,
                    lda, i, gpu_TL, cpu_TL->size[0U]);
                  idfu_needsGpuEnsureCapacity = true;
                }
              }

              AX[0] = cpu_RLinv->size[0];
              AX[1] = cpu_RLinv->size[1];
              numIters = computeNumIters(AX[1] - 1, AX[0] - 1);
              mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
              validLaunchParams = mwValidateLaunchParameters(grid, block);
              if (validLaunchParams) {
                mpcStep_kernel89<<<grid, block>>>(AX[0] - 1, AX[1] - 1,
                  gpu_RLinv, cpu_RLinv->size[0U]);
              }

              for (lda = 0; lda < nA; lda++) {
                nx = nA - lda;
                mpcStep_kernel90<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(lda,
                  nA, gpu_RLinv, cpu_RLinv->size[0U]);
                k = nA - lda;
                b = computeEndIdx(static_cast<int64_T>(k), static_cast<int64_T>
                                  (nA), 1LL);
                mwGetLaunchParameters1D(computeNumIters(b), &grid, &block,
                  2147483647U);
                if (idx_needsGpuEnsureCapacity) {
                  gpuEmxEnsureCapacity_real_T(cpu_R, &gpu_R, true);
                }

                idx_needsGpuEnsureCapacity = false;
                validLaunchParams = mwValidateLaunchParameters(grid, block);
                if (validLaunchParams) {
                  mpcStep_kernel91<<<grid, block>>>(gpu_R, k, nx, b, gpu_RLinv,
                    cpu_RLinv->size[0U], cpu_R->size[0U]);
                }

                if (nx > 1) {
                  for (i = 0; i <= nx - 2; i++) {
                    b = computeEndIdx(static_cast<int64_T>(nx),
                                      static_cast<int64_T>(nA), 1LL);
                    mwGetLaunchParameters1D(computeNumIters(b), &grid, &block,
                      2147483647U);
                    validLaunchParams = mwValidateLaunchParameters(grid, block);
                    if (validLaunchParams) {
                      mpcStep_kernel92<<<grid, block>>>(gpu_R, nx, i + 1, b,
                        gpu_RLinv, cpu_RLinv->size[0U], cpu_R->size[0U]);
                    }
                  }
                }
              }

              for (i = 0; i < n; i++) {
                b = computeEndIdx(static_cast<int64_T>(i + 1),
                                  static_cast<int64_T>(n), 1LL);
                for (int64_T j{0LL}; j <= b; j++) {
                  cpu_H->data[i + cpu_H->size[0] * (static_cast<int32_T>((i + 1)
                    + j) - 1)] = 0.0;
                  c = computeEndIdx(static_cast<int64_T>(nA + 1),
                                    static_cast<int64_T>(n), 1LL);
                  for (int64_T b_k{0LL}; b_k <= c; b_k++) {
                    if (idfu_needsGpuEnsureCapacity) {
                      gpuEmxMemcpyGpuToCpu_real_T(cpu_TL, &gpu_TL);
                    }

                    idfu_needsGpuEnsureCapacity = false;
                    cpu_H->data[i + cpu_H->size[0] * (static_cast<int32_T>((i +
                      1) + j) - 1)] -= cpu_TL->data[i + cpu_TL->size[0] * (
                      static_cast<int32_T>((nA + 1) + b_k) - 1)] * cpu_TL->data
                      [(static_cast<int32_T>((i + 1) + j) + cpu_TL->size[0] * (
                         static_cast<int32_T>((nA + 1) + b_k) - 1)) - 1];
                  }

                  cpu_H->data[(static_cast<int32_T>((i + 1) + j) + cpu_H->size[0]
                               * i) - 1] = cpu_H->data[i + cpu_H->size[0] * (
                    static_cast<int32_T>((i + 1) + j) - 1)];
                  H_outdatedOnGpu = true;
                  H_needsGpuEnsureCapacity = true;
                }
              }

              numIters = computeNumIters(nA - 1, n - 1);
              mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
              if (QX_outdatedOnCpu) {
                gpuEmxEnsureCapacity_real_T(cpu_TL, &gpu_TL, true);
              }

              if (D_needsGpuEnsureCapacity) {
                gpuEmxEnsureCapacity_real_T(cpu_D, &gpu_D, true);
              }

              D_needsGpuEnsureCapacity = false;
              validLaunchParams = mwValidateLaunchParameters(grid, block);
              if (validLaunchParams) {
                mpcStep_kernel93<<<grid, block>>>(gpu_RLinv, gpu_TL, nA, n - 1,
                  nA - 1, gpu_D, cpu_D->size[0U], cpu_TL->size[0U],
                  cpu_RLinv->size[0U]);
              }

              A_powers_needsGpuEnsureCapacity = true;
              for (lda = 0; lda < nA; lda++) {
                if ((n > 0) && (lda + 1 > MAX_int32_T - n)) {
                  idfx = MAX_int32_T;
                } else {
                  idfx = (n + lda) + 1;
                }

                if (gX_outdatedOnCpu) {
                  gpuEmxMemcpyGpuToCpu_real_T(cpu_Rhs, &gpu_Rhs);
                }

                if (gX_needsGpuEnsureCapacity) {
                  gpuEmxMemcpyGpuToCpu_real_T(cpu_b, &gpu_b);
                }

                gX_needsGpuEnsureCapacity = false;
                if (iC_outdatedOnCpu) {
                  gpuEmxMemcpyGpuToCpu_int32_T(cpu_iC, &gpu_iC);
                }

                iC_outdatedOnCpu = false;
                cpu_Rhs->data[idfx - 1] = cpu_b->data[cpu_iC->data[lda] - 1];
                gX_outdatedOnCpu = false;
                QX_outdatedOnGpu = true;
                QX_needsGpuEnsureCapacity = true;
                b = computeEndIdx(static_cast<int64_T>(lda + 1),
                                  static_cast<int64_T>(nA), 1LL);
                for (int64_T j{0LL}; j <= b; j++) {
                  U->data[(static_cast<int32_T>((lda + 1) + j) + U->size[0] *
                           lda) - 1] = 0.0;
                  for (k = 0; k < nA; k++) {
                    if (idxx_needsGpuEnsureCapacity) {
                      gpuEmxMemcpyGpuToCpu_real_T(cpu_RLinv, &gpu_RLinv);
                    }

                    idxx_needsGpuEnsureCapacity = false;
                    U->data[(static_cast<int32_T>((lda + 1) + j) + U->size[0] *
                             lda) - 1] += cpu_RLinv->data[(static_cast<int32_T>
                      ((lda + 1) + j) + cpu_RLinv->size[0] * k) - 1] *
                      cpu_RLinv->data[lda + cpu_RLinv->size[0] * k];
                  }

                  U->data[lda + U->size[0] * (static_cast<int32_T>((lda + 1) + j)
                    - 1)] = U->data[(static_cast<int32_T>((lda + 1) + j) +
                                     U->size[0] * lda) - 1];
                }
              }

              for (i = 0; i < n; i++) {
                f_cpu_a->size[0] = 1;
                f_cpu_a->size[1] = cpu_H->size[1];
                idfx = cpu_H->size[1] - 1;
                mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
                  2147483647U);
                if (H_needsGpuEnsureCapacity) {
                  gpuEmxEnsureCapacity_real_T(cpu_H, &gpu_H, !H_outdatedOnGpu);
                }

                H_needsGpuEnsureCapacity = false;
                gpuEmxEnsureCapacity_real_T(f_cpu_a, &c_gpu_a, true);
                if (H_outdatedOnGpu) {
                  gpuEmxMemcpyCpuToGpu_real_T(&gpu_H, cpu_H);
                }

                H_outdatedOnGpu = false;
                validLaunchParams = mwValidateLaunchParameters(grid, block);
                if (validLaunchParams) {
                  mpcStep_kernel80<<<grid, block>>>(gpu_H, i, idfx, c_gpu_a,
                    cpu_H->size[0U]);
                }

                d_cpu_b->size[0] = n;
                mwGetLaunchParameters1D(computeNumIters(n - 1), &grid, &block,
                  2147483647U);
                if (QX_needsGpuEnsureCapacity) {
                  gpuEmxEnsureCapacity_real_T(cpu_Rhs, &gpu_Rhs,
                    !QX_outdatedOnGpu);
                }

                QX_needsGpuEnsureCapacity = false;
                gpuEmxEnsureCapacity_real_T(d_cpu_b, &b_gpu_b, true);
                if (QX_outdatedOnGpu) {
                  gpuEmxMemcpyCpuToGpu_real_T(&gpu_Rhs, cpu_Rhs);
                }

                QX_outdatedOnGpu = false;
                validLaunchParams = mwValidateLaunchParameters(grid, block);
                if (validLaunchParams) {
                  mpcStep_kernel81<<<grid, block>>>(gpu_Rhs, n - 1, b_gpu_b);
                }

                if (cpu_H->size[1] < 1) {
                  t = 0.0;
                } else {
                  cublasDdot(getCublasGlobalHandle(), cpu_H->size[1], (double *)
                             &c_gpu_a.data[0], 1, (double *)&b_gpu_b.data[0], 1,
                             (double *)&t);
                }

                if (FX_outdatedOnCpu) {
                  gpuEmxMemcpyGpuToCpu_real_T(cpu_Opt, &gpu_Opt);
                }

                cpu_Opt->data[i] = t;
                FX_outdatedOnCpu = false;
                iv4_needsGpuEnsureCapacity = true;
                iv5_needsGpuEnsureCapacity = true;
                for (k = 0; k < nA; k++) {
                  if ((n > 0) && (k + 1 > MAX_int32_T - n)) {
                    idfx = MAX_int32_T;
                  } else {
                    idfx = (n + k) + 1;
                  }

                  if (A_powers_needsGpuEnsureCapacity) {
                    gpuEmxMemcpyGpuToCpu_real_T(cpu_D, &gpu_D);
                  }

                  A_powers_needsGpuEnsureCapacity = false;
                  if (gX_outdatedOnCpu) {
                    gpuEmxMemcpyGpuToCpu_real_T(cpu_Rhs, &gpu_Rhs);
                  }

                  gX_outdatedOnCpu = false;
                  cpu_Opt->data[i] += cpu_D->data[i + cpu_D->size[0] * k] *
                    cpu_Rhs->data[idfx - 1];
                }
              }

              for (i = 0; i < nA; i++) {
                e_cpu_b->size[0] = n;
                mwGetLaunchParameters1D(computeNumIters(n - 1), &grid, &block,
                  2147483647U);
                if (QX_needsGpuEnsureCapacity) {
                  gpuEmxEnsureCapacity_real_T(cpu_Rhs, &gpu_Rhs,
                    !QX_outdatedOnGpu);
                }

                QX_needsGpuEnsureCapacity = false;
                gpuEmxEnsureCapacity_real_T(e_cpu_b, &c_gpu_b, true);
                if (QX_outdatedOnGpu) {
                  gpuEmxMemcpyCpuToGpu_real_T(&gpu_Rhs, cpu_Rhs);
                }

                QX_outdatedOnGpu = false;
                validLaunchParams = mwValidateLaunchParameters(grid, block);
                if (validLaunchParams) {
                  mpcStep_kernel82<<<grid, block>>>(gpu_Rhs, n - 1, c_gpu_b);
                }

                i_cpu_A->size[0] = 1;
                i_cpu_A->size[1] = cpu_D->size[0];
                idfx = cpu_D->size[0] - 1;
                mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
                  2147483647U);
                if (D_needsGpuEnsureCapacity) {
                  gpuEmxEnsureCapacity_real_T(cpu_D, &gpu_D, true);
                }

                D_needsGpuEnsureCapacity = false;
                gpuEmxEnsureCapacity_real_T(i_cpu_A, &d_gpu_A, true);
                validLaunchParams = mwValidateLaunchParameters(grid, block);
                if (validLaunchParams) {
                  mpcStep_kernel83<<<grid, block>>>(i, gpu_D, idfx, d_gpu_A,
                    cpu_D->size[0U]);
                }

                if (cpu_D->size[0] < 1) {
                  t = 0.0;
                } else {
                  cublasDdot(getCublasGlobalHandle(), cpu_D->size[0], (double *)
                             &d_gpu_A.data[0], 1, (double *)&c_gpu_b.data[0], 1,
                             (double *)&t);
                }

                if ((n > 0) && (i + 1 > MAX_int32_T - n)) {
                  idfx = MAX_int32_T;
                } else {
                  idfx = (n + i) + 1;
                }

                if (FX_outdatedOnCpu) {
                  gpuEmxMemcpyGpuToCpu_real_T(cpu_Opt, &gpu_Opt);
                }

                cpu_Opt->data[idfx - 1] = t;
                FX_outdatedOnCpu = false;
                iv4_needsGpuEnsureCapacity = true;
                iv5_needsGpuEnsureCapacity = true;
                if ((n > 0) && (i + 1 > MAX_int32_T - n)) {
                  idfx = MAX_int32_T;
                  outsize_idx_0 = MAX_int32_T;
                } else {
                  idfx = (n + i) + 1;
                  outsize_idx_0 = (n + i) + 1;
                }

                for (k = 0; k < nA; k++) {
                  if ((n > 0) && (k + 1 > MAX_int32_T - n)) {
                    cpu_info_t = MAX_int32_T;
                  } else {
                    cpu_info_t = (n + k) + 1;
                  }

                  if (gX_outdatedOnCpu) {
                    gpuEmxMemcpyGpuToCpu_real_T(cpu_Rhs, &gpu_Rhs);
                  }

                  gX_outdatedOnCpu = false;
                  cpu_Opt->data[idfx - 1] = cpu_Opt->data[outsize_idx_0 - 1] +
                    U->data[i + U->size[0] * k] * cpu_Rhs->data[cpu_info_t - 1];
                }
              }

              absx = -1.0E-12;
              nx = 0;
              for (i = 0; i < nA; i++) {
                if ((n > 0) && (i + 1 > MAX_int32_T - n)) {
                  idfx = MAX_int32_T;
                } else {
                  idfx = (n + i) + 1;
                }

                if (gU_outdatedOnGpu) {
                  gpuEmxMemcpyGpuToCpu_real_T(cpu_lam, &gpu_lam);
                }

                if (iC_outdatedOnCpu) {
                  gpuEmxMemcpyGpuToCpu_int32_T(cpu_iC, &gpu_iC);
                }

                iC_outdatedOnCpu = false;
                if (FX_outdatedOnCpu) {
                  gpuEmxMemcpyGpuToCpu_real_T(cpu_Opt, &gpu_Opt);
                }

                cpu_lam->data[cpu_iC->data[i] - 1] = cpu_Opt->data[idfx - 1];
                gU_outdatedOnGpu = false;
                if ((n > 0) && (i + 1 > MAX_int32_T - n)) {
                  idfx = MAX_int32_T;
                } else {
                  idfx = (n + i) + 1;
                }

                FX_outdatedOnCpu = false;
                if ((cpu_Opt->data[idfx - 1] < absx) && (i + 1 <= nA - meq)) {
                  nx = i + 1;
                  if ((n > 0) && (i + 1 > MAX_int32_T - n)) {
                    idfx = MAX_int32_T;
                  } else {
                    idfx = (n + i) + 1;
                  }

                  absx = cpu_Opt->data[idfx - 1];
                }
              }

              exitg3 = 2;
            }
          } while (exitg3 == 0);

          if (exitg3 == 1) {
            if (ColdReset) {
              exitg4 = 1;
            } else {
              nA = meq;
              k = cpu_iA->size[0];
              cpu_iA->size[0] = static_cast<int32_T>(b_t);
              emxEnsureCapacity_boolean_T(cpu_iA, k, &cc_emlrtRTEI);
              k = cpu_iC->size[0];
              cpu_iC->size[0] = static_cast<int32_T>(b_t);
              emxEnsureCapacity_int32_T(cpu_iC, k, &cc_emlrtRTEI);
              mwGetLaunchParameters1D(computeNumIters(static_cast<int32_T>(b_t)
                - 1), &grid, &block, 2147483647U);
              gpuEmxEnsureCapacity_int32_T(cpu_iC, &gpu_iC, true);
              gpuEmxEnsureCapacity_boolean_T(cpu_iA, &gpu_iA, true);
              validLaunchParams = mwValidateLaunchParameters(grid, block);
              if (validLaunchParams) {
                mpcStep_kernel79<<<grid, block>>>(static_cast<int32_T>(b_t) - 1,
                  gpu_iC, gpu_iA);
              }

              gX_outdatedOnGpu = true;
              iC_outdatedOnCpu = true;
              if (meq > 0) {
                outsize_idx_0 = static_cast<int32_T>(b_t) - meq;
                for (i = 0; i < meq; i++) {
                  if ((outsize_idx_0 < 0) && (i + 1 < MIN_int32_T
                       - outsize_idx_0)) {
                    idfx = MIN_int32_T;
                  } else if ((outsize_idx_0 > 0) && (i + 1 > MAX_int32_T
                              - outsize_idx_0)) {
                    idfx = MAX_int32_T;
                  } else {
                    idfx = (outsize_idx_0 + i) + 1;
                  }

                  if (gX_outdatedOnGpu) {
                    gpuEmxMemcpyGpuToCpu_boolean_T(cpu_iA, &gpu_iA);
                  }

                  cpu_iA->data[idfx - 1] = true;
                  gX_outdatedOnGpu = false;
                  if (iC_outdatedOnCpu) {
                    gpuEmxMemcpyGpuToCpu_int32_T(cpu_iC, &gpu_iC);
                  }

                  cpu_iC->data[i] = idfx;
                  iC_outdatedOnCpu = false;
                }
              }

              ColdReset = true;
            }
          } else if (nx <= 0) {
            k = cpu_z_solution->size[0];
            cpu_z_solution->size[0] = n;
            emxEnsureCapacity_real_T(cpu_z_solution, k, &cc_emlrtRTEI);
            mwGetLaunchParameters1D(computeNumIters(n - 1), &grid, &block,
              2147483647U);
            if (iv5_needsGpuEnsureCapacity) {
              gpuEmxEnsureCapacity_real_T(cpu_Opt, &gpu_Opt,
                !iv4_needsGpuEnsureCapacity);
            }

            gpuEmxEnsureCapacity_real_T(cpu_z_solution, &gpu_z_solution, true);
            if (iv4_needsGpuEnsureCapacity) {
              gpuEmxMemcpyCpuToGpu_real_T(&gpu_Opt, cpu_Opt);
            }

            validLaunchParams = mwValidateLaunchParameters(grid, block);
            if (validLaunchParams) {
              mpcStep_kernel84<<<grid, block>>>(gpu_Opt, n - 1, gpu_z_solution);
            }

            exitg4 = 2;
          } else {
            exitflag++;
            if (exitflag > MaxWSiter) {
              nA = meq;
              k = cpu_iA->size[0];
              cpu_iA->size[0] = static_cast<int32_T>(b_t);
              emxEnsureCapacity_boolean_T(cpu_iA, k, &cc_emlrtRTEI);
              k = cpu_iC->size[0];
              cpu_iC->size[0] = static_cast<int32_T>(b_t);
              emxEnsureCapacity_int32_T(cpu_iC, k, &cc_emlrtRTEI);
              mwGetLaunchParameters1D(computeNumIters(static_cast<int32_T>(b_t)
                - 1), &grid, &block, 2147483647U);
              gpuEmxEnsureCapacity_int32_T(cpu_iC, &gpu_iC, true);
              gpuEmxEnsureCapacity_boolean_T(cpu_iA, &gpu_iA, true);
              validLaunchParams = mwValidateLaunchParameters(grid, block);
              if (validLaunchParams) {
                mpcStep_kernel85<<<grid, block>>>(static_cast<int32_T>(b_t) - 1,
                  gpu_iC, gpu_iA);
              }

              gX_outdatedOnGpu = true;
              iC_outdatedOnCpu = true;
              if (meq > 0) {
                outsize_idx_0 = static_cast<int32_T>(b_t) - meq;
                for (i = 0; i < meq; i++) {
                  if ((outsize_idx_0 < 0) && (i + 1 < MIN_int32_T
                       - outsize_idx_0)) {
                    idfx = MIN_int32_T;
                  } else if ((outsize_idx_0 > 0) && (i + 1 > MAX_int32_T
                              - outsize_idx_0)) {
                    idfx = MAX_int32_T;
                  } else {
                    idfx = (outsize_idx_0 + i) + 1;
                  }

                  if (gX_outdatedOnGpu) {
                    gpuEmxMemcpyGpuToCpu_boolean_T(cpu_iA, &gpu_iA);
                  }

                  cpu_iA->data[idfx - 1] = true;
                  gX_outdatedOnGpu = false;
                  if (iC_outdatedOnCpu) {
                    gpuEmxMemcpyGpuToCpu_int32_T(cpu_iC, &gpu_iC);
                  }

                  cpu_iC->data[i] = idfx;
                  iC_outdatedOnCpu = false;
                }
              }

              ColdReset = true;
            } else {
              if (gU_outdatedOnGpu) {
                gpuEmxMemcpyGpuToCpu_real_T(cpu_lam, &gpu_lam);
              }

              if (iC_outdatedOnCpu) {
                gpuEmxMemcpyGpuToCpu_int32_T(cpu_iC, &gpu_iC);
              }

              cpu_lam->data[cpu_iC->data[nx - 1] - 1] = 0.0;
              gU_outdatedOnGpu = false;
              if (gX_outdatedOnGpu) {
                gpuEmxMemcpyGpuToCpu_boolean_T(cpu_iA, &gpu_iA);
              }

              iC_outdatedOnCpu = false;
              cpu_iA->data[cpu_iC->data[nx - 1] - 1] = false;
              gX_outdatedOnGpu = false;
              if (nx < nA) {
                b = computeEndIdx(static_cast<int64_T>(nx), static_cast<int64_T>
                                  (nA - 1), 1LL);
                for (int64_T j{0LL}; j <= b; j++) {
                  cpu_iC->data[static_cast<int32_T>(nx + j) - 1] = cpu_iC->data[
                    static_cast<int32_T>(nx + j)];
                }
              }

              cpu_iC->data[nA - 1] = 0;
              nA--;
            }
          }
        } else {
          exitg4 = 2;
        }
      } while (exitg4 == 0);

      if (exitg4 != 1) {
        if (nA <= 0) {
          k = cpu_lam->size[0];
          cpu_lam->size[0] = static_cast<int32_T>(b_t);
          emxEnsureCapacity_real_T(cpu_lam, k, &cc_emlrtRTEI);
          mwGetLaunchParameters1D(computeNumIters(static_cast<int32_T>(b_t) - 1),
            &grid, &block, 2147483647U);
          gpuEmxEnsureCapacity_real_T(cpu_lam, &gpu_lam, true);
          validLaunchParams = mwValidateLaunchParameters(grid, block);
          if (validLaunchParams) {
            mpcStep_kernel122<<<grid, block>>>(static_cast<int32_T>(b_t) - 1,
              gpu_lam);
          }

          gU_outdatedOnGpu = true;
          for (i = 0; i < n; i++) {
            e_cpu_a->size[0] = 1;
            e_cpu_a->size[1] = cpu_Hinv->size[1];
            idfx = cpu_Hinv->size[1] - 1;
            mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
              2147483647U);
            gpuEmxEnsureCapacity_real_T(e_cpu_a, &d_gpu_a, true);
            validLaunchParams = mwValidateLaunchParameters(grid, block);
            if (validLaunchParams) {
              mpcStep_kernel123<<<grid, block>>>(gpu_Hinv, i, idfx, d_gpu_a,
                cpu_Hinv->size[0U]);
            }

            if (e_cpu_a->size[1] < 1) {
              t = 0.0;
            } else {
              cublasDdot(getCublasGlobalHandle(), e_cpu_a->size[1], (double *)
                         &d_gpu_a.data[0], 1, (double *)&gpu_f.data[0], 1,
                         (double *)&t);
            }

            mpcStep_kernel124<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(t, i,
              gpu_z_solution);
          }
        }

        b_guard1 = true;
      }
    } else {
      for (i = 0; i < n; i++) {
        c_cpu_a->size[0] = 1;
        c_cpu_a->size[1] = cpu_Hinv->size[1];
        idfx = cpu_Hinv->size[1] - 1;
        mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
          2147483647U);
        gpuEmxEnsureCapacity_real_T(c_cpu_a, &g_gpu_a, true);
        validLaunchParams = mwValidateLaunchParameters(grid, block);
        if (validLaunchParams) {
          mpcStep_kernel188<<<grid, block>>>(gpu_Hinv, i, idfx, g_gpu_a,
            cpu_Hinv->size[0U]);
        }

        if (c_cpu_a->size[1] < 1) {
          t = 0.0;
        } else {
          cublasDdot(getCublasGlobalHandle(), c_cpu_a->size[1], (double *)
                     &g_gpu_a.data[0], 1, (double *)&gpu_f.data[0], 1, (double *)
                     &t);
        }

        mpcStep_kernel189<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(t, i,
          gpu_z_solution);
      }

      b_guard1 = true;
    }

    if (b_guard1) {
      real_T Xnorm0;
      if (cpu_z_solution->size[0] == 0) {
        Xnorm0 = 0.0;
      } else {
        cublasDnrm2(getCublasGlobalHandle(), cpu_z_solution->size[0], (double *)
                    &gpu_z_solution.data[0], 1, (double *)&Xnorm0);
      }

      exitg5 = false;
      while ((!exitg5) && (exitflag <= 200)) {
        cMin = -1.0E-6;
        MaxWSiter = -1;
        outsize_idx_0 = static_cast<int32_T>(b_t) - meq;
        for (i = 0; i < outsize_idx_0; i++) {
          if (!cTolComputed) {
            if (cpu_z_solution->size[0] == cpu_result->size[1]) {
              k = b_cpu_x->size[0] * b_cpu_x->size[1];
              b_cpu_x->size[0] = 1;
              b_cpu_x->size[1] = cpu_result->size[1];
              emxEnsureCapacity_real_T(b_cpu_x, k, &cc_emlrtRTEI);
              idfx = cpu_result->size[1] - 1;
              mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
                2147483647U);
              if (FU_needsGpuEnsureCapacity) {
                gpuEmxEnsureCapacity_real_T(cpu_z_solution, &gpu_z_solution,
                  !FU_outdatedOnGpu);
              }

              FU_needsGpuEnsureCapacity = false;
              gpuEmxEnsureCapacity_real_T(b_cpu_x, &gpu_x, true);
              A_powers_outdatedOnGpu = false;
              if (FU_outdatedOnGpu) {
                gpuEmxMemcpyCpuToGpu_real_T(&gpu_z_solution, cpu_z_solution);
              }

              FU_outdatedOnGpu = false;
              validLaunchParams = mwValidateLaunchParameters(grid, block);
              if (validLaunchParams) {
                mpcStep_kernel125<<<grid, block>>>(gpu_z_solution, gpu_result, i,
                  idfx, gpu_x, cpu_result->size[0U]);
              }

              A_powers_needsGpuEnsureCapacity = false;
              x_outdatedOnCpu = true;
            } else {
              if (x_outdatedOnCpu) {
                gpuEmxMemcpyGpuToCpu_real_T(b_cpu_x, &gpu_x);
              }

              if (FX_outdatedOnGpu) {
                gpuEmxMemcpyGpuToCpu_real_T(cpu_result, &gpu_result);
              }

              FX_outdatedOnGpu = false;
              if (gU_needsGpuEnsureCapacity) {
                gpuEmxMemcpyGpuToCpu_real_T(cpu_z_solution, &gpu_z_solution);
              }

              gU_needsGpuEnsureCapacity = false;
              binary_expand_op(b_cpu_x, cpu_result, i, cpu_z_solution);
              x_outdatedOnCpu = false;
              A_powers_needsGpuEnsureCapacity = true;
              A_powers_outdatedOnGpu = true;
            }

            nx = b_cpu_x->size[1];
            k = b_cpu_y->size[0] * b_cpu_y->size[1];
            b_cpu_y->size[0] = 1;
            b_cpu_y->size[1] = b_cpu_x->size[1];
            emxEnsureCapacity_real_T(b_cpu_y, k, &dc_emlrtRTEI);
            mwGetLaunchParameters1D(computeNumIters(nx - 1), &grid, &block,
              2147483647U);
            if (A_powers_outdatedOnGpu) {
              gpuEmxEnsureCapacity_real_T(b_cpu_x, &gpu_x,
                !A_powers_needsGpuEnsureCapacity);
            }

            gpuEmxEnsureCapacity_real_T(b_cpu_y, &b_gpu_y, true);
            if (A_powers_needsGpuEnsureCapacity) {
              gpuEmxMemcpyCpuToGpu_real_T(&gpu_x, b_cpu_x);
            }

            validLaunchParams = mwValidateLaunchParameters(grid, block);
            if (validLaunchParams) {
              mpcStep_kernel126<<<grid, block>>>(gpu_x, nx - 1, b_gpu_y);
            }

            cpu_info_t = b_cpu_y->size[1];
            gpuEmxMemcpyGpuToCpu_real_T(b_cpu_y, &b_gpu_y);
            t = b_cpu_y->data[0];
            for (k = 0; k <= cpu_info_t - 2; k++) {
              absx = b_cpu_y->data[k + 1];
              if (std::isnan(absx)) {
                empty_non_axis_sizes = false;
              } else if (std::isnan(t)) {
                empty_non_axis_sizes = true;
              } else {
                empty_non_axis_sizes = (t < absx);
              }

              if (empty_non_axis_sizes) {
                t = absx;
              }
            }

            mpcStep_kernel127<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>(t, i,
              gpu_cTol);
            FX_needsGpuEnsureCapacity = true;
          }

          if (gX_outdatedOnGpu) {
            gpuEmxMemcpyGpuToCpu_boolean_T(cpu_iA, &gpu_iA);
          }

          gX_outdatedOnGpu = false;
          if (!cpu_iA->data[i]) {
            d_cpu_a->size[0] = 1;
            d_cpu_a->size[1] = cpu_result->size[1];
            idfx = cpu_result->size[1] - 1;
            mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
              2147483647U);
            gpuEmxEnsureCapacity_real_T(d_cpu_a, &e_gpu_a, true);
            validLaunchParams = mwValidateLaunchParameters(grid, block);
            if (validLaunchParams) {
              mpcStep_kernel128<<<grid, block>>>(gpu_result, i, idfx, e_gpu_a,
                cpu_result->size[0U]);
            }

            if (cpu_result->size[1] < 1) {
              t = 0.0;
            } else {
              if (FU_needsGpuEnsureCapacity) {
                gpuEmxEnsureCapacity_real_T(cpu_z_solution, &gpu_z_solution,
                  !FU_outdatedOnGpu);
              }

              FU_needsGpuEnsureCapacity = false;
              if (FU_outdatedOnGpu) {
                gpuEmxMemcpyCpuToGpu_real_T(&gpu_z_solution, cpu_z_solution);
              }

              FU_outdatedOnGpu = false;
              cublasDdot(getCublasGlobalHandle(), cpu_result->size[1], (double *)
                         &e_gpu_a.data[0], 1, (double *)&gpu_z_solution.data[0],
                         1, (double *)&t);
            }

            if (gX_needsGpuEnsureCapacity) {
              gpuEmxMemcpyGpuToCpu_real_T(cpu_b, &gpu_b);
            }

            gX_needsGpuEnsureCapacity = false;
            if (FX_needsGpuEnsureCapacity) {
              gpuEmxMemcpyGpuToCpu_real_T(cpu_cTol, &gpu_cTol);
            }

            FX_needsGpuEnsureCapacity = false;
            absx = (t - cpu_b->data[i]) / cpu_cTol->data[i];
            if (absx < cMin) {
              cMin = absx;
              MaxWSiter = i;
            }
          }
        }

        cTolComputed = true;
        if ((MaxWSiter + 1 <= 0) || (exitflag == 200)) {
          exitg5 = true;
        } else {
          do {
            exitg2 = 0;
            if ((MaxWSiter + 1 > 0) && (exitflag <= 200)) {
              boolean_T b_guard2;
              cpu_AcRow->size[0] = 1;
              cpu_AcRow->size[1] = cpu_result->size[1];
              idfx = cpu_result->size[1] - 1;
              mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
                2147483647U);
              gpuEmxEnsureCapacity_real_T(cpu_AcRow, &gpu_AcRow, true);
              validLaunchParams = mwValidateLaunchParameters(grid, block);
              if (validLaunchParams) {
                mpcStep_kernel129<<<grid, block>>>(gpu_result, MaxWSiter, idfx,
                  gpu_AcRow, cpu_result->size[0U]);
              }

              b_guard2 = false;
              if (nA == 0) {
                b_cpu_B->size[0] = cpu_result->size[1];
                idfx = cpu_result->size[1] - 1;
                mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
                  2147483647U);
                gpuEmxEnsureCapacity_real_T(b_cpu_B, &b_gpu_B, true);
                validLaunchParams = mwValidateLaunchParameters(grid, block);
                if (validLaunchParams) {
                  mpcStep_kernel130<<<grid, block>>>(gpu_result, MaxWSiter, idfx,
                    b_gpu_B, cpu_result->size[0U]);
                }

                if ((cpu_Hinv->size[0] == 0) || (cpu_Hinv->size[1] == 0) ||
                    (b_cpu_B->size[0] == 0)) {
                  k = cpu_z->size[0];
                  cpu_z->size[0] = cpu_Hinv->size[0];
                  emxEnsureCapacity_real_T(cpu_z, k, &cc_emlrtRTEI);
                  idfx = cpu_Hinv->size[0] - 1;
                  mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
                    2147483647U);
                  gpuEmxEnsureCapacity_real_T(cpu_z, &gpu_z, true);
                  validLaunchParams = mwValidateLaunchParameters(grid, block);
                  if (validLaunchParams) {
                    mpcStep_kernel131<<<grid, block>>>(idfx, gpu_z);
                  }
                } else {
                  k = cpu_z->size[0];
                  cpu_z->size[0] = cpu_Hinv->size[0];
                  emxEnsureCapacity_real_T(cpu_z, k, &ib_emlrtRTEI);
                  absx = 1.0;
                  cMin = 0.0;
                  gpuEmxEnsureCapacity_real_T(cpu_z, &gpu_z, true);
                  cublasDgemm(getCublasGlobalHandle(), CUBLAS_OP_N, CUBLAS_OP_N,
                              cpu_Hinv->size[0], 1, cpu_Hinv->size[1], (double *)
                              &absx, (double *)&gpu_Hinv.data[0], cpu_Hinv->
                              size[0], (double *)&b_gpu_B.data[0],
                              cpu_Hinv->size[1], (double *)&cMin, (double *)
                              &gpu_z.data[0], cpu_Hinv->size[0]);
                }

                b_guard2 = true;
              } else {
                idfu_needsGpuEnsureCapacity = false;
                k = b_cpu_TL->size[0] * b_cpu_TL->size[1];
                b_cpu_TL->size[0] = cpu_Linv->size[0];
                b_cpu_TL->size[1] = cpu_Linv->size[1];
                emxEnsureCapacity_real_T(b_cpu_TL, k, &cc_emlrtRTEI);
                QX_outdatedOnCpu = true;
                AX[0] = cpu_RLinv->size[0];
                AX[1] = cpu_RLinv->size[1];
                numIters = computeNumIters(AX[1] - 1, AX[0] - 1);
                mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
                if (RLinv_needsGpuEnsureCapacity) {
                  gpuEmxEnsureCapacity_real_T(cpu_RLinv, &gpu_RLinv, true);
                }

                RLinv_needsGpuEnsureCapacity = false;
                validLaunchParams = mwValidateLaunchParameters(grid, block);
                if (validLaunchParams) {
                  mpcStep_kernel135<<<grid, block>>>(AX[0] - 1, AX[1] - 1,
                    gpu_RLinv, cpu_RLinv->size[0U]);
                }

                for (i = 0; i < nA; i++) {
                  if (iC_outdatedOnCpu) {
                    gpuEmxMemcpyGpuToCpu_int32_T(cpu_iC, &gpu_iC);
                  }

                  iC_outdatedOnCpu = false;
                  outsize_idx_0 = cpu_iC->data[i];
                  c_cpu_B->size[0] = cpu_result->size[1];
                  idfx = cpu_result->size[1] - 1;
                  mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
                    2147483647U);
                  gpuEmxEnsureCapacity_real_T(c_cpu_B, &d_gpu_B, true);
                  validLaunchParams = mwValidateLaunchParameters(grid, block);
                  if (validLaunchParams) {
                    mpcStep_kernel136<<<grid, block>>>(gpu_result, outsize_idx_0,
                      idfx, d_gpu_B, cpu_result->size[0U]);
                  }

                  if ((cpu_Linv->size[0] == 0) || (cpu_Linv->size[1] == 0) ||
                      (c_cpu_B->size[0] == 0)) {
                    cpu_dv1->size[0] = cpu_Linv->size[0];
                    idfu = cpu_Linv->size[0] - 1;
                    mwGetLaunchParameters1D(computeNumIters(idfu), &grid, &block,
                      2147483647U);
                    gpuEmxEnsureCapacity_real_T(cpu_dv1, &gpu_dv1, true);
                    validLaunchParams = mwValidateLaunchParameters(grid, block);
                    if (validLaunchParams) {
                      mpcStep_kernel137<<<grid, block>>>(idfu, gpu_dv1);
                    }
                  } else {
                    cpu_dv1->size[0] = cpu_Linv->size[0];
                    absx = 1.0;
                    cMin = 0.0;
                    gpuEmxEnsureCapacity_real_T(cpu_dv1, &gpu_dv1, true);
                    cublasDgemm(getCublasGlobalHandle(), CUBLAS_OP_N,
                                CUBLAS_OP_N, cpu_Linv->size[0], 1,
                                cpu_Linv->size[1], (double *)&absx, (double *)
                                &gpu_Linv.data[0], cpu_Linv->size[0], (double *)
                                &d_gpu_B.data[0], cpu_Linv->size[1], (double *)
                                &cMin, (double *)&gpu_dv1.data[0],
                                cpu_Linv->size[0]);
                  }

                  s[0] = cpu_RLinv->size[0];
                  mwGetLaunchParameters1D(computeNumIters(s[0] - 1), &grid,
                    &block, 2147483647U);
                  validLaunchParams = mwValidateLaunchParameters(grid, block);
                  if (validLaunchParams) {
                    mpcStep_kernel138<<<grid, block>>>(gpu_dv1, i, s[0] - 1,
                      gpu_RLinv, cpu_RLinv->size[0U]);
                  }
                }

                k = e_cpu_A->size[0] * e_cpu_A->size[1];
                e_cpu_A->size[0] = cpu_RLinv->size[0];
                e_cpu_A->size[1] = cpu_RLinv->size[1];
                emxEnsureCapacity_real_T(e_cpu_A, k, &gc_emlrtRTEI);
                idfx = cpu_RLinv->size[0] * cpu_RLinv->size[1] - 1;
                mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
                  2147483647U);
                gpuEmxEnsureCapacity_real_T(e_cpu_A, &g_gpu_A, true);
                A_powers_needsGpuEnsureCapacity = false;
                validLaunchParams = mwValidateLaunchParameters(grid, block);
                if (validLaunchParams) {
                  mpcStep_kernel139<<<grid, block>>>(gpu_RLinv, idfx, g_gpu_A);
                }

                A_powers_outdatedOnGpu = false;
                A_powers_outdatedOnCpu = true;
                m = e_cpu_A->size[0];
                b_n = e_cpu_A->size[1];
                k = b_cpu_Q->size[0] * b_cpu_Q->size[1];
                b_cpu_Q->size[0] = e_cpu_A->size[0];
                b_cpu_Q->size[1] = e_cpu_A->size[0];
                emxEnsureCapacity_real_T(b_cpu_Q, k, &hc_emlrtRTEI);
                empty_non_axis_sizes = false;
                k = b_cpu_R->size[0] * b_cpu_R->size[1];
                b_cpu_R->size[0] = e_cpu_A->size[0];
                b_cpu_R->size[1] = e_cpu_A->size[1];
                emxEnsureCapacity_real_T(b_cpu_R, k, &ic_emlrtRTEI);
                idx_needsGpuEnsureCapacity = true;
                if (e_cpu_A->size[0] > e_cpu_A->size[1]) {
                  numIters = computeNumIters(b_n - 1, m - 1);
                  mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
                  gpuEmxEnsureCapacity_real_T(b_cpu_Q, &b_gpu_Q, true);
                  validLaunchParams = mwValidateLaunchParameters(grid, block);
                  if (validLaunchParams) {
                    mpcStep_kernel140<<<grid, block>>>(g_gpu_A, m - 1, b_n - 1,
                      b_gpu_Q, b_cpu_Q->size[0U], e_cpu_A->size[0U]);
                  }

                  k = e_cpu_A->size[1] + 1;
                  b = computeEndIdx(static_cast<int64_T>(k), static_cast<int64_T>
                                    (m), 1LL);
                  numIters = computeNumIters(b, m - 1);
                  mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
                  A_powers_needsGpuEnsureCapacity = false;
                  validLaunchParams = mwValidateLaunchParameters(grid, block);
                  if (validLaunchParams) {
                    mpcStep_kernel141<<<grid, block>>>(k, m - 1, b, b_gpu_Q,
                      b_cpu_Q->size[0U]);
                  }

                  A_powers_outdatedOnGpu = false;
                  A_powers_outdatedOnCpu = true;
                  idfu = b_cpu_Q->size[0];
                  c_n = b_cpu_Q->size[1] - 1;
                  nx = b_cpu_Q->size[0];
                  outsize_idx_0 = b_cpu_Q->size[1];
                  if (nx <= outsize_idx_0) {
                    outsize_idx_0 = nx;
                  }

                  k = d_cpu_tau->size[0];
                  d_cpu_tau->size[0] = outsize_idx_0;
                  emxEnsureCapacity_real_T(d_cpu_tau, k, &jc_emlrtRTEI);
                  if ((b_cpu_Q->size[0] == 0) || (b_cpu_Q->size[1] == 0)) {
                    nx = b_cpu_Q->size[0];
                    outsize_idx_0 = b_cpu_Q->size[1];
                    if (nx <= outsize_idx_0) {
                      outsize_idx_0 = nx;
                    }

                    nx = b_cpu_Q->size[0];
                    minmn = b_cpu_Q->size[1];
                    if (nx <= minmn) {
                      minmn = nx;
                    }

                    k = d_cpu_tau->size[0];
                    d_cpu_tau->size[0] = outsize_idx_0;
                    emxEnsureCapacity_real_T(d_cpu_tau, k, &kc_emlrtRTEI);
                    mwGetLaunchParameters1D(computeNumIters(outsize_idx_0 - 1),
                      &grid, &block, 2147483647U);
                    gpuEmxEnsureCapacity_real_T(d_cpu_tau, &c_gpu_tau, true);
                    validLaunchParams = mwValidateLaunchParameters(grid, block);
                    if (validLaunchParams) {
                      mpcStep_kernel142<<<grid, block>>>(outsize_idx_0 - 1,
                        c_gpu_tau);
                    }

                    if ((b_cpu_Q->size[0] != 0) && (b_cpu_Q->size[1] != 0) &&
                        (minmn >= 1)) {
                      lda = b_cpu_Q->size[0];
                      d_cpu_work->size[0] = b_cpu_Q->size[1];
                      idfx = b_cpu_Q->size[1] - 1;
                      mwGetLaunchParameters1D(computeNumIters(idfx), &grid,
                        &block, 2147483647U);
                      gpuEmxEnsureCapacity_real_T(d_cpu_work, &c_gpu_work, true);
                      validLaunchParams = mwValidateLaunchParameters(grid, block);
                      if (validLaunchParams) {
                        mpcStep_kernel158<<<grid, block>>>(idfx, c_gpu_work);
                      }

                      for (i = 0; i < minmn; i++) {
                        cpu_ii = i * lda + i;
                        mmi = idfu - i;
                        cpu_info_t = (idfu - i) - 1;
                        if (i + 1 < idfu) {
                          gpuEmxMemcpyGpuToCpu_real_T(b_cpu_Q, &b_gpu_Q);
                          cpu_atmp = b_cpu_Q->data[cpu_ii];
                          mpcStep_kernel159<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                            (i, c_gpu_tau);
                          if (mmi > 0) {
                            if (cpu_info_t < 1) {
                              absx = 0.0;
                            } else {
                              cublasDnrm2(getCublasGlobalHandle(), cpu_info_t,
                                          (double *)&b_gpu_Q.data[cpu_ii + 1], 1,
                                          (double *)&absx);
                            }

                            if (absx != 0.0) {
                              cMin = rt_hypotd_snf(b_cpu_Q->data[cpu_ii], absx);
                              if (b_cpu_Q->data[cpu_ii] >= 0.0) {
                                cMin = -cMin;
                              }

                              if (std::abs(cMin) < 1.0020841800044864E-292) {
                                outsize_idx_0 = 0;
                                do {
                                  outsize_idx_0++;
                                  if (cpu_info_t >= 1) {
                                    t = 9.9792015476736E+291;
                                    cublasDscal(getCublasGlobalHandle(),
                                                cpu_info_t, (double *)&t,
                                                (double *)&b_gpu_Q.data[cpu_ii +
                                                1], 1);
                                  }

                                  cMin *= 9.9792015476736E+291;
                                  cpu_atmp *= 9.9792015476736E+291;
                                } while ((std::abs(cMin) <
                                          1.0020841800044864E-292) &&
                                         (outsize_idx_0 < 20));

                                if (cpu_info_t < 1) {
                                  absx = 0.0;
                                } else {
                                  cublasDnrm2(getCublasGlobalHandle(),
                                              cpu_info_t, (double *)
                                              &b_gpu_Q.data[cpu_ii + 1], 1,
                                              (double *)&absx);
                                }

                                cMin = rt_hypotd_snf(cpu_atmp, absx);
                                if (cpu_atmp >= 0.0) {
                                  cMin = -cMin;
                                }

                                mpcStep_kernel160<<<dim3(1U, 1U, 1U), dim3(32U,
                                  1U, 1U)>>>(cpu_atmp, cMin, i, c_gpu_tau);
                                t = 1.0 / (cpu_atmp - cMin);
                                if (cpu_info_t >= 1) {
                                  cublasDscal(getCublasGlobalHandle(),
                                              cpu_info_t, (double *)&t, (double *)
                                              &b_gpu_Q.data[cpu_ii + 1], 1);
                                }

                                for (k = 0; k < outsize_idx_0; k++) {
                                  cMin *= 1.0020841800044864E-292;
                                }

                                cpu_atmp = cMin;
                              } else {
                                mpcStep_kernel165<<<dim3(1U, 1U, 1U), dim3(32U,
                                  1U, 1U)>>>(b_gpu_Q, cpu_ii, cMin, i, c_gpu_tau);
                                t = 1.0 / (b_cpu_Q->data[cpu_ii] - cMin);
                                if (cpu_info_t >= 1) {
                                  cublasDscal(getCublasGlobalHandle(),
                                              cpu_info_t, (double *)&t, (double *)
                                              &b_gpu_Q.data[cpu_ii + 1], 1);
                                }

                                cpu_atmp = cMin;
                              }
                            }
                          }

                          mpcStep_kernel161<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                            (cpu_atmp, cpu_ii, b_gpu_Q);
                        } else {
                          mpcStep_kernel166<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                            (i, c_gpu_tau);
                        }

                        if (i < c_n) {
                          mpcStep_kernel162<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                            (b_gpu_Q, cpu_ii, gpu_atmp);
                          mpcStep_kernel163<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                            (cpu_ii, b_gpu_Q);
                          idfx = cpu_ii + lda;
                          gpuEmxMemcpyGpuToCpu_real_T(d_cpu_tau, &c_gpu_tau);
                          if (d_cpu_tau->data[i] != 0.0) {
                            k = cpu_ii + cpu_info_t;
                            exitg6 = false;
                            while ((!exitg6) && (mmi > 0)) {
                              if (A_powers_outdatedOnCpu) {
                                gpuEmxMemcpyGpuToCpu_real_T(b_cpu_Q, &b_gpu_Q);
                              }

                              A_powers_outdatedOnCpu = false;
                              if (b_cpu_Q->data[k] == 0.0) {
                                mmi--;
                                k--;
                              } else {
                                exitg6 = true;
                              }
                            }

                            outsize_idx_0 = c_n - i;
                            exitg6 = false;
                            while ((!exitg6) && (outsize_idx_0 > 0)) {
                              cpu_info_t = idfx + (outsize_idx_0 - 1) * lda;
                              nx = cpu_info_t + 1;
                              do {
                                exitg7 = 0;
                                if (nx <= cpu_info_t + mmi) {
                                  if (A_powers_outdatedOnCpu) {
                                    gpuEmxMemcpyGpuToCpu_real_T(b_cpu_Q,
                                      &b_gpu_Q);
                                  }

                                  A_powers_outdatedOnCpu = false;
                                  if (b_cpu_Q->data[nx - 1] != 0.0) {
                                    exitg7 = 1;
                                  } else {
                                    nx++;
                                  }
                                } else {
                                  outsize_idx_0--;
                                  exitg7 = 2;
                                }
                              } while (exitg7 == 0);

                              if (exitg7 == 1) {
                                exitg6 = true;
                              }
                            }
                          } else {
                            mmi = 0;
                            outsize_idx_0 = 0;
                          }

                          if (mmi > 0) {
                            if (outsize_idx_0 >= 1) {
                              cMin = 0.0;
                              absx = 1.0;
                              cublasDgemv(getCublasGlobalHandle(), CUBLAS_OP_C,
                                          mmi, outsize_idx_0, (double *)&absx,
                                          (double *)&b_gpu_Q.data[idfx], lda,
                                          (double *)&b_gpu_Q.data[cpu_ii], 1,
                                          (double *)&cMin, (double *)
                                          &c_gpu_work.data[0], 1);
                            }

                            absx = -d_cpu_tau->data[i];
                            if (outsize_idx_0 >= 1) {
                              cublasDger(getCublasGlobalHandle(), mmi,
                                         outsize_idx_0, (double *)&absx, (double
                                          *)&b_gpu_Q.data[cpu_ii], 1, (double *)
                                         &c_gpu_work.data[0], 1, (double *)
                                         &b_gpu_Q.data[idfx], lda);
                            }
                          }

                          mpcStep_kernel164<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                            (gpu_atmp, cpu_ii, b_gpu_Q);
                          A_powers_outdatedOnCpu = true;
                        }
                      }
                    }
                  } else {
                    cusolverDnDgeqrf_bufferSize(getCuSolverGlobalHandle(),
                      b_cpu_Q->size[0], b_cpu_Q->size[1], (double *)
                      &b_gpu_Q.data[0], b_cpu_Q->size[0],
                      getCuSolverWorkspaceReq());
                    setCuSolverWorkspaceTypeSize(8);
                    cusolverInitWorkspace();
                    gpuEmxEnsureCapacity_real_T(d_cpu_tau, &c_gpu_tau, true);
                    cusolverDnDgeqrf(getCuSolverGlobalHandle(), b_cpu_Q->size[0],
                                     b_cpu_Q->size[1], (double *)&b_gpu_Q.data[0],
                                     b_cpu_Q->size[0], (double *)
                                     &c_gpu_tau.data[0], static_cast<real_T *>
                                     (getCuSolverWorkspaceBuff()),
                                     *getCuSolverWorkspaceReq(), f_gpu_info);
                    checkCudaError(cudaMemcpy(&d_cpu_info, f_gpu_info, 4ULL,
                      cudaMemcpyDeviceToHost), __FILE__, __LINE__);
                    if (d_cpu_info != 0) {
                      for (lda = 0; lda <= c_n; lda++) {
                        for (i = 0; i < idfu; i++) {
                          if (A_powers_outdatedOnCpu) {
                            gpuEmxMemcpyGpuToCpu_real_T(b_cpu_Q, &b_gpu_Q);
                          }

                          b_cpu_Q->data[lda * b_cpu_Q->size[0] + i] = rtNaN;
                          A_powers_outdatedOnCpu = false;
                          A_powers_outdatedOnGpu = true;
                          A_powers_needsGpuEnsureCapacity = true;
                        }
                      }

                      nx = b_cpu_Q->size[0];
                      minmn = b_cpu_Q->size[1];
                      if (nx <= minmn) {
                        minmn = nx;
                      }

                      mwGetLaunchParameters1D(computeNumIters(minmn - 1), &grid,
                        &block, 2147483647U);
                      validLaunchParams = mwValidateLaunchParameters(grid, block);
                      if (validLaunchParams) {
                        mpcStep_kernel167<<<grid, block>>>(minmn - 1, c_gpu_tau);
                      }

                      b = computeEndIdx(static_cast<int64_T>(minmn + 1),
                                        static_cast<int64_T>(outsize_idx_0), 1LL);
                      mwGetLaunchParameters1D(computeNumIters(b), &grid, &block,
                        2147483647U);
                      validLaunchParams = mwValidateLaunchParameters(grid, block);
                      if (validLaunchParams) {
                        mpcStep_kernel168<<<grid, block>>>(minmn + 1, b,
                          c_gpu_tau);
                      }
                    }
                  }

                  for (lda = 0; lda < b_n; lda++) {
                    mwGetLaunchParameters1D(computeNumIters(lda), &grid, &block,
                      2147483647U);
                    if (A_powers_needsGpuEnsureCapacity) {
                      gpuEmxEnsureCapacity_real_T(b_cpu_Q, &b_gpu_Q,
                        !A_powers_outdatedOnGpu);
                    }

                    A_powers_needsGpuEnsureCapacity = false;
                    if (idx_needsGpuEnsureCapacity) {
                      gpuEmxEnsureCapacity_real_T(b_cpu_R, &b_gpu_R, true);
                    }

                    if (A_powers_outdatedOnGpu) {
                      gpuEmxMemcpyCpuToGpu_real_T(&b_gpu_Q, b_cpu_Q);
                    }

                    A_powers_outdatedOnGpu = false;
                    validLaunchParams = mwValidateLaunchParameters(grid, block);
                    if (validLaunchParams) {
                      mpcStep_kernel143<<<grid, block>>>(b_gpu_Q, lda + 1, lda,
                        b_gpu_R, b_cpu_R->size[0U], b_cpu_Q->size[0U]);
                    }

                    b = computeEndIdx(static_cast<int64_T>(lda + 2),
                                      static_cast<int64_T>(m), 1LL);
                    mwGetLaunchParameters1D(computeNumIters(b), &grid, &block,
                      2147483647U);
                    idx_needsGpuEnsureCapacity = false;
                    validLaunchParams = mwValidateLaunchParameters(grid, block);
                    if (validLaunchParams) {
                      mpcStep_kernel144<<<grid, block>>>(lda + 1, lda + 2, b,
                        b_gpu_R, b_cpu_R->size[0U]);
                    }

                    empty_non_axis_sizes = true;
                  }

                  if ((b_cpu_Q->size[0] != 0) && (b_cpu_Q->size[1] != 0)) {
                    if (A_powers_needsGpuEnsureCapacity) {
                      gpuEmxEnsureCapacity_real_T(b_cpu_Q, &b_gpu_Q,
                        !A_powers_outdatedOnGpu);
                    }

                    if (A_powers_outdatedOnGpu) {
                      gpuEmxMemcpyCpuToGpu_real_T(&b_gpu_Q, b_cpu_Q);
                    }

                    cusolverDnDorgqr_bufferSize(getCuSolverGlobalHandle(),
                      e_cpu_A->size[0], e_cpu_A->size[0], e_cpu_A->size[1],
                      (double *)&b_gpu_Q.data[0], e_cpu_A->size[0],
                      &c_gpu_tau.data[0], getCuSolverWorkspaceReq());
                    setCuSolverWorkspaceTypeSize(8);
                    cusolverInitWorkspace();
                    A_powers_needsGpuEnsureCapacity = false;
                    cusolverDnDorgqr(getCuSolverGlobalHandle(), e_cpu_A->size[0],
                                     e_cpu_A->size[0], e_cpu_A->size[1], (double
                      *)&b_gpu_Q.data[0], e_cpu_A->size[0], &c_gpu_tau.data[0],
                                     static_cast<real_T *>
                                     (getCuSolverWorkspaceBuff()),
                                     *getCuSolverWorkspaceReq(), e_gpu_info);
                    A_powers_outdatedOnGpu = false;
                    checkCudaError(cudaMemcpy(&h_cpu_info, e_gpu_info, 4ULL,
                      cudaMemcpyDeviceToHost), __FILE__, __LINE__);
                    if (h_cpu_info != 0) {
                      for (idfx = 0; idfx < 2; idfx++) {
                        AX[idfx] = b_cpu_Q->size[idfx];
                      }

                      k = b_cpu_Q->size[0] * b_cpu_Q->size[1];
                      b_cpu_Q->size[0] = AX[0];
                      b_cpu_Q->size[1] = AX[1];
                      emxEnsureCapacity_real_T(b_cpu_Q, k, &nc_emlrtRTEI);
                      idfx = AX[0] * AX[1] - 1;
                      mwGetLaunchParameters1D(computeNumIters(idfx), &grid,
                        &block, 2147483647U);
                      gpuEmxEnsureCapacity_real_T(b_cpu_Q, &b_gpu_Q, true);
                      validLaunchParams = mwValidateLaunchParameters(grid, block);
                      if (validLaunchParams) {
                        mpcStep_kernel145<<<grid, block>>>(idfx, b_gpu_Q);
                      }
                    }
                  }
                } else {
                  idfu = e_cpu_A->size[0];
                  c_n = e_cpu_A->size[1] - 1;
                  nx = e_cpu_A->size[0];
                  outsize_idx_0 = e_cpu_A->size[1];
                  if (nx <= outsize_idx_0) {
                    outsize_idx_0 = nx;
                  }

                  k = c_cpu_tau->size[0];
                  c_cpu_tau->size[0] = outsize_idx_0;
                  emxEnsureCapacity_real_T(c_cpu_tau, k, &jc_emlrtRTEI);
                  if ((e_cpu_A->size[0] == 0) || (e_cpu_A->size[1] == 0)) {
                    nx = e_cpu_A->size[0];
                    outsize_idx_0 = e_cpu_A->size[1];
                    if (nx <= outsize_idx_0) {
                      outsize_idx_0 = nx;
                    }

                    nx = e_cpu_A->size[0];
                    minmn = e_cpu_A->size[1];
                    if (nx <= minmn) {
                      minmn = nx;
                    }

                    k = c_cpu_tau->size[0];
                    c_cpu_tau->size[0] = outsize_idx_0;
                    emxEnsureCapacity_real_T(c_cpu_tau, k, &kc_emlrtRTEI);
                    mwGetLaunchParameters1D(computeNumIters(outsize_idx_0 - 1),
                      &grid, &block, 2147483647U);
                    gpuEmxEnsureCapacity_real_T(c_cpu_tau, &d_gpu_tau, true);
                    validLaunchParams = mwValidateLaunchParameters(grid, block);
                    if (validLaunchParams) {
                      mpcStep_kernel169<<<grid, block>>>(outsize_idx_0 - 1,
                        d_gpu_tau);
                    }

                    if ((e_cpu_A->size[0] != 0) && (e_cpu_A->size[1] != 0) &&
                        (minmn >= 1)) {
                      lda = e_cpu_A->size[0];
                      c_cpu_work->size[0] = e_cpu_A->size[1];
                      idfx = e_cpu_A->size[1] - 1;
                      mwGetLaunchParameters1D(computeNumIters(idfx), &grid,
                        &block, 2147483647U);
                      gpuEmxEnsureCapacity_real_T(c_cpu_work, &d_gpu_work, true);
                      validLaunchParams = mwValidateLaunchParameters(grid, block);
                      if (validLaunchParams) {
                        mpcStep_kernel175<<<grid, block>>>(idfx, d_gpu_work);
                      }

                      for (i = 0; i < minmn; i++) {
                        cpu_ii = i * lda + i;
                        mmi = idfu - i;
                        cpu_info_t = (idfu - i) - 1;
                        if (i + 1 < idfu) {
                          gpuEmxMemcpyGpuToCpu_real_T(e_cpu_A, &g_gpu_A);
                          cpu_atmp = e_cpu_A->data[cpu_ii];
                          mpcStep_kernel176<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                            (i, d_gpu_tau);
                          if (mmi > 0) {
                            if (cpu_info_t < 1) {
                              absx = 0.0;
                            } else {
                              cublasDnrm2(getCublasGlobalHandle(), cpu_info_t,
                                          (double *)&g_gpu_A.data[cpu_ii + 1], 1,
                                          (double *)&absx);
                            }

                            if (absx != 0.0) {
                              cMin = rt_hypotd_snf(e_cpu_A->data[cpu_ii], absx);
                              if (e_cpu_A->data[cpu_ii] >= 0.0) {
                                cMin = -cMin;
                              }

                              if (std::abs(cMin) < 1.0020841800044864E-292) {
                                outsize_idx_0 = 0;
                                do {
                                  outsize_idx_0++;
                                  if (cpu_info_t >= 1) {
                                    t = 9.9792015476736E+291;
                                    cublasDscal(getCublasGlobalHandle(),
                                                cpu_info_t, (double *)&t,
                                                (double *)&g_gpu_A.data[cpu_ii +
                                                1], 1);
                                  }

                                  cMin *= 9.9792015476736E+291;
                                  cpu_atmp *= 9.9792015476736E+291;
                                } while ((std::abs(cMin) <
                                          1.0020841800044864E-292) &&
                                         (outsize_idx_0 < 20));

                                if (cpu_info_t < 1) {
                                  absx = 0.0;
                                } else {
                                  cublasDnrm2(getCublasGlobalHandle(),
                                              cpu_info_t, (double *)
                                              &g_gpu_A.data[cpu_ii + 1], 1,
                                              (double *)&absx);
                                }

                                cMin = rt_hypotd_snf(cpu_atmp, absx);
                                if (cpu_atmp >= 0.0) {
                                  cMin = -cMin;
                                }

                                mpcStep_kernel177<<<dim3(1U, 1U, 1U), dim3(32U,
                                  1U, 1U)>>>(cpu_atmp, cMin, i, d_gpu_tau);
                                t = 1.0 / (cpu_atmp - cMin);
                                if (cpu_info_t >= 1) {
                                  cublasDscal(getCublasGlobalHandle(),
                                              cpu_info_t, (double *)&t, (double *)
                                              &g_gpu_A.data[cpu_ii + 1], 1);
                                }

                                for (k = 0; k < outsize_idx_0; k++) {
                                  cMin *= 1.0020841800044864E-292;
                                }

                                cpu_atmp = cMin;
                              } else {
                                mpcStep_kernel182<<<dim3(1U, 1U, 1U), dim3(32U,
                                  1U, 1U)>>>(g_gpu_A, cpu_ii, cMin, i, d_gpu_tau);
                                t = 1.0 / (e_cpu_A->data[cpu_ii] - cMin);
                                if (cpu_info_t >= 1) {
                                  cublasDscal(getCublasGlobalHandle(),
                                              cpu_info_t, (double *)&t, (double *)
                                              &g_gpu_A.data[cpu_ii + 1], 1);
                                }

                                cpu_atmp = cMin;
                              }
                            }
                          }

                          mpcStep_kernel178<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                            (cpu_atmp, cpu_ii, g_gpu_A);
                        } else {
                          mpcStep_kernel183<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                            (i, d_gpu_tau);
                        }

                        if (i < c_n) {
                          mpcStep_kernel179<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                            (g_gpu_A, cpu_ii, gpu_atmp);
                          mpcStep_kernel180<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                            (cpu_ii, g_gpu_A);
                          idfx = cpu_ii + lda;
                          gpuEmxMemcpyGpuToCpu_real_T(c_cpu_tau, &d_gpu_tau);
                          if (c_cpu_tau->data[i] != 0.0) {
                            k = cpu_ii + cpu_info_t;
                            exitg6 = false;
                            while ((!exitg6) && (mmi > 0)) {
                              if (A_powers_outdatedOnCpu) {
                                gpuEmxMemcpyGpuToCpu_real_T(e_cpu_A, &g_gpu_A);
                              }

                              A_powers_outdatedOnCpu = false;
                              if (e_cpu_A->data[k] == 0.0) {
                                mmi--;
                                k--;
                              } else {
                                exitg6 = true;
                              }
                            }

                            outsize_idx_0 = c_n - i;
                            exitg6 = false;
                            while ((!exitg6) && (outsize_idx_0 > 0)) {
                              cpu_info_t = idfx + (outsize_idx_0 - 1) * lda;
                              nx = cpu_info_t + 1;
                              do {
                                exitg7 = 0;
                                if (nx <= cpu_info_t + mmi) {
                                  if (A_powers_outdatedOnCpu) {
                                    gpuEmxMemcpyGpuToCpu_real_T(e_cpu_A,
                                      &g_gpu_A);
                                  }

                                  A_powers_outdatedOnCpu = false;
                                  if (e_cpu_A->data[nx - 1] != 0.0) {
                                    exitg7 = 1;
                                  } else {
                                    nx++;
                                  }
                                } else {
                                  outsize_idx_0--;
                                  exitg7 = 2;
                                }
                              } while (exitg7 == 0);

                              if (exitg7 == 1) {
                                exitg6 = true;
                              }
                            }
                          } else {
                            mmi = 0;
                            outsize_idx_0 = 0;
                          }

                          if (mmi > 0) {
                            if (outsize_idx_0 >= 1) {
                              cMin = 0.0;
                              absx = 1.0;
                              cublasDgemv(getCublasGlobalHandle(), CUBLAS_OP_C,
                                          mmi, outsize_idx_0, (double *)&absx,
                                          (double *)&g_gpu_A.data[idfx], lda,
                                          (double *)&g_gpu_A.data[cpu_ii], 1,
                                          (double *)&cMin, (double *)
                                          &d_gpu_work.data[0], 1);
                            }

                            absx = -c_cpu_tau->data[i];
                            if (outsize_idx_0 >= 1) {
                              cublasDger(getCublasGlobalHandle(), mmi,
                                         outsize_idx_0, (double *)&absx, (double
                                          *)&g_gpu_A.data[cpu_ii], 1, (double *)
                                         &d_gpu_work.data[0], 1, (double *)
                                         &g_gpu_A.data[idfx], lda);
                            }
                          }

                          mpcStep_kernel181<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                            (gpu_atmp, cpu_ii, g_gpu_A);
                          A_powers_outdatedOnCpu = true;
                        }
                      }
                    }
                  } else {
                    cusolverDnDgeqrf_bufferSize(getCuSolverGlobalHandle(),
                      e_cpu_A->size[0], e_cpu_A->size[1], (double *)
                      &g_gpu_A.data[0], e_cpu_A->size[0],
                      getCuSolverWorkspaceReq());
                    setCuSolverWorkspaceTypeSize(8);
                    cusolverInitWorkspace();
                    gpuEmxEnsureCapacity_real_T(c_cpu_tau, &d_gpu_tau, true);
                    cusolverDnDgeqrf(getCuSolverGlobalHandle(), e_cpu_A->size[0],
                                     e_cpu_A->size[1], (double *)&g_gpu_A.data[0],
                                     e_cpu_A->size[0], (double *)
                                     &d_gpu_tau.data[0], static_cast<real_T *>
                                     (getCuSolverWorkspaceBuff()),
                                     *getCuSolverWorkspaceReq(), h_gpu_info);
                    checkCudaError(cudaMemcpy(&b_cpu_info, h_gpu_info, 4ULL,
                      cudaMemcpyDeviceToHost), __FILE__, __LINE__);
                    if (b_cpu_info != 0) {
                      for (lda = 0; lda <= c_n; lda++) {
                        for (i = 0; i < idfu; i++) {
                          if (A_powers_outdatedOnCpu) {
                            gpuEmxMemcpyGpuToCpu_real_T(e_cpu_A, &g_gpu_A);
                          }

                          e_cpu_A->data[lda * e_cpu_A->size[0] + i] = rtNaN;
                          A_powers_outdatedOnCpu = false;
                          A_powers_outdatedOnGpu = true;
                          A_powers_needsGpuEnsureCapacity = true;
                        }
                      }

                      nx = e_cpu_A->size[0];
                      minmn = e_cpu_A->size[1];
                      if (nx <= minmn) {
                        minmn = nx;
                      }

                      mwGetLaunchParameters1D(computeNumIters(minmn - 1), &grid,
                        &block, 2147483647U);
                      validLaunchParams = mwValidateLaunchParameters(grid, block);
                      if (validLaunchParams) {
                        mpcStep_kernel184<<<grid, block>>>(minmn - 1, d_gpu_tau);
                      }

                      b = computeEndIdx(static_cast<int64_T>(minmn + 1),
                                        static_cast<int64_T>(outsize_idx_0), 1LL);
                      mwGetLaunchParameters1D(computeNumIters(b), &grid, &block,
                        2147483647U);
                      validLaunchParams = mwValidateLaunchParameters(grid, block);
                      if (validLaunchParams) {
                        mpcStep_kernel185<<<grid, block>>>(minmn + 1, b,
                          d_gpu_tau);
                      }
                    }
                  }

                  for (lda = 0; lda < m; lda++) {
                    mwGetLaunchParameters1D(computeNumIters(lda), &grid, &block,
                      2147483647U);
                    if (A_powers_needsGpuEnsureCapacity) {
                      gpuEmxEnsureCapacity_real_T(e_cpu_A, &g_gpu_A,
                        !A_powers_outdatedOnGpu);
                    }

                    A_powers_needsGpuEnsureCapacity = false;
                    if (idx_needsGpuEnsureCapacity) {
                      gpuEmxEnsureCapacity_real_T(b_cpu_R, &b_gpu_R, true);
                    }

                    if (A_powers_outdatedOnGpu) {
                      gpuEmxMemcpyCpuToGpu_real_T(&g_gpu_A, e_cpu_A);
                    }

                    A_powers_outdatedOnGpu = false;
                    validLaunchParams = mwValidateLaunchParameters(grid, block);
                    if (validLaunchParams) {
                      mpcStep_kernel170<<<grid, block>>>(g_gpu_A, lda + 1, lda,
                        b_gpu_R, b_cpu_R->size[0U], e_cpu_A->size[0U]);
                    }

                    b = computeEndIdx(static_cast<int64_T>(lda + 2),
                                      static_cast<int64_T>(m), 1LL);
                    mwGetLaunchParameters1D(computeNumIters(b), &grid, &block,
                      2147483647U);
                    idx_needsGpuEnsureCapacity = false;
                    validLaunchParams = mwValidateLaunchParameters(grid, block);
                    if (validLaunchParams) {
                      mpcStep_kernel171<<<grid, block>>>(lda + 1, lda + 2, b,
                        b_gpu_R, b_cpu_R->size[0U]);
                    }
                  }

                  k = e_cpu_A->size[0] + 1;
                  b = computeEndIdx(static_cast<int64_T>(k), static_cast<int64_T>
                                    (b_n), 1LL);
                  numIters = computeNumIters(b, m - 1);
                  mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
                  if (A_powers_needsGpuEnsureCapacity) {
                    gpuEmxEnsureCapacity_real_T(e_cpu_A, &g_gpu_A,
                      !A_powers_outdatedOnGpu);
                  }

                  if (idx_needsGpuEnsureCapacity) {
                    gpuEmxEnsureCapacity_real_T(b_cpu_R, &b_gpu_R, true);
                  }

                  idx_needsGpuEnsureCapacity = false;
                  if (A_powers_outdatedOnGpu) {
                    gpuEmxMemcpyCpuToGpu_real_T(&g_gpu_A, e_cpu_A);
                  }

                  validLaunchParams = mwValidateLaunchParameters(grid, block);
                  if (validLaunchParams) {
                    mpcStep_kernel172<<<grid, block>>>(g_gpu_A, k, m - 1, b,
                      b_gpu_R, b_cpu_R->size[0U], e_cpu_A->size[0U]);
                  }

                  empty_non_axis_sizes = true;
                  if ((e_cpu_A->size[0] != 0) && (e_cpu_A->size[1] != 0)) {
                    cusolverDnDorgqr_bufferSize(getCuSolverGlobalHandle(),
                      e_cpu_A->size[0], e_cpu_A->size[0], e_cpu_A->size[0],
                      (double *)&g_gpu_A.data[0], e_cpu_A->size[0],
                      &d_gpu_tau.data[0], getCuSolverWorkspaceReq());
                    setCuSolverWorkspaceTypeSize(8);
                    cusolverInitWorkspace();
                    cusolverDnDorgqr(getCuSolverGlobalHandle(), e_cpu_A->size[0],
                                     e_cpu_A->size[0], e_cpu_A->size[0], (double
                      *)&g_gpu_A.data[0], e_cpu_A->size[0], &d_gpu_tau.data[0],
                                     static_cast<real_T *>
                                     (getCuSolverWorkspaceBuff()),
                                     *getCuSolverWorkspaceReq(), g_gpu_info);
                    checkCudaError(cudaMemcpy(&f_cpu_info, g_gpu_info, 4ULL,
                      cudaMemcpyDeviceToHost), __FILE__, __LINE__);
                    if (f_cpu_info != 0) {
                      for (idfx = 0; idfx < 2; idfx++) {
                        AX[idfx] = e_cpu_A->size[idfx];
                      }

                      k = e_cpu_A->size[0] * e_cpu_A->size[1];
                      e_cpu_A->size[0] = AX[0];
                      e_cpu_A->size[1] = AX[1];
                      emxEnsureCapacity_real_T(e_cpu_A, k, &mc_emlrtRTEI);
                      idfx = AX[0] * AX[1] - 1;
                      mwGetLaunchParameters1D(computeNumIters(idfx), &grid,
                        &block, 2147483647U);
                      gpuEmxEnsureCapacity_real_T(e_cpu_A, &g_gpu_A, true);
                      validLaunchParams = mwValidateLaunchParameters(grid, block);
                      if (validLaunchParams) {
                        mpcStep_kernel173<<<grid, block>>>(idfx, g_gpu_A);
                      }
                    }
                  }

                  numIters = computeNumIters(m - 1, m - 1);
                  mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
                  gpuEmxEnsureCapacity_real_T(b_cpu_Q, &b_gpu_Q, true);
                  A_powers_needsGpuEnsureCapacity = false;
                  validLaunchParams = mwValidateLaunchParameters(grid, block);
                  if (validLaunchParams) {
                    mpcStep_kernel174<<<grid, block>>>(g_gpu_A, m - 1, m - 1,
                      b_gpu_Q, b_cpu_Q->size[0U], e_cpu_A->size[0U]);
                  }

                  A_powers_outdatedOnGpu = false;
                }

                i = 0;
                do {
                  exitg1 = 0;
                  if (i + 1 <= nA) {
                    if (empty_non_axis_sizes) {
                      gpuEmxMemcpyGpuToCpu_real_T(b_cpu_R, &b_gpu_R);
                    }

                    empty_non_axis_sizes = false;
                    if (std::abs(b_cpu_R->data[i + b_cpu_R->size[0] * i]) <
                        1.0E-12) {
                      exitg1 = 1;
                    } else {
                      i++;
                    }
                  } else {
                    for (i = 0; i < n; i++) {
                      for (lda = 0; lda < n; lda++) {
                        c_cpu_b->size[0] = b_cpu_Q->size[0];
                        idfx = b_cpu_Q->size[0] - 1;
                        mwGetLaunchParameters1D(computeNumIters(idfx), &grid,
                          &block, 2147483647U);
                        if (A_powers_needsGpuEnsureCapacity) {
                          gpuEmxEnsureCapacity_real_T(b_cpu_Q, &b_gpu_Q,
                            !A_powers_outdatedOnGpu);
                        }

                        A_powers_needsGpuEnsureCapacity = false;
                        gpuEmxEnsureCapacity_real_T(c_cpu_b, &f_gpu_b, true);
                        if (A_powers_outdatedOnGpu) {
                          gpuEmxMemcpyCpuToGpu_real_T(&b_gpu_Q, b_cpu_Q);
                        }

                        A_powers_outdatedOnGpu = false;
                        validLaunchParams = mwValidateLaunchParameters(grid,
                          block);
                        if (validLaunchParams) {
                          mpcStep_kernel150<<<grid, block>>>(lda, b_gpu_Q, idfx,
                            f_gpu_b, b_cpu_Q->size[0U]);
                        }

                        h_cpu_A->size[0] = 1;
                        h_cpu_A->size[1] = cpu_Linv->size[0];
                        idfu = cpu_Linv->size[0] - 1;
                        mwGetLaunchParameters1D(computeNumIters(idfu), &grid,
                          &block, 2147483647U);
                        gpuEmxEnsureCapacity_real_T(h_cpu_A, &h_gpu_A, true);
                        validLaunchParams = mwValidateLaunchParameters(grid,
                          block);
                        if (validLaunchParams) {
                          mpcStep_kernel151<<<grid, block>>>(i, gpu_Linv, idfu,
                            h_gpu_A, cpu_Linv->size[0U]);
                        }

                        if (cpu_Linv->size[0] < 1) {
                          t = 0.0;
                        } else {
                          cublasDdot(getCublasGlobalHandle(), cpu_Linv->size[0],
                                     (double *)&h_gpu_A.data[0], 1, (double *)
                                     &f_gpu_b.data[0], 1, (double *)&t);
                        }

                        if (QX_outdatedOnCpu) {
                          gpuEmxEnsureCapacity_real_T(b_cpu_TL, &b_gpu_TL, true);
                        }

                        QX_outdatedOnCpu = false;
                        mpcStep_kernel152<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                          (t, lda, i, b_gpu_TL, b_cpu_TL->size[0U]);
                        idfu_needsGpuEnsureCapacity = true;
                      }
                    }

                    AX[0] = cpu_RLinv->size[0];
                    AX[1] = cpu_RLinv->size[1];
                    numIters = computeNumIters(AX[1] - 1, AX[0] - 1);
                    mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
                    validLaunchParams = mwValidateLaunchParameters(grid, block);
                    if (validLaunchParams) {
                      mpcStep_kernel153<<<grid, block>>>(AX[0] - 1, AX[1] - 1,
                        gpu_RLinv, cpu_RLinv->size[0U]);
                    }

                    for (lda = 0; lda < nA; lda++) {
                      nx = nA - lda;
                      mpcStep_kernel154<<<dim3(1U, 1U, 1U), dim3(32U, 1U, 1U)>>>
                        (lda, nA, gpu_RLinv, cpu_RLinv->size[0U]);
                      k = nA - lda;
                      b = computeEndIdx(static_cast<int64_T>(k),
                                        static_cast<int64_T>(nA), 1LL);
                      mwGetLaunchParameters1D(computeNumIters(b), &grid, &block,
                        2147483647U);
                      if (idx_needsGpuEnsureCapacity) {
                        gpuEmxEnsureCapacity_real_T(b_cpu_R, &b_gpu_R, true);
                      }

                      idx_needsGpuEnsureCapacity = false;
                      validLaunchParams = mwValidateLaunchParameters(grid, block);
                      if (validLaunchParams) {
                        mpcStep_kernel155<<<grid, block>>>(b_gpu_R, k, nx, b,
                          gpu_RLinv, cpu_RLinv->size[0U], b_cpu_R->size[0U]);
                      }

                      if (nx > 1) {
                        for (i = 0; i <= nx - 2; i++) {
                          b = computeEndIdx(static_cast<int64_T>(nx),
                                            static_cast<int64_T>(nA), 1LL);
                          mwGetLaunchParameters1D(computeNumIters(b), &grid,
                            &block, 2147483647U);
                          validLaunchParams = mwValidateLaunchParameters(grid,
                            block);
                          if (validLaunchParams) {
                            mpcStep_kernel156<<<grid, block>>>(b_gpu_R, nx, i +
                              1, b, gpu_RLinv, cpu_RLinv->size[0U],
                              b_cpu_R->size[0U]);
                          }
                        }
                      }
                    }

                    for (i = 0; i < n; i++) {
                      b = computeEndIdx(static_cast<int64_T>(i + 1),
                                        static_cast<int64_T>(n), 1LL);
                      for (int64_T j{0LL}; j <= b; j++) {
                        cpu_H->data[i + cpu_H->size[0] * (static_cast<int32_T>
                          ((i + 1) + j) - 1)] = 0.0;
                        c = computeEndIdx(static_cast<int64_T>(nA + 1),
                                          static_cast<int64_T>(n), 1LL);
                        for (int64_T b_k{0LL}; b_k <= c; b_k++) {
                          if (idfu_needsGpuEnsureCapacity) {
                            gpuEmxMemcpyGpuToCpu_real_T(b_cpu_TL, &b_gpu_TL);
                          }

                          idfu_needsGpuEnsureCapacity = false;
                          cpu_H->data[i + cpu_H->size[0] * (static_cast<int32_T>
                            ((i + 1) + j) - 1)] -= b_cpu_TL->data[i +
                            b_cpu_TL->size[0] * (static_cast<int32_T>((nA + 1) +
                            b_k) - 1)] * b_cpu_TL->data[(static_cast<int32_T>((i
                            + 1) + j) + b_cpu_TL->size[0] * (static_cast<int32_T>
                            ((nA + 1) + b_k) - 1)) - 1];
                        }

                        cpu_H->data[(static_cast<int32_T>((i + 1) + j) +
                                     cpu_H->size[0] * i) - 1] = cpu_H->data[i +
                          cpu_H->size[0] * (static_cast<int32_T>((i + 1) + j) -
                                            1)];
                        H_outdatedOnGpu = true;
                        H_needsGpuEnsureCapacity = true;
                      }
                    }

                    numIters = computeNumIters(nA - 1, n - 1);
                    mwGetLaunchParameters1D(numIters, &grid, &block, 2147483647U);
                    if (QX_outdatedOnCpu) {
                      gpuEmxEnsureCapacity_real_T(b_cpu_TL, &b_gpu_TL, true);
                    }

                    if (D_needsGpuEnsureCapacity) {
                      gpuEmxEnsureCapacity_real_T(cpu_D, &gpu_D, true);
                    }

                    D_needsGpuEnsureCapacity = false;
                    validLaunchParams = mwValidateLaunchParameters(grid, block);
                    if (validLaunchParams) {
                      mpcStep_kernel157<<<grid, block>>>(gpu_RLinv, b_gpu_TL, nA,
                        n - 1, nA - 1, gpu_D, cpu_D->size[0U], b_cpu_TL->size[0U],
                        cpu_RLinv->size[0U]);
                    }

                    g_cpu_a->size[0] = cpu_H->size[0];
                    g_cpu_a->size[1] = cpu_H->size[1];
                    idfx = cpu_H->size[0] * cpu_H->size[1] - 1;
                    mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
                      2147483647U);
                    if (H_needsGpuEnsureCapacity) {
                      gpuEmxEnsureCapacity_real_T(cpu_H, &gpu_H,
                        !H_outdatedOnGpu);
                    }

                    H_needsGpuEnsureCapacity = false;
                    gpuEmxEnsureCapacity_real_T(g_cpu_a, &f_gpu_a, true);
                    if (H_outdatedOnGpu) {
                      gpuEmxMemcpyCpuToGpu_real_T(&gpu_H, cpu_H);
                    }

                    H_outdatedOnGpu = false;
                    validLaunchParams = mwValidateLaunchParameters(grid, block);
                    if (validLaunchParams) {
                      mpcStep_kernel146<<<grid, block>>>(gpu_H, idfx, f_gpu_a);
                    }

                    e_cpu_B->size[0] = cpu_result->size[1];
                    idfx = cpu_result->size[1] - 1;
                    mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
                      2147483647U);
                    gpuEmxEnsureCapacity_real_T(e_cpu_B, &e_gpu_B, true);
                    validLaunchParams = mwValidateLaunchParameters(grid, block);
                    if (validLaunchParams) {
                      mpcStep_kernel147<<<grid, block>>>(gpu_result, MaxWSiter,
                        idfx, e_gpu_B, cpu_result->size[0U]);
                    }

                    if ((g_cpu_a->size[0] == 0) || (g_cpu_a->size[1] == 0) ||
                        (e_cpu_B->size[0] == 0)) {
                      k = cpu_z->size[0];
                      cpu_z->size[0] = g_cpu_a->size[0];
                      emxEnsureCapacity_real_T(cpu_z, k, &cc_emlrtRTEI);
                      idfx = g_cpu_a->size[0] - 1;
                      mwGetLaunchParameters1D(computeNumIters(idfx), &grid,
                        &block, 2147483647U);
                      gpuEmxEnsureCapacity_real_T(cpu_z, &gpu_z, true);
                      validLaunchParams = mwValidateLaunchParameters(grid, block);
                      if (validLaunchParams) {
                        mpcStep_kernel148<<<grid, block>>>(idfx, gpu_z);
                      }
                    } else {
                      k = cpu_z->size[0];
                      cpu_z->size[0] = g_cpu_a->size[0];
                      emxEnsureCapacity_real_T(cpu_z, k, &ib_emlrtRTEI);
                      absx = 1.0;
                      cMin = 0.0;
                      gpuEmxEnsureCapacity_real_T(cpu_z, &gpu_z, true);
                      cublasDgemm(getCublasGlobalHandle(), CUBLAS_OP_N,
                                  CUBLAS_OP_N, g_cpu_a->size[0], 1,
                                  g_cpu_a->size[1], (double *)&absx, (double *)
                                  &f_gpu_a.data[0], g_cpu_a->size[0], (double *)
                                  &e_gpu_B.data[0], g_cpu_a->size[1], (double *)
                                  &cMin, (double *)&gpu_z.data[0], g_cpu_a->
                                  size[0]);
                    }

                    for (i = 0; i < nA; i++) {
                      f_cpu_b->size[0] = cpu_D->size[0];
                      idfx = cpu_D->size[0] - 1;
                      mwGetLaunchParameters1D(computeNumIters(idfx), &grid,
                        &block, 2147483647U);
                      if (D_needsGpuEnsureCapacity) {
                        gpuEmxEnsureCapacity_real_T(cpu_D, &gpu_D, true);
                      }

                      D_needsGpuEnsureCapacity = false;
                      gpuEmxEnsureCapacity_real_T(f_cpu_b, &e_gpu_b, true);
                      validLaunchParams = mwValidateLaunchParameters(grid, block);
                      if (validLaunchParams) {
                        mpcStep_kernel149<<<grid, block>>>(i, gpu_D, idfx,
                          e_gpu_b, cpu_D->size[0U]);
                      }

                      if (cpu_result->size[1] < 1) {
                        t = 0.0;
                      } else {
                        cublasDdot(getCublasGlobalHandle(), cpu_result->size[1],
                                   (double *)&gpu_AcRow.data[0], 1, (double *)
                                   &e_gpu_b.data[0], 1, (double *)&t);
                      }

                      if (r_outdatedOnCpu) {
                        gpuEmxMemcpyGpuToCpu_real_T(cpu_r, &gpu_r);
                      }

                      cpu_r->data[i] = t;
                      r_outdatedOnCpu = false;
                    }

                    exitg1 = 2;
                  }
                } while (exitg1 == 0);

                if (exitg1 == 1) {
                  exitg2 = 1;
                } else {
                  b_guard2 = true;
                }
              }

              if (b_guard2) {
                nx = 0;
                cMin = 0.0;
                ColdReset = true;
                empty_non_axis_sizes = true;
                if (nA > meq) {
                  outsize_idx_0 = nA - meq;
                  cpu_info_t = 1;
                  exitg6 = false;
                  while ((!exitg6) && (cpu_info_t <= outsize_idx_0)) {
                    if (r_outdatedOnCpu) {
                      gpuEmxMemcpyGpuToCpu_real_T(cpu_r, &gpu_r);
                    }

                    r_outdatedOnCpu = false;
                    if (cpu_r->data[cpu_info_t - 1] >= 1.0E-12) {
                      empty_non_axis_sizes = false;
                      exitg6 = true;
                    } else {
                      cpu_info_t++;
                    }
                  }
                }

                if ((nA != meq) && (!empty_non_axis_sizes)) {
                  outsize_idx_0 = nA - meq;
                  for (i = 0; i < outsize_idx_0; i++) {
                    if (r_outdatedOnCpu) {
                      gpuEmxMemcpyGpuToCpu_real_T(cpu_r, &gpu_r);
                    }

                    r_outdatedOnCpu = false;
                    if (cpu_r->data[i] > 1.0E-12) {
                      if (gU_outdatedOnGpu) {
                        gpuEmxMemcpyGpuToCpu_real_T(cpu_lam, &gpu_lam);
                      }

                      gU_outdatedOnGpu = false;
                      if (iC_outdatedOnCpu) {
                        gpuEmxMemcpyGpuToCpu_int32_T(cpu_iC, &gpu_iC);
                      }

                      iC_outdatedOnCpu = false;
                      absx = cpu_lam->data[cpu_iC->data[i] - 1] / cpu_r->data[i];
                      if ((nx == 0) || (absx < rMin)) {
                        rMin = absx;
                        nx = i + 1;
                      }
                    }
                  }

                  if (nx > 0) {
                    cMin = rMin;
                    ColdReset = false;
                  }
                }

                f_cpu_A->size[0] = 1;
                f_cpu_A->size[1] = cpu_z->size[0];
                idfx = cpu_z->size[0] - 1;
                mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
                  2147483647U);
                gpuEmxEnsureCapacity_real_T(f_cpu_A, &f_gpu_A, true);
                validLaunchParams = mwValidateLaunchParameters(grid, block);
                if (validLaunchParams) {
                  mpcStep_kernel132<<<grid, block>>>(gpu_z, idfx, f_gpu_A);
                }

                d_cpu_B->size[0] = cpu_result->size[1];
                idfx = cpu_result->size[1] - 1;
                mwGetLaunchParameters1D(computeNumIters(idfx), &grid, &block,
                  2147483647U);
                gpuEmxEnsureCapacity_real_T(d_cpu_B, &c_gpu_B, true);
                validLaunchParams = mwValidateLaunchParameters(grid, block);
                if (validLaunchParams) {
                  mpcStep_kernel133<<<grid, block>>>(gpu_result, MaxWSiter, idfx,
                    c_gpu_B, cpu_result->size[0U]);
                }

                if (cpu_z->size[0] < 1) {
                  absx = 0.0;
                } else {
                  cublasDdot(getCublasGlobalHandle(), cpu_z->size[0], (double *)
                             &f_gpu_A.data[0], 1, (double *)&c_gpu_B.data[0], 1,
                             (double *)&absx);
                }

                if (absx <= 0.0) {
                  absx = 0.0;
                  empty_non_axis_sizes = true;
                } else {
                  if (cpu_result->size[1] < 1) {
                    t = 0.0;
                  } else {
                    if (FU_needsGpuEnsureCapacity) {
                      gpuEmxEnsureCapacity_real_T(cpu_z_solution,
                        &gpu_z_solution, !FU_outdatedOnGpu);
                    }

                    FU_needsGpuEnsureCapacity = false;
                    if (FU_outdatedOnGpu) {
                      gpuEmxMemcpyCpuToGpu_real_T(&gpu_z_solution,
                        cpu_z_solution);
                    }

                    FU_outdatedOnGpu = false;
                    cublasDdot(getCublasGlobalHandle(), cpu_result->size[1],
                               (double *)&gpu_AcRow.data[0], 1, (double *)
                               &gpu_z_solution.data[0], 1, (double *)&t);
                  }

                  if (gX_needsGpuEnsureCapacity) {
                    gpuEmxMemcpyGpuToCpu_real_T(cpu_b, &gpu_b);
                  }

                  gX_needsGpuEnsureCapacity = false;
                  absx = (cpu_b->data[MaxWSiter] - t) / absx;
                  empty_non_axis_sizes = false;
                }

                if (ColdReset && empty_non_axis_sizes) {
                  exitg2 = 1;
                } else {
                  if (empty_non_axis_sizes) {
                    t = cMin;
                  } else if (ColdReset) {
                    t = absx;
                  } else if (cMin < absx) {
                    t = cMin;
                  } else {
                    t = absx;
                  }

                  for (i = 0; i < nA; i++) {
                    if (gU_outdatedOnGpu) {
                      gpuEmxMemcpyGpuToCpu_real_T(cpu_lam, &gpu_lam);
                    }

                    if (iC_outdatedOnCpu) {
                      gpuEmxMemcpyGpuToCpu_int32_T(cpu_iC, &gpu_iC);
                    }

                    if (r_outdatedOnCpu) {
                      gpuEmxMemcpyGpuToCpu_real_T(cpu_r, &gpu_r);
                    }

                    r_outdatedOnCpu = false;
                    cpu_lam->data[cpu_iC->data[i] - 1] -= t * cpu_r->data[i];
                    gU_outdatedOnGpu = false;
                    iC_outdatedOnCpu = false;
                    if ((cpu_iC->data[i] <= static_cast<int32_T>(b_t) - meq) &&
                        (cpu_lam->data[cpu_iC->data[i] - 1] < 0.0)) {
                      cpu_lam->data[cpu_iC->data[i] - 1] = 0.0;
                    }
                  }

                  if (gU_outdatedOnGpu) {
                    gpuEmxMemcpyGpuToCpu_real_T(cpu_lam, &gpu_lam);
                  }

                  cpu_lam->data[MaxWSiter] += t;
                  gU_outdatedOnGpu = false;
                  if ((std::abs(t - cMin) < 2.2204460492503131E-16) && (nx > 0))
                  {
                    if (gX_outdatedOnGpu) {
                      gpuEmxMemcpyGpuToCpu_boolean_T(cpu_iA, &gpu_iA);
                    }

                    if (iC_outdatedOnCpu) {
                      gpuEmxMemcpyGpuToCpu_int32_T(cpu_iC, &gpu_iC);
                    }

                    iC_outdatedOnCpu = false;
                    cpu_iA->data[cpu_iC->data[nx - 1] - 1] = false;
                    gX_outdatedOnGpu = false;
                    if (nx < nA) {
                      b = computeEndIdx(static_cast<int64_T>(nx),
                                        static_cast<int64_T>(nA - 1), 1LL);
                      for (int64_T j{0LL}; j <= b; j++) {
                        cpu_iC->data[static_cast<int32_T>(nx + j) - 1] =
                          cpu_iC->data[static_cast<int32_T>(nx + j)];
                      }
                    }

                    cpu_iC->data[nA - 1] = 0;
                    nA--;
                  }

                  if (!empty_non_axis_sizes) {
                    if (cpu_z_solution->size[0] == cpu_z->size[0]) {
                      idfx = cpu_z_solution->size[0] - 1;
                      mwGetLaunchParameters1D(computeNumIters(idfx), &grid,
                        &block, 2147483647U);
                      if (FU_needsGpuEnsureCapacity) {
                        gpuEmxEnsureCapacity_real_T(cpu_z_solution,
                          &gpu_z_solution, !FU_outdatedOnGpu);
                      }

                      FU_needsGpuEnsureCapacity = false;
                      if (FU_outdatedOnGpu) {
                        gpuEmxMemcpyCpuToGpu_real_T(&gpu_z_solution,
                          cpu_z_solution);
                      }

                      validLaunchParams = mwValidateLaunchParameters(grid, block);
                      if (validLaunchParams) {
                        mpcStep_kernel134<<<grid, block>>>(gpu_z, t, idfx,
                          gpu_z_solution);
                      }

                      FU_outdatedOnGpu = false;
                      gU_needsGpuEnsureCapacity = true;
                    } else {
                      if (gU_needsGpuEnsureCapacity) {
                        gpuEmxMemcpyGpuToCpu_real_T(cpu_z_solution,
                          &gpu_z_solution);
                      }

                      gpuEmxMemcpyGpuToCpu_real_T(cpu_z, &gpu_z);
                      binary_expand_op_1(cpu_z_solution, t, cpu_z);
                      gU_needsGpuEnsureCapacity = false;
                      FU_outdatedOnGpu = true;
                      FU_needsGpuEnsureCapacity = true;
                    }

                    if (std::abs(t - absx) < 2.2204460492503131E-16) {
                      if (nA == n) {
                        exitg2 = 1;
                      } else {
                        if (nA <= 2147483646) {
                          nA++;
                        }

                        if (iC_outdatedOnCpu) {
                          gpuEmxMemcpyGpuToCpu_int32_T(cpu_iC, &gpu_iC);
                        }

                        cpu_iC->data[nA - 1] = MaxWSiter + 1;
                        iC_outdatedOnCpu = false;
                        i = nA - 1;
                        while ((i + 1 > 1) && (cpu_iC->data[i] <= cpu_iC->data[i
                                - 1])) {
                          outsize_idx_0 = cpu_iC->data[i];
                          cpu_iC->data[i] = cpu_iC->data[i - 1];
                          cpu_iC->data[i - 1] = outsize_idx_0;
                          i--;
                        }

                        if (gX_outdatedOnGpu) {
                          gpuEmxMemcpyGpuToCpu_boolean_T(cpu_iA, &gpu_iA);
                        }

                        cpu_iA->data[MaxWSiter] = true;
                        gX_outdatedOnGpu = false;
                        MaxWSiter = -1;
                        exitflag++;
                      }
                    } else {
                      exitflag++;
                    }
                  } else {
                    exitflag++;
                  }
                }
              }
            } else {
              if (cpu_z_solution->size[0] == 0) {
                absx = 0.0;
              } else {
                if (FU_needsGpuEnsureCapacity) {
                  gpuEmxEnsureCapacity_real_T(cpu_z_solution, &gpu_z_solution,
                    !FU_outdatedOnGpu);
                }

                FU_needsGpuEnsureCapacity = false;
                if (FU_outdatedOnGpu) {
                  gpuEmxMemcpyCpuToGpu_real_T(&gpu_z_solution, cpu_z_solution);
                }

                FU_outdatedOnGpu = false;
                cublasDnrm2(getCublasGlobalHandle(), cpu_z_solution->size[0],
                            (double *)&gpu_z_solution.data[0], 1, (double *)
                            &absx);
              }

              if (std::abs(absx - Xnorm0) > 0.001) {
                Xnorm0 = absx;
                nx = cpu_b->size[0];
                c_cpu_y->size[0] = cpu_b->size[0];
                mwGetLaunchParameters1D(computeNumIters(nx - 1), &grid, &block,
                  2147483647U);
                gpuEmxEnsureCapacity_real_T(c_cpu_y, &c_gpu_y, true);
                validLaunchParams = mwValidateLaunchParameters(grid, block);
                if (validLaunchParams) {
                  mpcStep_kernel186<<<grid, block>>>(gpu_b, nx - 1, c_gpu_y);
                }

                k = cpu_cTol->size[0];
                cpu_cTol->size[0] = c_cpu_y->size[0];
                emxEnsureCapacity_real_T(cpu_cTol, k, &fc_emlrtRTEI);
                nx = c_cpu_y->size[0];
                mwGetLaunchParameters1D(computeNumIters(nx - 1), &grid, &block,
                  2147483647U);
                gpuEmxEnsureCapacity_real_T(cpu_cTol, &gpu_cTol, true);
                validLaunchParams = mwValidateLaunchParameters(grid, block);
                if (validLaunchParams) {
                  mpcStep_kernel187<<<grid, block>>>(c_gpu_y, nx - 1, gpu_cTol);
                }

                FX_needsGpuEnsureCapacity = true;
                cTolComputed = false;
              }

              exitg2 = 2;
            }
          } while (exitg2 == 0);

          if (exitg2 == 1) {
            exitg5 = true;
          }
        }
      }
    }
  }

  emxFree_real_T(&f_cpu_b);
  emxFree_real_T(&i_cpu_A);
  emxFree_real_T(&e_cpu_b);
  emxFree_real_T(&e_cpu_B);
  emxFree_real_T(&g_cpu_a);
  emxFree_real_T(&h_cpu_A);
  emxFree_real_T(&d_cpu_b);
  emxFree_real_T(&c_cpu_b);
  emxFree_real_T(&f_cpu_a);
  emxFree_real_T(&g_cpu_A);
  emxFree_real_T(&b_cpu_b);
  emxFree_real_T(&d_cpu_work);
  emxFree_real_T(&c_cpu_work);
  emxFree_real_T(&b_cpu_work);
  emxFree_real_T(&cpu_work);
  emxFree_real_T(&d_cpu_tau);
  emxFree_real_T(&d_cpu_B);
  emxFree_real_T(&f_cpu_A);
  emxFree_real_T(&c_cpu_tau);
  emxFree_real_T(&b_cpu_tau);
  emxFree_real_T(&cpu_dv1);
  emxFree_real_T(&cpu_tau);
  emxFree_real_T(&b_cpu_R);
  emxFree_real_T(&b_cpu_Q);
  emxFree_real_T(&c_cpu_B);
  emxFree_real_T(&cpu_z);
  emxFree_real_T(&e_cpu_A);
  emxFree_real_T(&cpu_dv);
  emxFree_real_T(&c_cpu_y);
  emxFree_real_T(&cpu_R);
  emxFree_real_T(&cpu_Q);
  emxFree_real_T(&b_cpu_B);
  emxFree_real_T(&b_cpu_TL);
  emxFree_real_T(&cpu_B);
  emxFree_real_T(&cpu_AcRow);
  emxFree_real_T(&d_cpu_A);
  emxFree_real_T(&b_cpu_y);
  emxFree_real_T(&e_cpu_a);
  emxFree_real_T(&d_cpu_a);
  emxFree_real_T(&b_cpu_x);
  emxFree_real_T(&cpu_TL);
  emxFree_real_T(&c_cpu_a);
  emxFree_real_T(&cpu_Rhs);
  emxFree_real_T(&cpu_Opt);
  emxFree_int32_T(&cpu_iC);
  emxFree_real_T(&cpu_cTol);
  emxFree_real_T(&U);
  emxFree_real_T(&cpu_H);
  emxFree_real_T(&cpu_D);
  emxFree_real_T(&b_cpu_a);
  emxFree_real_T(&cpu_RLinv);
  emxFree_real_T(&cpu_r);
  emxFree_real_T(&cpu_lam);
  emxFree_boolean_T(&cpu_iA);
  emxFree_real_T(&cpu_b);
  emxFree_real_T(&cpu_result);
  emxFree_real_T(&cpu_Hinv);
  emxFree_real_T(&cpu_Linv);
  emxFree_real_T(&cpu_f);
  if (gU_needsGpuEnsureCapacity) {
    gpuEmxMemcpyGpuToCpu_real_T(cpu_z_solution, &gpu_z_solution);
  }

  out = cpu_z_solution->data[static_cast<int32_T>((prediction_horizon + 1.0) +
    1.0) - 1];
  emxFree_real_T(&cpu_z_solution);
  emlrtHeapReferenceStackLeaveFcnR2012b(emlrtRootTLSGlobal);
  gpuEmxFree_real_T(&gpu_z_ref);
  gpuEmxFree_real_T(&gpu_A_powers);
  gpuEmxFree_real_T(&gpu_AX);
  gpuEmxFree_real_T(&gpu_BU);
  checkCudaError(mwCudaFree(gpu_info_t), __FILE__, __LINE__);
  gpuEmxFree_real_T(&gpu_QX);
  gpuEmxFree_real_T(&gpu_RU);
  gpuEmxFree_int8_T(&gpu_FX);
  gpuEmxFree_int16_T(&gpu_gX);
  gpuEmxFree_int8_T(&gpu_FU);
  gpuEmxFree_int16_T(&gpu_gU);
  gpuEmxFree_int32_T(&gpu_iv4);
  gpuEmxFree_int32_T(&gpu_iv5);
  gpuEmxFree_real_T(&gpu_idfx);
  gpuEmxFree_int32_T(&gpu_iv10);
  gpuEmxFree_int32_T(&gpu_iv12);
  gpuEmxFree_real_T(&gpu_idfu);
  gpuEmxFree_int32_T(&gpu_iv13);
  gpuEmxFree_int32_T(&gpu_iv15);
  gpuEmxFree_real_T(&gpu_idx);
  gpuEmxFree_int32_T(&gpu_iv);
  gpuEmxFree_int32_T(&gpu_iv2);
  gpuEmxFree_real_T(&gpu_idxx);
  gpuEmxFree_int32_T(&gpu_iv6);
  gpuEmxFree_int32_T(&gpu_iv7);
  gpuEmxFree_int32_T(&gpu_iv8);
  gpuEmxFree_real_T(&gpu_y);
  gpuEmxFree_int8_T(&gpu_I);
  gpuEmxFree_real_T(&gpu_H_mat);
  gpuEmxFree_int8_T(&gpu_inequality_matrix);
  gpuEmxFree_int16_T(&gpu_inequality_vector);
  gpuEmxFree_int8_T(&b_gpu_I);
  gpuEmxFree_real_T(&gpu_varargin_2);
  gpuEmxFree_real_T(&gpu_equality_matrix);
  gpuEmxFree_real_T(&gpu_a);
  gpuEmxFree_real_T(&gpu_f);
  gpuEmxFree_int8_T(&c_gpu_I);
  gpuEmxFree_real_T(&gpu_Linv);
  gpuEmxFree_real_T(&gpu_d);
  gpuEmxFree_boolean_T(&b_gpu_x);
  gpuEmxFree_real_T(&b_gpu_A);
  gpuEmxFree_real_T(&gpu_s);
  gpuEmxFree_real_T(&i_gpu_A);
  gpuEmxFree_real_T(&gpu_A);
  gpuEmxFree_real_T(&gpu_Hinv);
  gpuEmxFree_real_T(&gpu_result);
  gpuEmxFree_real_T(&gpu_superb);
  gpuEmxFree_int8_T(&gpu_varargin_1);
  checkCudaError(mwCudaFree(gpu_ii), __FILE__, __LINE__);
  gpuEmxFree_real_T(&gpu_b);
  gpuEmxFree_boolean_T(&gpu_iA);
  gpuEmxFree_real_T(&gpu_z_solution);
  gpuEmxFree_real_T(&gpu_lam);
  gpuEmxFree_real_T(&gpu_r);
  gpuEmxFree_real_T(&gpu_RLinv);
  gpuEmxFree_real_T(&b_gpu_a);
  gpuEmxFree_real_T(&gpu_D);
  gpuEmxFree_real_T(&gpu_H);
  gpuEmxFree_real_T(&gpu_cTol);
  gpuEmxFree_int32_T(&gpu_iC);
  gpuEmxFree_real_T(&gpu_Opt);
  gpuEmxFree_real_T(&gpu_Rhs);
  gpuEmxFree_real_T(&g_gpu_a);
  gpuEmxFree_real_T(&gpu_TL);
  gpuEmxFree_real_T(&gpu_x);
  gpuEmxFree_real_T(&e_gpu_a);
  gpuEmxFree_real_T(&d_gpu_a);
  gpuEmxFree_real_T(&b_gpu_y);
  gpuEmxFree_real_T(&c_gpu_A);
  gpuEmxFree_real_T(&gpu_AcRow);
  gpuEmxFree_real_T(&gpu_B);
  gpuEmxFree_real_T(&b_gpu_TL);
  gpuEmxFree_real_T(&b_gpu_B);
  gpuEmxFree_real_T(&gpu_Q);
  gpuEmxFree_real_T(&gpu_R);
  gpuEmxFree_real_T(&c_gpu_y);
  gpuEmxFree_real_T(&gpu_dv);
  gpuEmxFree_real_T(&g_gpu_A);
  gpuEmxFree_real_T(&gpu_z);
  gpuEmxFree_real_T(&d_gpu_B);
  gpuEmxFree_real_T(&b_gpu_Q);
  gpuEmxFree_real_T(&b_gpu_R);
  gpuEmxFree_real_T(&b_gpu_tau);
  gpuEmxFree_real_T(&gpu_dv1);
  gpuEmxFree_real_T(&gpu_tau);
  gpuEmxFree_real_T(&d_gpu_tau);
  gpuEmxFree_real_T(&f_gpu_A);
  gpuEmxFree_real_T(&c_gpu_B);
  gpuEmxFree_real_T(&c_gpu_tau);
  gpuEmxFree_real_T(&b_gpu_work);
  gpuEmxFree_real_T(&gpu_work);
  gpuEmxFree_real_T(&d_gpu_work);
  gpuEmxFree_real_T(&c_gpu_work);
  gpuEmxFree_real_T(&d_gpu_b);
  gpuEmxFree_real_T(&e_gpu_A);
  gpuEmxFree_real_T(&c_gpu_a);
  gpuEmxFree_real_T(&f_gpu_b);
  gpuEmxFree_real_T(&b_gpu_b);
  gpuEmxFree_real_T(&h_gpu_A);
  gpuEmxFree_real_T(&f_gpu_a);
  gpuEmxFree_real_T(&e_gpu_B);
  gpuEmxFree_real_T(&c_gpu_b);
  gpuEmxFree_real_T(&d_gpu_A);
  gpuEmxFree_real_T(&e_gpu_b);
  checkCudaError(mwCudaFree(d_gpu_info), __FILE__, __LINE__);
  checkCudaError(mwCudaFree(h_gpu_info), __FILE__, __LINE__);
  checkCudaError(mwCudaFree(b_gpu_info), __FILE__, __LINE__);
  checkCudaError(mwCudaFree(f_gpu_info), __FILE__, __LINE__);
  checkCudaError(mwCudaFree(c_gpu_info), __FILE__, __LINE__);
  checkCudaError(mwCudaFree(g_gpu_info), __FILE__, __LINE__);
  checkCudaError(mwCudaFree(gpu_info), __FILE__, __LINE__);
  checkCudaError(mwCudaFree(e_gpu_info), __FILE__, __LINE__);
  checkCudaError(mwCudaFree(gpu_atmp), __FILE__, __LINE__);
  return out;
}

// End of code generation (mpcStep.cu)
