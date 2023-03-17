public class weapon {
  int id;
  float waitTime;
  PImage img;
  float cost;
  String description;

  boolean inUse = false;
  float timeCheck;

  //vine rod
  float oMouseY;
  float oMouseX;

  public weapon(int idIn, PImage imgIn, float waitTimeIn, float costIn, String descriptionIn) {
    id = idIn;
    img = imgIn;
    waitTime = waitTimeIn;
    cost = costIn;
    description = descriptionIn;
    img.resize(60, 60);
  }

  void use() {
    if (id == 1) {
      pro.add(new projectile(mainPlayer.x, mainPlayer.y, mouseX-mainPlayer.x, mouseY-mainPlayer.y, 0.052, true, 0));
    } else if (id == 2) {
      dashing = true;
    } else if (id == 3) {
      if (mainPlayer.health < 81);
      currentWeapon2 = 0;
      mainPlayer.health += 20;
      for (int i = 0; i < iButtons.size(); i++) {
        if (iButtons.get(i).itemId == 3) {
          iButtons.remove(i);
          i = iButtons.size();
        }
      }
    } else if (id == 4) {
      pro.add(new projectile(mainPlayer.x, mainPlayer.y, mouseX-mainPlayer.x, mouseY-mainPlayer.y, 0.052, true, 1));
    } else if (id == 5) {
    } else if (id == 6) {
      jump(40, 2, height - height/4);
    } else if (id == 8) {
      timeCheck = millis() + 700;
      oMouseX = mouseX;
      oMouseY = mouseY;
      inUse = true;
    }
  }
}
