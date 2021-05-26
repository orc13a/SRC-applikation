// Skrifttyper
PFont arial;
PFont SSP; // Source Sans Pro

// Variabler for standart ting
int defaultTextSize = 14;
String[] navbarBtnTitels = { "home", "state data" };

// Colorpallet
color darkBlue = #003865;
color white = #FFFFFF;
color red = #BC5161;

// Objekter
Navbar navbar;
PageHeader pageHeader;
Graph frontPageGraph;


void setup() {
  size(1200, 800);
  background(darkBlue);
  
  // Program indstillinger
  smooth(8);
  //pixelDensity(2);
  rectMode(CENTER);
  imageMode(CENTER);
  
  // Hent skrifttyper
  arial = createFont("fonts/Arial.ttf", defaultTextSize);
  SSP = createFont("fonts/SourceSansPro-Regular.ttf", defaultTextSize);
  textFont(SSP);
  
  // Lav objekter
  navbar = new Navbar(110, 100, 110, 30, white, darkBlue, 18, navbarBtnTitels);
  pageHeader = new PageHeader(loadImage("logo.png"), "Homeland Security  |  COVID-19", 22, 255, navbar);
  frontPageGraph = new Graph(200, 750, 800, 400, "date", "cases", "https://raw.githubusercontent.com/nytimes/covid-19-data/master/us.csv"); 
}

void draw() {
  clear();
  background(darkBlue);
  
  textFont(arial);
  pageHeader.display();
  textFont(SSP);
  
  frontPageGraph.display();
}
