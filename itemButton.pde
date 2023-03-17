public class itemButton {
  float x;
  float y;
  int itemId;

  float timeCheck;

  public itemButton(int itemIdIn) {

    itemId = itemIdIn;
    timeCheck = millis() + 1000;
  }

  void drawSelf() {
    fill(255);
    ellipse(x, y, 60, 60);
    fill(0);
    if (weapons.size() >= itemId) {
      image(weapons.get(itemId).img, x-30, y-30);
    } else {
      text(itemId, x, y);
    }
  }

  void drawGet() {
    if (timeCheck > millis()) {
      fill(255);
      ellipse(mainPlayer.x+30, mainPlayer.y-150+30, 60, 60);
      image(weapons.get(itemId).img, mainPlayer.x, mainPlayer.y - 150);  
      println("timeChecked");
    }
  }
}
