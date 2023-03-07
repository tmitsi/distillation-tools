function p = tvapor(liq)
% usage:  tvapor(liq), liq given in percentage, e.g, 10 for 10%
%
% Calculates the percentage of ethanol in vapour if condensed (v/v)
% data taken from https://homedistiller.org/wiki/htm/calcs/calcs_calc.htm
  p = (-94.7613*liq .^ 8 + 450.932 * liq .^ 7 - 901.175 * liq .^ 6 + 985.803 * liq.^5 - 644.997 * liq .^ 4 + 259.985 * liq.^ 3 - 64.5050 * liq.^ 2 + 9.71706 * liq)*100;
endfunction
