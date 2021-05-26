class GraphPoint {
  float x;
  float y;
  float w;
  float h;
  float infoW = 150;
  float infoH = 200;
  float infoX;
  float infoY;
  TableRow data;
  boolean isHovering = false;
  
  GraphPoint(float x_, float y_, float w_, float h_, TableRow data_) {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    infoX = x - infoW;
    infoY = y - infoH;
    data = data_;
  }
  
  void display() {
    // Selve punktet
    noStroke();
    fill(red);
    circle(x, y, w);
    
    // Info kasse
    if (isHovering == true) {
      fill(white);
      stroke(red);
      strokeWeight(3);
      rectMode(CORNER);
      rect(infoX, infoY, infoW, infoH, 5, 5, 0, 5);
      rectMode(CENTER);
    }
  }
  
  void mouseCheck() {
    if (mouseX >= (x - (w / 2)) && mouseX <= (x + (w / 2)) && mouseY >= (y - (w / 2)) && mouseY <= (y + (w / 2))) {
      cursor(HAND);
      isHovering = true;
    } else {
      cursor(ARROW);
      isHovering = false;
    }
  }
}