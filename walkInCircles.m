function walkInCircles(x, y, fi, theta, v)
  for c = 1:100
    pause(0.1);
    newCoordinates = calculateStep(x, y, fi, theta, v);
    x = newCoordinates(1);
    y = newCoordinates(2);
    fi = newCoordinates(3);
    plotCarGraph(x, y);
  end
end