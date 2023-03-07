function azeo_diagram()
% helper hunction to plot the water/ethanol equilibrium diagram
% data taken from https://homedistiller.org/wiki/htm/calcs/calcs_calc.htm
  step = 0.00001;

  % Define the range of ethanol concentrations to plot
  x = [0:step:1];

  % Calculate the boiling point temperatures for the liquid and gas phases
  T_liquid_vals = tliquid(x);
  gas_vals = tvapor(x);

  % Create figure
  hFig = gcf();
  set (hFig, 'PaperType', 'a4');
  set (hFig, 'PaperOrientation', 'landscape');

  hold on;
  grid on;
  grid minor;

  % Plot the azeotrope temperature
  azeo = 95.62;
  plot(azeo,tliquid(azeo/100),'b.','MarkerSize',13);

  % Plot the phase diagram
  plot(x*100, T_liquid_vals, 'b-', 'LineWidth', 1);
  plot(gas_vals,T_liquid_vals, 'r-', 'LineWidth', 1);

  % Add info to figure
  xlabel('Ethanol concentration by volume (%)');
  ylabel('Temperature (°C)');
  legend('Azeotrope','Liquid phase', 'Gas phase');
  title({'Ethanol-water mixture phase diagram',' '});
  x_tick=[0:2:98];
  y_tick = [75:1:100];
  set(gca,'xtick',x_tick)
  set(gca,'ytick',y_tick);
  set(gca, 'FontSize', 9);
endfunction

