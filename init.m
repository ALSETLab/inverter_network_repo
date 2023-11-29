clc, clear all;

frequency = 50;
omega = 2*pi*frequency;

vbase = 400; %vbase is 400v
sbase = 10000; %base power is 10kVA
rbase = vbase^2/sbase;

igbt_ron_pu = 1e-3/rbase;
igbt_snb_pu = 1e6/rbase;

vdc = 400*1.88;

Tsc = 100e-6;
fsw = 1/Tsc;

vref_rms = 300*(0.707*sqrt(3));

vc_l = 0.03*rbase;
vc_c = 0.13*rbase;

vi_l = 0.3*rbase;
vi_c = 0.024*rbase;
vi_lg = 0.035*rbase;
si_real = 0.1*sbase;
si_imag = 0*sbase;

%% Stable case 
%Current controlled inverter parameters
Lf = 4e-3;%H
Lf_r = 0.3;%Ohm

Cf = 2e-5;%F
Cf_r = 1;%Ohm

Lg =  0.24e-3;%H

kpgi = 5; 
krgi = 200;  

%Voltage Controlled VSC Controller
L_fv = 1.5e-3;%H
C_gv = 1.5e-3;%F

krv = 100;     
kpv = 0.1;    
kpi = 8;     

%Transmission Line parameters
R_line = 0.013*rbase;     %Ohm
L_line = 0.003*rbase/omega;  %H

%% Unstable case 
%Current controlled inverter parameters 
kpgi = 15;  %unstable case  15
krgi = 600;  %unstable case  600

