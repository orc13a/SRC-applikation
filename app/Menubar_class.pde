// ----------------------------------------
// Menubar class
// ----------------------------------------

class Menubar extends Component {
  ArrayList<MenuBarButton> allButtons = new ArrayList<MenuBarButton>();
  
  Menubar(float x_, float y_, float w_, float h_, String[] buttonNames) {
    super(x_, y_, w_, h_);
    for (int i = 0; i < buttonNames.length; i++) {
      MenuBarButton newBtn = new MenuBarButton(((h / 2) + 15), (h / 2), (buttonNames[i].length() + 10), (h - 10), buttonNames[i], 255, 0);
      allButtons.add(newBtn);
    }
  }
  
  void display() {
    fill(255);
    textSize(18);
    text("app", (h / 2), (h / 2));
    
    for (MenuBarButton btn : allButtons) {
      btn.display();
    }
  }
}

// ----------------------------------------
// MenuBarButton class
// ----------------------------------------

class MenuBarButton extends Component {
  String innerText = "";
  color btnC;
  color textC;
  
  MenuBarButton(float x_, float y_, float w_, float h_, String innerText_, color btnC_, color textC_) {
    super(x_, y_, w_, h_);
    innerText = innerText_;
    btnC = btnC_;
    textC = textC_;
  }
  
  void display() {
    fill(btnC);
    rect(x, y, w, h);
    text(innerText, x, y);
  }
}
