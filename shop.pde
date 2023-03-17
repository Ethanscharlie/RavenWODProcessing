public class shop {
  //screen
  ArrayList<Integer> content = new ArrayList<Integer>();


  //world
  int myWorld;
  float x;
  float y;
  int w;
  int h;

  boolean touchingPlayer;



  public shop(float xIn, float yIn, int wIn, int hIn, int worldIn, ArrayList<Integer> contentIn) {
    x = xIn;
    y = yIn;
    w = wIn;
    h = hIn;
    myWorld = worldIn;

    content = contentIn;
  }

  void drawSelf() {
    if (world == myWorld) {
      //fill(0,100,255);
      //rect(x,y,w,h);
      image(shopImg, x, y-52);
      fill(0);
      //text("SHOP",x+w/8,y+h/5);
    }

    for (int i = 0; i < mainPlayer.w; i++) {
      for (int j = 0; j < mainPlayer.h; j++) {
        if (world == myWorld && mainPlayer.x+mainPlayer.w > x && mainPlayer.x < x+150 && mainPlayer.y + mainPlayer.h + mainPlayer.h > y && mainPlayer.y < y+150) {
          touchingPlayer = true;
          if (keyPressed && key == 'e') {
            fill(100);
            shopContent = content;
            screen = 6;
            print("SHOP");
          }
        } else {
          touchingPlayer = false;
        }
      }
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
