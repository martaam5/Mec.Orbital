function Planet = HohmannTransfer_Earth2Planet(gSL,Isp,Sun,Earth,Planet)

% Hohmann Transfer Orbit parameters
a = (Earth.D+Planet.D)/2;
e = abs((Earth.D-Planet.D)/(Earth.D+Planet.D));

% Period and transfer time
T = 2*pi*sqrt(a^3/Sun.mu);
time = T/2;

% Velocities at perihelion
V0 = sqrt(Sun.mu/Earth.D);
Vp = sqrt(Sun.mu*(2/Earth.D-1/a));

% Velocities at apohelion
Va = sqrt(Sun.mu*(2/Planet.D-1/a));
Vf = sqrt(Sun.mu/Planet.D);

% Velocities increment
incV1 = Vp-V0;
incV2 = Vf-Va;
incV = incV1+incV2;

% Fuel mass ratio 
incM_m0 = 1-exp(-incV/(Isp*gSL));

% Results
Planet.HT_a = a;
Planet.HT_e = e;
Planet.HT_time = time;
Planet.HT_time_d = days(seconds(time));
Planet.HT_incV = incV;
Planet.HT_incM_m0 = incM_m0;

end

