# inverter_network_repo
 This project is dedicated to researching harmonic resonance stability in a voltage source network. The circuit is created and modified from [Modeling and Analysis of Harmonic Stability in an AC Power-Electronics-Based Power System](https://ieeexplore.ieee.org/document/6740802). MATLAB 2023A is used to create and simulate this model. Simcape and Simcape electrical modules are required to simulate this...

 ## Components 

 ![image](https://github.com/embeddedhao/inverter_network_repo/assets/97690128/7e16d202-dd82-4240-b05f-2197389039f9)


 ## How to use 
1. run init.m to initialize all parameters. To experiment with stable case parameters, use the Run Section to run the first and second sections. To experiment with unstable case parameters, run the first and third sections.

2. run simulation file inverter_network.slx.

## System block diagram
![image](https://github.com/embeddedhao/inverter_network_repo/assets/97690128/69374836-17a2-4ed2-9bce-cb86a4b6cf8e)
Cite from: [Modeling and Analysis of Harmonic Stability in an AC Power-Electronics-Based Power System](https://ieeexplore.ieee.org/document/6740802)

## Simulation results 
The voltage and current measurements are taken from the scope in Voltage Controlled VSC.
### Stable case 
![image](https://github.com/embeddedhao/inverter_network_repo/assets/97690128/0516ea4c-d5a2-4ff6-b4a8-8daf357cfa8d)
### Unstable case
![image](https://github.com/embeddedhao/inverter_network_repo/assets/97690128/f25451a4-87c9-47f9-9ecc-ffbbe6842ca3)
![image](https://github.com/embeddedhao/inverter_network_repo/assets/97690128/d2828744-17a3-4509-898d-de5134d63351)
The oscillation frequency is around 1.924kHz and the switching frequency is 10kHz. The current ripple is not contributed by IGBT switching. 


