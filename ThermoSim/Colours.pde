// Function to get colour gradients from temp
color tempToColour(float temp) {

  // scale temps to avoid negatives
  float tempScaled = temp+20;
  
  // Red value highest at hot temps
  float Rfactor = abs(tempScaled-60) * (150/60);
  float GFactor;
  
  // Blue value highest at cold temps
  float BFactor = tempScaled * (150/60);
  
  // Green value highest at mild temps, around 20
  if (tempScaled <= 40) {
    GFactor = abs(tempScaled-40) * (120/40);
  }
  else {
    GFactor = (tempScaled-40) * (120/20);
  }
  
  float r = 255-Rfactor;
  float g = 255-GFactor;
  float b = 255-BFactor;
  
  return color(r, g, b);
}
