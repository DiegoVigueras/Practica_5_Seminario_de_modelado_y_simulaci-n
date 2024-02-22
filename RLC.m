function dx=RLC(t,x)
%- - - - - - - - Definición de los parametros - - - - - - - %
R= 120;  
L= 4e-3;  
C= 0.1e-6;
%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - %
% frecuencia = 1/(2e-3); 
% amplitud = 12;
% duracion = 0.1; 
% % Generar la onda cuadrada
% V = amplitud * square(2 * pi * frecuencia * t)

A=0.001;
T= 0.002;
d=0:T:t;
V= pulstran(t-0.0005,d,'rectpuls',A)*12;
%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - %
dx=zeros(2,1);
%- - - - - - - definición de la dinámica del sistema - - - - %
dx(1)=x(2);
dx(2)=(1/L)*((-R*x(2))-((1/C)*x(1))+V);
%- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - %
