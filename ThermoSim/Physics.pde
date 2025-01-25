// Use Newton's law of Cooling to determine rate of
// heat transfer between outside and house

float transferLaw(float t1, float t2) {
  
  float deltaT = t1 - t2;
  
  // Factor in insulation of house in heat transfer equation
  float q = (0.1 - (house.insulation * (0.09/100)) ) * (deltaT);

  return q;
}
