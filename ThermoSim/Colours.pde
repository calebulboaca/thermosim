color tempToColour(float temp) {

  float tempScaled = temp+20;
  
  float Rfactor = abs(tempScaled-60) * (150/60);
  float GFactor;
  float BFactor = tempScaled * (150/60);
  
  if (tempScaled <= 30) {
    GFactor = abs(tempScaled-30) * (120/30);
  }
  else {
    GFactor = (tempScaled-30) * (120/30);
  }
  
  float r = 255-Rfactor;
  float g = 255-GFactor;
  float b = 255-BFactor;
  
  println(g);
  
  return color(r, g, b);
}
