void displayScreen() {

  background(255);
  
  
  
  
  
  // fill colours:
  //ground
  noStroke();
  fill(64, 161, 40);
  rect(0, 350, 600, 70);
  
  //outside
  fill(tempToColour(outsideTemp));
  rect(0, 0, 600, 350);
  
  //inside
  fill(tempToColour(house.temp));
  rect(200, 200, 200, 150);
  triangle(200, 200, 300, 100, 400, 200);
  
  // App section seperation lines
  strokeWeight(5);
  stroke(0);
  line(0, 420, width, 420);
  line(600, 0, 600, 420);
  
  //ground
  strokeWeight(3);
  line(0, 350, 600, 350);
  
  //house
  line(200, 350, 200, 200);
  line(400, 350, 400, 200);
  
  //roof
  fill(24, 23, 33);
  noStroke();
  quad(160, 220, 170, 230, 300, 100, 300, 80);
  quad(440, 220, 430, 230, 300, 100, 300, 80);
  stroke(0);
  line(170, 230, 300, 100);
  line(430, 230, 300, 100);
  line(160, 220, 300, 80);
  line(440, 220, 300, 80);
  line(170, 230, 160, 220);
  line(430, 230, 440, 220);
  
  //chimney
  fill(46, 25, 10);
  quad(380, 160, 380, 90, 340, 90, 340, 120);
  line(380, 160, 380, 90);
  line(340, 120, 340, 90);
  line(380, 90, 340, 90);
  
  
  
  fill(0);
  textAlign(CENTER);
  textSize(30);
  text("Temperatures", 700, 50);
  
  text(str( float(round(house.temp*10))/10.0 ), 700, 110);
  text(str( float(round(setHouseTemp*10))/10.0 ), 700, 200);
  text(str( float(round(outsideTemp*10))/10.0 ), 700, 290);
  
  textSize(20);
  text("Actual", 700, 135);
  text("Desired", 700, 225);
  text("Outisde", 700, 315);
  
  
  if (furnace.on) {
    text("Furnace On", 700, 370);
  }
  else {
    text("Furnace Off", 700, 370);
  }
  
  
  if (screen.equals("temps")) {
    
    outsideTempSlider.setVisible(true);
    houseTempSlider.setVisible(true);
   
    heatingSlider.setVisible(false);
    coolingSlider.setVisible(false);
    heatingCheckbox.setVisible(false);
    coolingCheckbox.setVisible(false);
    
    fill(0);
    textAlign(CENTER);
    textSize(25);
    text("Desired House Temp", 225, 470);
    text("Outside Temp", 575, 470);
  
  }
  
  if (screen.equals("house")) {
  
    outsideTempSlider.setVisible(false);
    houseTempSlider.setVisible(false);
    
    heatingSlider.setVisible(false);
    coolingSlider.setVisible(false);
    heatingCheckbox.setVisible(false);
    coolingCheckbox.setVisible(false);
    
  }
  
  if (screen.equals("furnace")) {
  
    outsideTempSlider.setVisible(false);
    houseTempSlider.setVisible(false);
    
    heatingSlider.setVisible(true);
    coolingSlider.setVisible(true);
    heatingCheckbox.setVisible(true);
    coolingCheckbox.setVisible(true);
    
    fill(0);
    textAlign(CENTER);
    textSize(25);
    text("Furnace Power", 620, 470);
    text("A/C Power", 380, 470);
    
    textSize(20);
    textAlign(LEFT);
    text("Furnace On", 130, 495);
    text("A/C On", 130, 523);
    
  }

}
