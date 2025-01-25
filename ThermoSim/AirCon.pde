// Air conditioner
class AirCon {

  //Fields
  float eff;
  boolean enabled;
  boolean on;
  
  //Constructor
  AirCon(float e) {
    this.eff = e;
    this.enabled = true;
  }
  
  //Methods
  void updateMe() {
    
    // only update if ac on and furnace not on
    if (this.enabled && !furnace.on) {
      
      // Feedback loop - turn on based on user set temp +/- range
      if( (house.temp - setHouseTemp) > -house.range ) {
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
