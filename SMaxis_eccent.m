function [a,e] = SMaxis_eccent(Ra,Rp)

    % Semi-major axis
    a = (Rp+Ra)/2;

    % Eccentricity
    e = (a-Rp)/a;

end

