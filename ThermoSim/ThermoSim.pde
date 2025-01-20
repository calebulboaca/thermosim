import g4p_controls.*;

Furnace furnace;
House house;
float outsideTemp;
float setHouseTemp;
int speed;

String screen;
String prevScreen;
String nextPrevScreen;

void setup(){

  size(800, 600);
  
  createGUI();
  
  screen = "temps";
  
  speed = 5;
  outsideTemp = 20;
  setHouseTemp = 23;
  furnace = new Furnace(100);
  house = new House(outsideTemp, 10);
  
}

void draw(){
  
  house.drawMe();
  furnace.drawMe();
  
  if (frameCount % int(100/speed) == 0) {
  
    update();
  }
  
  displayScreen();
  
}


void update() {
  
  furnace.updateMe();
  house.updateTemp();

}
