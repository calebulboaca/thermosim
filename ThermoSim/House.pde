class House {
  //Fields
  float temp;
  float insulation;
  float range;
  
  //Constructor
  House(float t, float i, float r) {
    this.temp = t;
    this.insulation = i;
    this.range = r;
  }
  
  //Methods
  void drawMe() {
  
    // fill inside
    fill(tempToColour(this.temp));
    rect(200, 200, 200, 150);
    triangle(200, 200, 300, 100, 400, 200);
  
    //walls
    stroke(0);
    strokeWeight(3 + house.insulation*(8.0/100.0));
    line(200, 350, 200, 200);
    line(400, 350, 400, 200);
  
    //roof
    fill(0);
    noStroke();
    quad(160, 220, 170, 230, 300, 100, 300, 80);
    quad(440, 220, 430, 230, 300, 100, 300, 80);
    stroke(0);
    strokeWeight(3);
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
      
  }
  
  void updateTemp() {
  
    // Use physics model to approach outside temp
    this.temp += transferLaw(outsideTemp, this.temp);
    
    // update factoring in power of furnace/ac
    if (furnace.on) {
      
      this.temp += furnace.eff/100.0;
    } 
    if (ac.on) {
      
      this.temp -= ac.eff/100.0;
    }
    
  }
}
