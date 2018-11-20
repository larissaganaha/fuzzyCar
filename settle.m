function settle(x, y, fi, v, s3)
  for c = 1:1000
    pause(0.1);
    input = [x, v];
    fuzzyResults = evalfis(input,s3);
    if fuzzyResults(2) > 0.8
        break
    end
    v = fuzzyResults(1);
    newCoordinates = calculateStep(x, y, fi, 0, v);
    x = newCoordinates(1);
    y = newCoordinates(2);
    fi = newCoordinates(3);
    plotCarGraph(x, y);
  end
end