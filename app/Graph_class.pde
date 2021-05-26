class Graph {
  float x;
  float y;
  float w;
  float h;
  Table rawData;
  String coloumnX;
  String coloumnY;
  ArrayList<GraphPoint> allPoints = new ArrayList<GraphPoint>();


  Graph(float x_, float y_, float w_, float h_, String coloumnX_, String coloumnY_, String dataURL) {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
    rawData = loadTable(dataURL, "header");
    coloumnX = coloumnX_;
    coloumnY = coloumnY_;

    for (int i = 0; i < rawData.getRowCount() - 1; i++) {
      if (i % 10 == 0) {
        TableRow row = rawData.getRow(i);
        
        float pointX = this.x + (i * (w / rawData.getRowCount()));
        float pointY = this.y - ((row.getInt(coloumnY) / (h * (h / 1.7))));
        GraphPoint newPoint = new GraphPoint(pointX, pointY, 10, 10, row);
        
        allPoints.add(newPoint);
      }
    }
  }

  void display() {
    // Akse linjer
    strokeWeight(3);
    stroke(white);
    line(x, y, x, (y-h));
    line(x, y, (x + w), y);
    
    // Akse pile
    noStroke();
    fill(white);
    triangle((x + w), (y - 7), (x + w), (y + 7), (x + w + 10), y);
    triangle((x - 7), (y - h), (x + 7), (y - h), x, (y - h - 10));
    
    // Akse titler
    text(coloumnY, x, (y - h - 15));
    text(coloumnX, (x + w + 28), (y + 3));
    
    // Linjer mellem punkter
    for (int i = 0; i < allPoints.size(); i++) {
      if (i != allPoints.size() - 1) {
        GraphPoint point = allPoints.get(i);
        GraphPoint nextPoint = allPoints.get(i + 1);
        
        stroke(white);
        line(point.x, point.y, nextPoint.x, nextPoint.y);
      } else {
        break;
      }
    }
    
    // Tegn hvert punkt
    for (GraphPoint point : allPoints) {
      point.display();
      point.mouseCheck();
    }
  }
}
