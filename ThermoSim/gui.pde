/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void custom_slider1_change1(GCustomSlider source, GEvent event) { //_CODE_:outsideTempSlider:603799:
  outsideTemp = outsideTempSlider.getValueF();
  
} //_CODE_:outsideTempSlider:603799:

public void custom_slider2_change1(GCustomSlider source, GEvent event) { //_CODE_:houseTempSlider:939036:
  setHouseTemp = houseTempSlider.getValueF();
} //_CODE_:houseTempSlider:939036:

public void button1_click1(GButton source, GEvent event) { //_CODE_:tempsButton:236669:
  screen = "temps";
} //_CODE_:tempsButton:236669:

public void button1_click2(GButton source, GEvent event) { //_CODE_:houseButton:267413:
  screen = "house";
} //_CODE_:houseButton:267413:

public void button1_click3(GButton source, GEvent event) { //_CODE_:furnaceButton:961810:
  screen = "furnace";
} //_CODE_:furnaceButton:961810:

public void custom_slider1_change2(GCustomSlider source, GEvent event) { //_CODE_:heatingSlider:400247:
  furnace.eff = heatingSlider.getValueF() * (150.0/100.0); // 100 - 150 scaling
} //_CODE_:heatingSlider:400247:

public void custom_slider1_change3(GCustomSlider source, GEvent event) { //_CODE_:coolingSlider:577241:
  ac.eff = coolingSlider.getValueF();
} //_CODE_:coolingSlider:577241:

public void checkbox1_clicked1(GCheckbox source, GEvent event) { //_CODE_:heatingCheckbox:707032:
  if (heatingCheckbox.isSelected()) {
    furnace.enabled = true;
  }
  else {
    furnace.enabled = false;
  }
} //_CODE_:heatingCheckbox:707032:

public void checkbox1_clicked2(GCheckbox source, GEvent event) { //_CODE_:coolingCheckbox:977283:
  if (coolingCheckbox.isSelected()) {
    ac.enabled = true;
  }
  else {
    ac.enabled = false;
  }
} //_CODE_:coolingCheckbox:977283:

public void insulation_change1(GCustomSlider source, GEvent event) { //_CODE_:insulationSlider:516896:
  house.insulation = insulationSlider.getValueF();
} //_CODE_:insulationSlider:516896:

public void tempRange_change1(GCustomSlider source, GEvent event) { //_CODE_:tempRangeSlider:231429:
   house.range = tempRangeSlider.getValueF();
} //_CODE_:tempRangeSlider:231429:

public void auto_clicked1(GCheckbox source, GEvent event) { //_CODE_:autoCheckbox:696244:
  if (autoCheckbox.isSelected()) {
    autoTemp = true;
  }
  else {
    autoTemp = false;
    outsideTemp = outsideTempSlider.getValueF();
  }
} //_CODE_:autoCheckbox:696244:


// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  outsideTempSlider = new GCustomSlider(this, 450, 480, 250, 50, "blue18px");
  outsideTempSlider.setShowValue(true);
  outsideTempSlider.setShowLimits(true);
  outsideTempSlider.setLimits(20.0, -20.0, 40.0);
  outsideTempSlider.setNumberFormat(G4P.DECIMAL, 2);
  outsideTempSlider.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  outsideTempSlider.setOpaque(true);
  outsideTempSlider.addEventHandler(this, "custom_slider1_change1");
  houseTempSlider = new GCustomSlider(this, 100, 480, 250, 50, "purple18px");
  houseTempSlider.setShowValue(true);
  houseTempSlider.setShowLimits(true);
  houseTempSlider.setLimits(23.0, 10.0, 30.0);
  houseTempSlider.setNumberFormat(G4P.DECIMAL, 2);
  houseTempSlider.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  houseTempSlider.setOpaque(true);
  houseTempSlider.addEventHandler(this, "custom_slider2_change1");
  tempsButton = new GButton(this, 160, 550, 80, 30);
  tempsButton.setText("Temps");
  tempsButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  tempsButton.addEventHandler(this, "button1_click1");
  houseButton = new GButton(this, 360, 550, 80, 30);
  houseButton.setText("House");
  houseButton.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  houseButton.addEventHandler(this, "button1_click2");
  furnaceButton = new GButton(this, 560, 550, 80, 30);
  furnaceButton.setText("Heat / AC");
  furnaceButton.setLocalColorScheme(GCScheme.RED_SCHEME);
  furnaceButton.addEventHandler(this, "button1_click3");
  heatingSlider = new GCustomSlider(this, 520, 480, 200, 50, "red_yellow18px");
  heatingSlider.setShowValue(true);
  heatingSlider.setShowLimits(true);
  heatingSlider.setLimits(100, 0, 100);
  heatingSlider.setNumberFormat(G4P.INTEGER, 0);
  heatingSlider.setLocalColorScheme(GCScheme.RED_SCHEME);
  heatingSlider.setOpaque(true);
  heatingSlider.addEventHandler(this, "custom_slider1_change2");
  coolingSlider = new GCustomSlider(this, 280, 480, 200, 50, "blue18px");
  coolingSlider.setShowValue(true);
  coolingSlider.setShowLimits(true);
  coolingSlider.setLimits(80, 0, 100);
  coolingSlider.setNbrTicks(50);
  coolingSlider.setNumberFormat(G4P.INTEGER, 0);
  coolingSlider.setOpaque(true);
  coolingSlider.addEventHandler(this, "custom_slider1_change3");
  heatingCheckbox = new GCheckbox(this, 100, 484, 16, 16);
  heatingCheckbox.setLocalColorScheme(GCScheme.RED_SCHEME);
  heatingCheckbox.setOpaque(true);
  heatingCheckbox.addEventHandler(this, "checkbox1_clicked1");
  heatingCheckbox.setSelected(true);
  coolingCheckbox = new GCheckbox(this, 100, 510, 16, 16);
  coolingCheckbox.setOpaque(true);
  coolingCheckbox.addEventHandler(this, "checkbox1_clicked2");
  coolingCheckbox.setSelected(true);
  
  insulationSlider = new GCustomSlider(this, 100, 480, 250, 50, "purple18px");
  insulationSlider.setShowValue(true);
  insulationSlider.setShowLimits(true);
  insulationSlider.setLimits(50, 0, 100);
  insulationSlider.setNumberFormat(G4P.INTEGER, 0);
  insulationSlider.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  insulationSlider.setOpaque(true);
  insulationSlider.addEventHandler(this, "insulation_change1");
  tempRangeSlider = new GCustomSlider(this, 450, 480, 250, 50, "red_yellow18px");
  tempRangeSlider.setShowValue(true);
  tempRangeSlider.setShowLimits(true);
  tempRangeSlider.setLimits(0.5, 0.25, 3.0);
  tempRangeSlider.setNumberFormat(G4P.DECIMAL, 2);
  tempRangeSlider.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  tempRangeSlider.setOpaque(true);
  tempRangeSlider.addEventHandler(this, "tempRange_change1");
  
  autoCheckbox = new GCheckbox(this, 395, 500, 20, 20);
  autoCheckbox.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  autoCheckbox.setOpaque(false);
  autoCheckbox.addEventHandler(this, "auto_clicked1");
}

// Variable declarations 
// autogenerated do not edit
GCustomSlider outsideTempSlider; 
GCustomSlider houseTempSlider; 
GButton tempsButton; 
GButton houseButton; 
GButton furnaceButton; 
GCustomSlider heatingSlider; 
GCustomSlider coolingSlider; 
GCheckbox heatingCheckbox; 
GCheckbox coolingCheckbox; 
GCustomSlider insulationSlider; 
GCustomSlider tempRangeSlider;
GCheckbox autoCheckbox; 
