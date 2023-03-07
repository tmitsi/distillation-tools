function v_percentage = plates(number,percentage,zoom)
  if nargin == 0
    azeo_diagram();
    xlim([0, 98]);
    ylim([78, 100]);
    return;
  endif
  hold on;

  azeo_diagram();
  vv = percentage/100;
  temp = tliquid(vv);
  plot(percentage, temp,'c.','MarkerSize',13, 'DisplayName',strcat('boiler abv (%)=',num2str(percentage)))
  plot([percentage percentage], [0, temp],'k-','HandleVisibility','off')

  for ii = 0:number
    newtemp = temp;
    temp = tliquid(vv);
    v_percentage = tvapor(vv);

    plot(vv*100,temp, '.','MarkerSize',5,'HandleVisibility','off')
    plot(v_percentage,temp, '.','MarkerSize',5,'HandleVisibility','off')
    plot([vv*100 v_percentage], [temp temp],'k-.','HandleVisibility','off')

    vv = v_percentage/100;
    newtemp = tliquid(vv);

    plot([v_percentage v_percentage], [temp newtemp],'k-.','HandleVisibility','off')
  endfor
  plot([v_percentage v_percentage], [0 newtemp],'k-','HandleVisibility','off')
  plot(v_percentage, newtemp,'r.','MarkerSize',13, 'DisplayName',strcat('abv (%)=',num2str(v_percentage)))

  low_x = 0;
  high_y = 78;
  if zoom
    low_x = percentage - 2;
    high_y = tliquid(percentage/100) + 1;
  endif
  % resize diagram
  xlim([low_x, 98]);
  ylim([78, high_y]);

endfunction

