class Button {
  float x;
  float y;
  float w;
  float h;
  String titel;
  color btnColor;
  color textColor;
  float textSize;
  boolean isNavbarBtn = false;
  boolean isActive = false;
  
  Button(float x_, float y_, float w_, float h_) {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
  }
  
  void display() {
    rectMode(CENTER);
    textAlign(CENTER);
    
    // Knappen
    if (isActive == true) {
      fill(textColor);
    } else {
      fill(btnColor);
    }
    stroke(btnColor);
    strokeWeight(2);
    rect(x, y, w, h, 5);
    
    // Title
    if (isActive == true) {
      fill(btnColor);
    } else {
      fill(textColor);
    }
    textSize(textSize);
    text(titel, x, (y + 6));
  }
  
  boolean mouseCheck() {
    if (mouseX >= (x - (w / 2)) && mouseX <= (x + (w / 2)) && mouseY >= (y - (h / 2)) && mouseY <= (y + (h / 2))) {
      return true;
    } else {
      return false;
    }
  }
}
