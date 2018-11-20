function init(x_start, y_start)
  figure();
  axis([0 100 0 100]);
  hold();
  rectangle('Position', [0 0 100 100]);
  plot([50; 50], [100; 95]);
  rectangle('Position', [15 2 20 10]);
  rectangle('Position', [65 2 20 10]);
  plot([x_start], [y_start], 's');
end