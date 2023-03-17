public class object {
  float x = 200;
  float y = height - height/2.2;
  int w = 150;
  int h = 250;
  PImage img;


  void drawObj() {
    //rect,y,w,h);
    image(img, x, y);
    if (world == 3) {
      y = height/2 - height/8;
    } else {
      y = height - height/2.2;
    }
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
