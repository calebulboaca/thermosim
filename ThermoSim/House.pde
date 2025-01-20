class House {
  //Fields
  float temp;
  float insulation;
  
  //Constructor
  House(float t, float i) {
    this.temp = t;
    this.insulation = i;
  }
  
  //Methods
  void drawMe() {
  
  }
  
  void updateTemp() {
  
    this.temp += transferLaw(outsideTemp - this.temp);
    
    //println(transferLaw(outsideTemp - this.temp));
    
    if(furnace.on) {
      //println("increasing");
      this.temp += furnace.eff/100;
    } 
    //else {
    //  this.temp -= 0.01;
    //}
    
  }
}
