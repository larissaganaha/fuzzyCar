function finalPosition = park(x, y, fi, v, s2)
  for c = 1:1000
    pause(0.1);
    input = [x, fi];
    fuzzyResults = evalfis(input,s2);
    if fuzzyResults(2) > 1.75
        break
    end
    newCoordinates = calculateStep(x, y, fi, fuzzyResults(1), v);
    %v = fuzzyResults(1);
    x = newCoordinates(1);
    y = newCoordinates(2);
    fi = newCoordinates(3);
    plotCarGraph(x, y);
  end
  
  finalPosition = [x, y];
end