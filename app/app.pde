// Skrifttyper
PFont arial;

// Variabler for stand ting
int defaultTextSize = 14;
String[] allMenubarButtons = { "States", "Add" };

// Objekter
Menubar menubar;

void setup() {
  size(1200, 800);
  
  // Program indstillinger
  smooth(8);
  // pixelDensity(2);
  rectMode(CENTER);
  imageMode(CENTER);
  
  // Hent skrifttyper
  arial = createFont("fonts/Arial.ttf", defaultTextSize);
  textFont(arial);
}

void draw() {
  clear();
  background(#003865);
  
  UI();
}

void UI() {
  menubar = new Menubar((width/2), 25, width, 50, allMenubarButtons);
  menubar.display();
}
