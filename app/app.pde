// https://forum.processing.org/two/discussion/comment/3361/#Comment_3361

PShape usa;

void setup() {
  size(800, 800);
  //surface.setTitle("Hello World!");
  //surface.setResizable(true);
  //surface.setLocation(100, 100);
  smooth(8);
  usa = loadShape("us-map.svg");
}

void draw() {
  shape(usa, 0, 0);
}
