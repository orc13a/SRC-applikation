// ----------------------------------------
// Component class
// ----------------------------------------

class Component {
  float x = 0;
  float y = 0;
  float w = 0;
  float h = 0;
  
  Component(float x_, float y_, float w_, float h_) {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
  }
  
  // clicked && hover gør det samme, bare andre nanve.
  // Det er til at give bedre mening iforhold til konteksten man skal bruge det.
  boolean clicked() {
    if (mouseX > (x - (w / 2)) && mouseX < (x + (w / 2)) && mouseY > (y - (h / 2)) && mouseY < (y + (h / 2))) {
      return true;
    } else {
      return false;
    } 
  }
  
  boolean hover() {
    if (mouseX > (x - (w / 2)) && mouseX < (x + (w / 2)) && mouseY > (y - (h / 2)) && mouseY < (y + (h / 2))) {
      return true;
    } else {
      return false;
    } 
  }
}
