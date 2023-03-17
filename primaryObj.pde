public class primaryObj {
  float x;
  float y;
  float startX;
  float startY;
  PImage img;
  int w;
  int h;
  int myWorld;
  int type = 0;

  int vine_rock_give_type = 0;

  public primaryObj(float xIn, float yIn, int worldIn, PImage imgIn, int typeIn) {
    x = xIn;
    y = yIn;
    startX = x;
    startY = y;

    myWorld = worldIn;
    img = imgIn;
    type = typeIn;
  }
  void drawSelf() {
    if (world == myWorld) {
      //rect(x,y,w,h);
      image(img, x, y);

      if (type == 0) {
      } else if (type == 1) { //vine rock
        for (int i = 0; i < weapons.size(); i++) {
          if (weapons.get(i).id == 8 && weapons.get(i).inUse) {
            if (weapons.get(i).oMouseX > x && weapons.get(i).oMouseX < x+100) {
              type = 2;
              img = rockBrokenImg;
              print("broke rock");
            }
          }
        }
      } else if (type == 2) { //broken vine rock
        
      }
    }


    //if(key != 'a' || key != 'd'){
    //  movingRight =false;
    //  movingLeft = false;
    // }
  }

  void Move(String Dir, Boolean Dash) {
    if (Dir == "RIGHT") {
      if (Dash == true) {
        x += dashpower;
      } else {
        x += playerMoveSpeed;
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
