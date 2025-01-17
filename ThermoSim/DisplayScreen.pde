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
  
  
  
  
  fill(0);
  textAlign(CENTER);
  textSize(25);
  text("Desired House Temp", 225, 470);
  text("Outside Temp", 575, 470);
  
  //if (screen.equals("intro")) {
  
  
  //}

}
