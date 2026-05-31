%% Backup Roll Balancing — System Parameters
% Load this script before running the Simulink model.

%% PID Controller
kp  = 15;
kc  = 5;
ki1 = 0.12;
kd  = 4.98;

%% Servo Valve Dynamics
ymax  = 0.001;   % max spool displacement [m]
Kv    = 5e-4;    % valve gain [m/A]
omega = 250;     % natural frequency [rad/s]
Dv    = 0.6;     % damping ratio [-]
Imax  = 0.01;    % max input current [A]

%% Linearised Flow Rate Equation
Qo  = 95.144;    % system flow rate [L/min]
KQy = Qo / ymax; % flow gain [L/(min·m)]

%% Pressure Dynamics (Continuity Equation)
E    = 1.5e9;    % bulk modulus of elasticity [Pa]
Vc   = 100e-6;   % average fluid volume in cylinder chambers [m³]
D    = 0.38;     % piston diameter [m]
drod = 0.36;     % rod diameter [m]
Apiston = (pi/4) * D^2;    % piston area [m²]
Arod    = (pi/4) * drod^2; % rod area [m²]
Gint = 1e-12;    % internal leakage coefficient [m³/(s·Pa)]

%% Equation of Motion — Hydraulic Cylinder Piston
m      = 4000;   % mass of piston + rolls [kg]
F      = 150000; % external load [N]
d      = 1000;   % viscous friction coefficient [N·s/m]
stroke = 0.21;   % max piston stroke [m]
