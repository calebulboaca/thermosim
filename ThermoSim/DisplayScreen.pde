void displayScreen() {

  background(255);
  
  strokeWeight(5);
  line(0, 420, width, 420);
  line(600, 0, 600, 420);
  
  
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
    
  }

}
