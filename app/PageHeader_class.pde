class PageHeader {
  float x;
  float y;
  float w;
  float h;
  PImage logo;
  String titel;
  float titelSize;
  color titelColor;
  boolean createNavbar = false;
  Navbar navbar;
  
  // Konstruktør unden navbar
  PageHeader(PImage logo_, String titel_, int titelSize_, color titelColor_) {
    x = (width / 2);
    y = 25;
    w = width;
    h = 50;
    logo = logo_;
    titel = titel_;
    titelSize = titelSize_;
    titelColor = titelColor_;
  }
  
  // Konstruktør med navbar
  PageHeader(PImage logo_, String titel_, int titelSize_, color titelColor_, Navbar navbar_) {
    x = (width / 2);
    y = 25;
    w = width;
    h = 50;
    logo = logo_;
    titel = titel_;
    titelSize = titelSize_;
    titelColor = titelColor_;
    createNavbar = true;
    navbar = navbar_;
  }
  
  void display() {
    // Logo
    logo.resize(64, 64);
    image(logo, 55, 55);
    
    // Title
    fill(titelColor);
    textAlign(LEFT);
    textSize(titelSize);
    text(titel, 110, 61);
    
    // Navbar
    if (createNavbar == true) {
      navbar.display();
    }
  }
}
