// Furnace
class Furnace {

  //Fields
  float eff;
  boolean enabled;
  boolean on;
  
  //Constructor
  Furnace(float e) {
    this.eff = e;
    this.enabled = true;
  }
  
  //Methods
  void updateMe() {
    // Only update if enabled and ac off
    if (this.enabled && !ac.on) {
      // Feedback loop, based on error from user set temp +/- range
      if( (setHouseTemp - house.temp) > -house.range) {
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
