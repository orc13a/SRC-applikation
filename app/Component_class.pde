class Component {
  float x;
  float y;
  float w;
  float h;
  TableRow data;
  
  Component(float x_, float y_, float w_, float h_) {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
  }
  
  void display() {
    // Tom metode så den kan overrides
  }
}
