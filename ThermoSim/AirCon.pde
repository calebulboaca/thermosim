class AirCon {

  //Fields
  int eff;
  boolean enabled;
  boolean on;
  
  //Constructor
  AirCon(int e) {
    this.eff = e;
    this.enabled = true;
  }
  
  //Methods
  void drawMe() {
  
  
  }
  
  void updateMe() {
    
    if (this.enabled) {
      //println(setHouseTemp - house.temp);
      //println(this.on);
      if( (setHouseTemp - house.temp) > -1 ) {
        this.on = true;
      }
      else{
        this.on = false;
      }
      
    }
    else {
      this.on = false;
    }
  }
  
}
