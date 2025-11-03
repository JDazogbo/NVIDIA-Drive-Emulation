# NVIDIA Drive Emulation

## Overview
This project emulates the computation and control algorithm implementation similar to those found in NVIDIA DRIVE AGX Thor, the flagship GPU platform for autonomous driving. By utilizing a consumer-grade NVIDIA GTX 1050 Ti GPU, this project demonstrates the feasibility of running advanced autonomous driving algorithms through Software-in-the-Loop (SiL) simulation.

## Technical Details
- **Control Algorithm**: Implementation of Model Predictive Control (MPC) for drive cycle tracking
- **Development Environment**: MATLAB/Simulink with CUDA integration
- **Hardware in the Loop (HiL)**: NVIDIA Graphics Card (NVIDIA GTX 1050 Ti) as DRIVE AGX Thor proxy
- **Performance Analysis**: Real-time comparison between GPU and CPU execution

## Project Goals
1. Emulate NVIDIA DRIVE AGX Thor's communication to the device

<div align="center">
  <img src="documentation\pictures\nvidiaDriveWorkflow.png" alt="Hierarchical Architecture for Planning and Control" style="width:70%;" />
  <p><em>Figure 1: NVIDIA's 3 computer solution for autonomous vehicle development</em></p>
</div>

2. Implement and optimize MPC algorithms for GPU execution

<div align="center">
  <img src="documentation\pictures\simulinkBlockDiagram.png" alt="Hierarchical Architecture for Planning and Control" style="width:70%;" />
  <p><em>Figure 2: SIMULINK Block Diagram of a Model Predictive Controler for torque control on a 1 DOF Vehicle</em></p>
</div>

3. Demonstrate parallel computation capabilities for autonomous driving applications
4. Evaluate real-time performance in a HiL environment

## References
This project is inspired by NVIDIA's developments in autonomous vehicle computing, particularly their DRIVE AGX Thor platform. For more information, see [NVIDIA's presentation on autonomous driving solutions](https://www.nvidia.com/en-us/on-demand/session/gtcfall20-a21441/).

<div align="center">
  <img src="documentation\pictures\nvidiaPlanningControlArchitecture.png" alt="Hierarchical Architecture for Planning and Control" style="width:70%;" />
  <p><em>Figure 2: NVIDIA Autonomous Driving Planning and Control Architecture </em></p>
</div>