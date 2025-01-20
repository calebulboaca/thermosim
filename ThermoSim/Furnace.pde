class Furnace {

  //Fields
  int eff;
  boolean on;
  
  //Constructor
  Furnace(int e) {
    this.eff = e;
  }
  
  //Methods
  void drawMe() {
  
  
  }
  
  void updateMe() {
    
    //println(setHouseTemp - house.temp);
    //println(this.on);
    if( (setHouseTemp - house.temp) > 1) {
      this.on = true;
    }
    else{
      this.on = false;
    }
    
  }
}
