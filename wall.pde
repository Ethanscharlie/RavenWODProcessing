public class wall {
  float x;
  float y;
  PImage img;
  int myWorld;
  float w;
  float h;
  boolean protcRight;
  boolean protc = true;
  boolean see = false;
  int type;

  public wall(float xIn, float yIn, float wIn, float hIn, int worldIn, boolean protcIn, int typeIn) {
    x = xIn;
    y = yIn;
    w = wIn;
    h = hIn;
    myWorld = worldIn;
    protcRight = protcIn;
    type = typeIn;
    //img = imgIn;
  }
  void drawSelf() {
    if (world == myWorld) {
      if (type == 1){
        for (int i = 0; i < weapons.size(); i++) {
          if (weapons.get(i).id == 8 && weapons.get(i).inUse) {
            if (weapons.get(i).oMouseX > x && weapons.get(i).oMouseX < x+100) {
              type = 0;
              protc = false;
              img = rockBrokenImg;
              print("broke rock");
            }
          }
        }
      }
      if (see) {
        fill(255, 0, 0);
        if (protcRight && protc) {
          rect(x+w, y, x-9999, height);
        }
        if (protcRight == false && protc) {
          rect(x, y, x+9999, height);
        }
        fill(255, 255, 0);
        rect(x, y, w, h);
      }
      if (mainPlayer.x+mainPlayer.w > x && protcRight == false && protc) {
        playerFacingRight = false;
        for (int i = 0; i < pro.size(); i++) {
          pro.get(i).Move("RIGHT", false);
        }
        for (int i = 0; i < enemys.size(); i++) {
          enemys.get(i).Move("RIGHT", false);
        }
        for (int i = 0; i < objs.size(); i++) {
          objs.get(i).Move("RIGHT", false);
        }
        for (int i = 0; i < doors.size(); i++) {
          doors.get(i).Move("RIGHT", false);
        }
        for (int i = 0; i < chests.size(); i++) {
          chests.get(i).Move("RIGHT", false);
        }
        for (int i = 0; i < tNPCs.size(); i++) {
          tNPCs.get(i).Move("RIGHT", false);
        }
        for (int i = 0; i < pObjs.size(); i++) {
          pObjs.get(i).Move("RIGHT", false);
        }
        for (int i = 0; i < shops.size(); i++) {
          shops.get(i).Move("RIGHT", false);
        }
        for (int i = 0; i < walls.size(); i++) {
          walls.get(i).Move("RIGHT", false);
        }
        for (int i = 0; i < worlds.size(); i++) {
          worlds.get(i).Move("RIGHT", false);
        }
      }
      if (mainPlayer.x < x + w && protcRight == true && protc) {
        playerFacingRight = true;
        for (int i = 0; i < pro.size(); i++) {
          pro.get(i).Move("LEFT", false);
        }
        for (int i = 0; i < enemys.size(); i++) {
          enemys.get(i).Move("LEFT", false);
        }  
        for (int i = 0; i < objs.size(); i++) {
          objs.get(i).Move("LEFT", false);
        }
        for (int i = 0; i < doors.size(); i++) {
          doors.get(i).Move("LEFT", false);
        }
        for (int i = 0; i < chests.size(); i++) {
          chests.get(i).Move("LEFT", false);
        }
        for (int i = 0; i < tNPCs.size(); i++) {
          tNPCs.get(i).Move("LEFT", false);
        }
        for (int i = 0; i < pObjs.size(); i++) {
          pObjs.get(i).Move("LEFT", false);
        }
        for (int i = 0; i < shops.size(); i++) {
          shops.get(i).Move("LEFT", false);
        }
        for (int i = 0; i < walls.size(); i++) {
          walls.get(i).Move("LEFT", false);
        }
        for (int i = 0; i < worlds.size(); i++) {
          worlds.get(i).Move("LEFT", false);
        }
      }
    }
  }
  void Move(String Dir, Boolean Dash) {
    if (Dir == "RIGHT") {
      if (Dash == true) {
        x += dashpower;
        print("movedleft");
      } else {
        x += playerMoveSpeed;
        print("movedleft");
      }
    }
    if (Dir == "LEFT") {
      if (Dash == true) {
        x -= dashpower;
      } else {
        x -= playerMoveSpeed;
      }
    }
  }
}
