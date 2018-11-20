function finalPosition = approachVallet(x, y, fi, v, s1)
  for c = 1:1000
    pause(0.1);
    input = [v, x];
    fuzzyResults = evalfis(input,s1);
    if fuzzyResults(2) > 0.8
        break
    end
    newCoordinates = calculateStep(x, y, fi, 0, fuzzyResults(1));
    v = fuzzyResults(1);
    x = newCoordinates(1);
    y = newCoordinates(2);
    fi = newCoordinates(3);
    plotCarGraph(x, y);
  end
  
  finalPosition = [x, y, fi];
end