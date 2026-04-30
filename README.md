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
### PID vs LQR (Initial Conditions: x = 4 m, θ = 15°)

The performance of PID and LQR controllers was compared under identical initial conditions.  
The results show a clear difference in stability and response characteristics.

- The PID controller exhibits larger amplitude oscillations in cart position and slower convergence.
- Even after tuning, PID shows noticeable steady-state oscillations.
- In contrast, LQR achieves a smoother transition with significantly reduced oscillations.
- For the pole angle, PID continues to oscillate around ±5°, whereas LQR converges cleanly to 0°.

![PID vs LQR Comparison](results/lqr_vs_pid_comparison.png)

---

### Disturbance Rejection (LQR)

The LQR controller was further evaluated under an external disturbance after the system was brought into the linear operating region.

- A disturbance force of 200 N was applied between 9–10 seconds.
- The controller maintained stability with minimal deviation.
- The pole angle remained within ±5° during the disturbance.
- The system quickly returned to equilibrium after the disturbance ended.

![Disturbance Response](results/lqr_disturbance.png)

---

### Simulation Demo (PID)

A simulation demonstrating the PID controller behavior is shown below:
https://github.com/user-attachments/assets/616088e9-541c-4599-80bb-cdac608b7cf1

## Structure
- models/ -> Simulink and Simscape models for PID, LQR, and energy-based control  
- scripts/ -> MATLAB scripts for parameter initialization and controller design  
- results/ -> Simulation outputs and comparison plots

## Tools
- Matlab, Simulink, Simscape

## License
MIT License
