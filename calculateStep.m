function newCoordinates = calculateStep(curr_x, curr_y, curr_fi, theta, v)
  
  new_fi = curr_fi + theta;
  new_x = curr_x + v*cos(new_fi*pi/180);
  new_y = curr_y + v*sin(new_fi*pi/180);
  
  newCoordinates = [new_x, new_y, new_fi];
end