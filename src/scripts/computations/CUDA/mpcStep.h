/*
*
*    These are codegenerated versions of the MPC 
*    control step that are used to run the algorithm on GPU
*    
*/ 


#pragma once

// Include files
#include "mpcStep_types.h"
#include "rtwtypes.h"
#include "emlrt.h"
#include "mex.h"
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>

// Custom Header Code

#ifdef __CUDA_ARCH__
#undef printf
#endif

// Function Declarations
real_T mpcStep(real_T v_ref, real_T v_meas, const struct0_T *stateSpace,
               real_T velocity_penalty, real_T prediction_horizon,
               real_T torque_penalty);

// End of code generation (mpcStep.h)
