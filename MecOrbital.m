clc
clear all 

% Constants
G = 6.67.*10^-11;
Mt = 5.976.*10^24;
Ms = 1.989.*10^30;
Rt = 6.378.*10^6;
UA = 1.496.*10^11;
Rot = UA;
uT = G.*Mt; 
uS = G.*Ms;

% Apartado 1)

% Parámetros de la órbita elíptica:
apo = 3.*UA;
peri = 0.8.*UA;

% a) Parámetros de la órbita heliocéntrica:

    % semieje mayor
    a = (Rot+apo)./2
    
    % excentricidad
    e = (a-Rot)./a


% b) Representación órbita de transferencia:
    
    % Órbita de transferencia de Hohhman:
    theta = linspace(0, 2.*pi, 1000);
    rho_trans = (a*(1-e^2)./(1+e.*cos(theta)))./UA;
    polarplot(theta,rho_trans);
    hold on;

    % Órbita heliocéntrica de la Tierra:
    sigma = linspace(0, 2.*pi, 1000);
    rho_earth = linspace(Rot./UA, Rot./UA, 1000);
    polarplot(sigma,rho_earth);