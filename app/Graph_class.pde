class Graph {
  // Data for klassen
  float x; // koordinat på graf
  float y; // koordinat på graf
  float w; // brede på graf
  float h; // højde på graf
  Table rawData; // Tabel af data
  String coloumnX; // Navn på data på x-aksen
  String coloumnY; // Navn på data på y-aksen
  ArrayList<GraphPoint> allPoints = new ArrayList<GraphPoint>(); // Holder på alle graf punkt objekter

  // Konstruktør
  Graph(float x_, float y_, float w_, float h_, String coloumnX_, String coloumnY_, String dataURL) {
    x = x_; // Sætter værdi
    y = y_; // Sætter værdi
    w = w_; // Sætter værdi
    h = h_; // Sætter værdi
    rawData = loadTable(dataURL, "header"); // Sætter værdi
    coloumnX = coloumnX_; // Sætter værdi
    coloumnY = coloumnY_; // Sætter værdi

    // Kører igennem alle rækker i tabellen
    for (int i = 0; i < rawData.getRowCount() - 1; i++) {
      // For hver 10 række
      // Ellers bliver der for mange punkter
      if (i % 10 == 0) {
        TableRow row = rawData.getRow(i); // Rækken vi er nået til 
        
        // Udregner punktets x-koordinat
        //             graf x       breden / antallet af rækker
        float pointX = this.x + (i * (w / rawData.getRowCount()));
        // Udregner punktets x-koordinat
        //             graf y     kolonne for y-aksen / højden af garfen * højden / 1.7**.
        // **For at gøre selv grafen mindre i højden
        float pointY = this.y - ((row.getInt(coloumnY) / (h * (h / 1.7))));
        // Laver et punkt objekt med de udregnede koordinater
        GraphPoint newPoint = new GraphPoint(pointX, pointY, 10, 10, row);
        
        // Tilføjer det nye punkt til arrayen
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
    // Alle punkter end det sidste
    for (int i = 0; i < allPoints.size() - 1; i++) {
      GraphPoint point = allPoints.get(i);
      GraphPoint nextPoint = allPoints.get(i + 1);
      
      stroke(white);
      line(point.x, point.y, nextPoint.x, nextPoint.y);
    }
    
    // Tegn hvert punkt
    for (GraphPoint point : allPoints) {
      point.display();
      point.mouseCheck();
    }
  }
}
