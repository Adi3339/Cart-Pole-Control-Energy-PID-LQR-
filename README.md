# cart-pole-control-lqr-vs-pid
Cart-pole control with PID, LQR, and energy-based methods, including full-state feedback and performance comparison.

A simulation video of complete energy swing plus manual tuned LQR is linked below. 
https://github.com/user-attachments/assets/930ac133-6156-4fa4-b9ac-14e5b80df067

## Overview
This project implements a nonlinear cart–pole system in Simscape Multibody and designs two controllers:
- Full‑state feedback (LQR-style) — manually tuned on the real nonlinear plant
- PID‑based control — with smooth blending between angle and position regulation
- The system can swing up from the downward position, stabilize upright, track cart        position, and recover from large disturbances while staying in ±300 N actuator limits.

## Key Features
- Nonlinear Simscape Multibody cart–pole model
- Manual state‑feedback controller vs analytical LQR comparison
- PID‑θ and PID‑x with smooth transition logic
- Angle wrapping using atan2
- Force/torque disturbance injection (150–200 N pulses, step inputs)
- Robust stabilization from extreme initial conditions (x = ±15 m, θ = π)

## Observations
- Theoretical LQR gains required tuning due to nonlinear multibody dynamics
- LQR showed reduced oscillations and improved stability compared to PID
- PID exhibited larger amplitude and oscillations even after tuning

## Results
- Successful swing‑up and stabilization
- Manual K outperforms analytical LQR on the nonlinear plant
- Comparison of system response under similar initial conditions:
 LQR: lower oscillation amplitude (~3m)
 PID: higher oscillations (~5–6m)

## Structure
- models/ -> Simulink and Simscape models for PID, LQR, and energy-based control  
- scripts/ -> MATLAB scripts for parameter initialization and controller design  
- results/ -> Simulation outputs and comparison plots

## Tools
- Matlab, Simulink, Simscape

## License
MIT License
