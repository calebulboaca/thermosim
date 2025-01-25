
// IMPORTANT: DO NOT OPEN G4P GUI BUILDER ON THIS PROGRAM!
// The GUI will be reset to empty!

// Import G4P Library
import g4p_controls.*;

// Initialize Objects
House house;
Furnace furnace;
AirCon ac;

// Initialize main program variabled
float outsideTemp;
float setHouseTemp;
int speed;

String screen;
String prevScreen;
String nextPrevScreen;

// Initialize tools for auto time-temp
// and reading text file data
int updateCounter;
boolean autoTemp;
int time;
String[] hours = new String[24];
int[] tempData = new int[24];

void setup(){

  size(800, 600);
  
  createGUI();
  
  // Start at temps screen
  screen = "temps";
  
  // Set all necesasary start values
  updateCounter = 0;
  autoTemp = false;
  speed = 10;  // animation speed
  outsideTemp = 20;
  setHouseTemp = 23;
  furnace = new Furnace(150);
  ac = new AirCon(80);
  house = new House(outsideTemp, 10, 0.5);
  
  time = 0;
  
  // Fetch data from text file for auto
  getAutoData();
}


void draw(){
  
  
  //run animation at set speed, hard coded value
  if (frameCount % int(100/speed) == 0) {
  
    update();
  }
  // display everything on screen
  displayScreen();
  
}


void update() {
  // update counter keeps track of time for auto
  updateCounter += 1;
  
  // update main elements
  furnace.updateMe();
  ac.updateMe();
  house.updateTemp();
  
  // update automatically if auto turned on, every 15 updates
  if (autoTemp == true && updateCounter % 15 == 0) {
    autoUpdateTemp();
  }

}

void autoUpdateTemp() {
  // cycle time for 24hrs
  time += 1;
  if (time > 23) {time = 0;}
  
  // corresponding temp to time
  outsideTemp = tempData[time];

}

// load all data from txt file
void getAutoData() {
  String[] allData = loadStrings("tempCycles.txt");
  
  for (int i = 0; i < allData.length; i++) {
    String row = allData[i];
    String[] rowData = row.split(",");
    // split data, the send to its respective array
    hours[i] = rowData[0];
    tempData[i] = int(rowData[1]);
    
  }
 
}
