function parkBackwards(x, y, fi, theta, fis)
  for c = 1:1000
    pause(0.1);
    input = [x, fi];
    new_theta = evalfis(input,fis);
    newCoordinates = calculateStep(x, y, fi, new_theta);
    x = newCoordinates(1);
    y = newCoordinates(2);
    fi = newCoordinates(3);
    plotCarGraph(x, y);
  end
end