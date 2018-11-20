x = 30;
y = 30;
fi = 0.0;
theta = 1;
init(x, y);
fis = readfis('fuzzyCar')
parkBackwards(x, y, fi, theta, fis)

function plotCarGraph(x, y)
  plot([x], [y], 's');
end

function newCoordinates = calculateStep(curr_x, curr_y, curr_fi, theta)
  
  new_fi = curr_fi + theta;
  new_x = curr_x + 2*cos(new_fi);
  new_y = curr_y + 2*sin(new_fi);
  
  newCoordinates = [new_x, new_y, new_fi];
end

function init(x_start, y_start)
  figure();
  axis([0 100 0 100]);
  hold();
  rectangle('Position', [0 0 100 100]);
  plot([50; 50], [100; 95]);
  plot([x_start], [y_start], 's');
end

function walkInCircles(x, y, fi, theta)
  for c = 1:100
    pause(0.1);
    newCoordinates = calculateStep(x, y, fi, theta);
    x = newCoordinates(1);
    y = newCoordinates(2);
    fi = newCoordinates(3);
    plotCarGraph(x, y);
  end
end

function parkBackwards(x, y, fi, theta, fis)
  for c = 1:1000
    pause(0.1);
    input = [x, fi]
    new_theta = evalfis(fis,input);
    newCoordinates = calculateStep(x, y, fi, new_theta);
    x = newCoordinates(1);
    y = newCoordinates(2);
    fi = newCoordinates(3);
    plotCarGraph(x, y);
  end
end
