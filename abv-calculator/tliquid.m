function t = tliquid(liq)
% usage:  tliquid(liq), liq given in percentage, e.g, 10 for 10%
%
% Calculates the temperature of a boiling water-ethanol mixture
% data taken from https://homedistiller.org/wiki/htm/calcs/calcs_calc.htm
  t = 60.526 * liq .^ 4 - 163.16 * liq .^ 3 + 163.96 * liq .^ 2 - 83.438 .* liq + 100;
endfunction
