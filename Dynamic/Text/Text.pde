//Global Variable
String title = "Wahoo!";
float titleX, titleY, titledisplayWidth, titledisplayHeight;
PFont titleFont;
color purple=#2C08FF, resetDefaultInk=#FFFFFF;
//
void setup() 
{
  //Display Geometry, Display orientation: landscape, portrait, or square
  fullScreen(); //size (500, 600); //displayWidth & displayHeight
  //Population
  titleX = displayWidth*1.5;
  titleY = displayHeight*1/10;
  titledisplayWidth = displayWidth*3/5; //Rect ends at 4/5's of width
  titledisplayHeight = displayHeight*1/10; //Rect ends at 2/10's of height
  //
  //Fonts from OS (Operating System)
  // String[] fontList = PFont.list(); //To list all fonts available on OS
  //printArray(fontList); //For listing all possible fonts to choose from, then createFont
  titleFont = createFont("Harrington", 55); //Verify the font exists in Processing.Java
  // Tools / Create Font / Find Font / Do not press "OK", known bug
  //
  //Layout our text space and typographical features
  rect(titleX, titleY, titledisplayWidth, titledisplayHeight);
}//End setup
//
void draw() 
{
  //Drawing Text
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign(CENTER, CENTER); //Alight X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  textFont(titleFont, 50); //Change the number until it fits
  text(title, titleX, titleY, titledisplayWidth, titledisplayHeight);
  fill(resetDefaultInk);
}//End draw
//
void keyPressed() {
}//End keyPressed 
//
void mousePressed() {
}//End mousePressed
//
//End Main
