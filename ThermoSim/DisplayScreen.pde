void displayScreen() {

  background(255);




  // fill outside
  noStroke();
  fill(tempToColour(outsideTemp));
  rect(0, 0, 600, 350);

  //Draw House
  house.drawMe();

  //ground fill
  noStroke();
  fill(64, 161, 40);
  rect(0, 350, 600, 70);

  //ground line
  strokeWeight(3);
  stroke(0);
  line(0, 350, 600, 350);

  //Temperatures Panel
  noStroke();
  fill(240);
  rect(0, 420, width, 180);
  stroke(0);

  fill(0);
  textAlign(CENTER);
  textSize(30);
  text("Temperatures", 700, 60);

  text(str( float(round(house.temp*10))/10.0 ), 655, 130);
  text(str( float(round(setHouseTemp*10))/10.0 ), 745, 130);
  text(str( float(round(outsideTemp*10))/10.0 ), 700, 225);

  textSize(20);
  text("Actual", 655, 155);
  text("Desired", 745, 155);
  text("Outisde", 700, 250);


  text("Furnace:", 665, 325);
  text("A/C:", 665, 375);

  // furnace and ac indicators
  if (furnace.on) {
    stroke(173, 43, 43);
    fill(255, 179, 179);
    rect(715, 303, 70, 30);
    
    stroke(0);
    fill(0);
    text("ON", 750, 325);
  } 
  else {
    stroke(150);
    fill(220);
    rect(715, 303, 70, 30);
    
    stroke(0);
    fill(0);
    text("OFF", 750, 325);
  }
  
  
  if (ac.on) {
    stroke(43, 76, 173);
    fill(179, 255, 247);
    rect(715, 353, 70, 30);
    
    stroke(0);
    fill(0);
    text("ON", 750, 375);
  } 
  else {
    stroke(150);
    fill(220);
    rect(715, 353, 70, 30);
    
    stroke(0);
    fill(0);
    text("OFF", 750, 375);
  }

  // Display temps screen
  if (screen.equals("temps")) {

    noStroke();
    fill(240, 246, 255);
    rect(0, 420, width, 180);
    stroke(0);

    
    // Show/hide GUI
    houseTempSlider.setVisible(true);

    heatingSlider.setVisible(false);
    coolingSlider.setVisible(false);
    heatingCheckbox.setVisible(false);
    coolingCheckbox.setVisible(false);

    insulationSlider.setVisible(false);
    tempRangeSlider.setVisible(false);
    
    fill(0);
    textSize(15);
    text("Auto On:", 400, 490);
    
    autoCheckbox.setVisible(true);
    
    // Change display for when auto is enabled
    if (autoTemp) {
      outsideTempSlider.setVisible(false);
      fill(0);
    textAlign(CENTER);
    textSize(20);
      text(("Temp: " + str(outsideTemp) + "C      at Time: " + hours[time]), 575, 515);
      
    }
    else {
      outsideTempSlider.setVisible(true);
    }
    
    fill(0);
    textAlign(CENTER);
    textSize(25);
    text("Desired House Temp", 225, 470);
    text("Outside Temp", 575, 470);
  }

// Display house screen
  if (screen.equals("house")) {

    noStroke();
    fill(242, 255, 240);
    rect(0, 420, width, 180);
    stroke(0);
    
    //Show/hide GUI
    outsideTempSlider.setVisible(false);
    houseTempSlider.setVisible(false);

    heatingSlider.setVisible(false);
    coolingSlider.setVisible(false);
    heatingCheckbox.setVisible(false);
    coolingCheckbox.setVisible(false);

    insulationSlider.setVisible(true);
    tempRangeSlider.setVisible(true);
    
    autoCheckbox.setVisible(false);

    // labels
    fill(0);
    textAlign(CENTER);
    textSize(25);
    text("House Insulation", 225, 470);
    text("House Temp Range (+/-)", 575, 470);
  }

  //Display furnace screen
  if (screen.equals("furnace")) {

    noStroke();
    fill(255, 240, 240);
    rect(0, 420, width, 180);
    stroke(0);

    outsideTempSlider.setVisible(false);
    houseTempSlider.setVisible(false);

    heatingSlider.setVisible(true);
    coolingSlider.setVisible(true);
    heatingCheckbox.setVisible(true);
    coolingCheckbox.setVisible(true);

    insulationSlider.setVisible(false);
    tempRangeSlider.setVisible(false);
    
    autoCheckbox.setVisible(false);

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

  // App section seperation lines
  strokeWeight(5);
  stroke(0);
  line(0, 420, width, 420);
  line(600, 0, 600, 420);
}
