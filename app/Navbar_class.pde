class Navbar {
  float x;
  float y;
  float w;
  float h;
  ArrayList<Button> allButtonTitels = new ArrayList<Button>();
  int btnNr = 1;
  float newStartX;
  float newX;
  
  Navbar(float x_, float y_, float w_, float h_, color btnColor_, color textColor_, float textSize_, String[] buttonTitels_) {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    newStartX = (x + (w / 2));
    
    for (String btnTitle : buttonTitels_) {
      if (btnNr == 1) {
        newX = newStartX;
      } else {
        newX = ( newStartX + (((w / 2) * btnNr) + 25));
      }
      
      Button navBtn = new Button(newX, y, w, h);
      navBtn.titel = btnTitle;
      navBtn.btnColor = btnColor_;
      navBtn.textColor = textColor_;
      navBtn.textSize = textSize_;
      navBtn.isNavbarBtn = true;
      
      if (btnNr == 1) {
        navBtn.isActive = true;
      }
      
      allButtonTitels.add(navBtn);
      btnNr++;
    }
  }
  
  void display() {
    for (Button navBtn : allButtonTitels) {
      navBtn.display();
      
      if (navBtn.mouseCheck() == true) {
        cursor(HAND);
      } else {
        cursor(ARROW);
      };
    }
  }
}
