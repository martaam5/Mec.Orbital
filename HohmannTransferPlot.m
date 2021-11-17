function HT = HohmannTransferPlot(Planet,theta)

a = Planet.HT_a;
e = Planet.HT_e;
HT = a*(1-e^2)./(1+e.*cos(theta));

end

