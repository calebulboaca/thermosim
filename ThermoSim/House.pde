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
  
  void updateTemp(boolean f) {
  
    if(f) {
      this.temp += furnace.eff/1000;
    } 
    else {
      this.temp -= 0.01;
    }
    
  }
}
