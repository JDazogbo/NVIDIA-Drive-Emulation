# NVIDIA Drive Emulation
This project emulates the computation and control algorithm implementation similar to those deployed on DRIVE AGX Thor, NVidia's flagship GPU platform for autonomous driving. By utilizing a consumer-grade NVIDIA GTX 1050 Ti GPU, this project demonstrates the feasibility of running advanced autonomous driving algorithms through Processor-in-the-Loop (PiL) simulation.

<div align="center">
  <img src="documentation\pictures\driveCycleAnimation.gif" alt="Hierarchical Architecture for Planning and Control" style="width:90%;" />
  <p><em>Figure 1: Processor in the Loop Emulation of the GPU Deployed Model Predictive Control.</em></p>
</div>

## Project Goals
1. Emulate NVIDIA DRIVE AGX Thor's communication to the device.

<div align="center">
  <img src="documentation\pictures\nvidiaDriveWorkflow.png" alt="Hierarchical Architecture for Planning and Control" style="width:70%;" />
  <p><em>Figure 2: NVIDIA's 3 computer solution for autonomous vehicle .</em></p>
</div>

2. Implement and optimize MPC algorithms for GPU execution.

<div align="center">
  <img src="documentation\pictures\simulinkBlockDiagram.png" alt="Simulink block diagram with the control algorithm implementation" style="width:70%;" />
  <p><em>Figure 3: SIMULINK Block Diagram of a Model Predictive Controler for torque control on a 1 DOF Vehicle.</em></p>
</div>

## Technical Details
- **Control Algorithm**: Implementation of Model Predictive Control (MPC) for drive cycle tracking.
- **Development Environment**: MATLAB/Simulink with CUDA integration.
- **Processor in the Loop (HiL)**: NVIDIA Graphics Card (NVIDIA GTX 1050 Ti) as DRIVE AGX Thor proxy.

## Tools and Setup

### MATLAB/SIMULINK Toolboxes

- [MATLAB](https://www.mathworks.com/products/matlab.html)
- [Simulink](https://www.mathworks.com/products/simulink.html)
- [GPU Coder](https://www.mathworks.com/products/gpu-coder.html)
- [MATLAB Coder](https://www.mathworks.com/products/matlab-coder.html)
- [Optimization Toolbox](https://www.mathworks.com/products/optimization.html)
- [Parallel Computing Toolbox](https://www.mathworks.com/products/parallel-computing.html)
- [Powertrain Blockset](https://www.mathworks.com/products/powertrain.html)
- [Vehicle Dynamics Blockset](https://www.mathworks.com/products/vehicle-dynamics.html)

### C/C++ Compiler

To generate and compile CUDA code from MATLAB/Simulink, you must install a supported C++ compiler. You cannot simply install the Microsoft Visual C++ Redistributables; you must install the full Visual Studio IDE. This installation provides the necessary `cl.exe` compiler, linker, and build toolchain that MATLAB's GPU Coder requires to translate MATLAB code into CUDA kernels and compile them for your NVIDIA GPU.

If you are using a recent version of MATLAB, you may encounter the following error when compiling with recent Visual Studio versions:
> `fatal error C1189: #error: -- unsupported Microsoft Visual Studio version!`

This occurs because recent VS 2022 updates increased the compiler version (v19.40+) beyond what the current CUDA Toolkit supports.

To resolve this, you must install a previous version of Visual Studio. Since the 2019 Community edition is no longer easily accessible, install **Visual Studio Professional 2019**. You generally do not need an active Professional subscription just to install the C++ toolchains required for compilation.

 **Download Link:** [Visual Studio 2019 Release History](https://learn.microsoft.com/en-us/visualstudio/releases/2019/history)

## Key Project Components

This section highlights the core files responsible for the control logic, GPU acceleration, and simulation environment.

### 1. Control Logic (MATLAB): [`src/scripts/computations/mpcStep.m`](src/scripts/computations/mpcStep.m)
    
The core Model Predictive Control algorithm. It implements a condensed Quadratic Programming (QP) formulation to calculate optimal torque inputs based on the reference velocity and current state. This is the source file used by GPU Coder to generate the CUDA kernels.

### 2. GPU Acceleration (CUDA): [`src/scripts/computations/CUDA/`](src/scripts/computations/CUDA/)

Contains the generated C++/CUDA source code (`.cu`, `.h`). These files represent the optimized kernels that execute the MPC prediction and cost evaluation in parallel on the NVIDIA GTX 1050 Ti.

### 3. Simulation Environment (Simulink):
[`src/simulations/main.slx`](src/simulations/main.slx) is the top-level simulation harness. It integrates the vehicle dynamics plant, the drive cycle reference generator, and the controller into a complete closed-loop simulation.


[`src/models/modelPredictiveController.slx`](src/models/modelPredictiveController.slx) is the specific controller subsystem. This model wraps the MATLAB Function block.

## References

### NVIDIA On Demand Explanation Video

This project is inspired by NVIDIA's developments in autonomous vehicle computing, particularly their DRIVE AGX Thor platform. For more information, see [NVIDIA's presentation on autonomous driving solutions](https://www.nvidia.com/en-us/on-demand/session/gtcfall20-a21441/).

<div align="center">
  <img src="documentation\pictures\nvidiaPlanningControlArchitecture.png" alt="Hierarchical Architecture for Planning and Control" style="width:70%;" />
  <p><em>Figure 4: NVIDIA Autonomous Driving Planning and Control Architecture.</em></p>
</div>

### Mathworks MATLAB to CUDA translation process

The [Deploy MATLAB and Simulink to NVIDIA GPUs](https://www.mathworks.com/videos/deploy-matlab-and-simulink-to-nvidia-gpus-1719423008590.html) provides a comprehensive overview of the workflow for generating optimized CUDA code from MATLAB and Simulink and is what served as a guide for the development of this project. It demonstrates how to use GPU Coder to translate high-level MATLAB code into CUDA kernels that can be deployed directly onto NVIDIA GPUs for accelerated performance.