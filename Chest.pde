public class Chest {
  float x;
  float y;
  int myWorld;
  PImage img;
  int content;
  boolean touchingPlayer;

  public Chest(float xIn, float yIn, int worldIn, int contentIn) {
    x = xIn;
    y = yIn;  
    myWorld = worldIn;
    //img = imgIn;
    content = contentIn;
  }

  void drawSelf() {
    if (world == myWorld) {

      if (alreadyCollected(content)) {
        image(openChestImg, x, y);
      } else {  
        image(chestImg, x, y);
      }

      //for//(int i = 0; i < mainPlayer.w; i++){
      //for(int j = 0; j < mainPlayer.h; j++){
      if (world == myWorld && mainPlayer.x+mainPlayer.w > x && mainPlayer.x < x+100 && mainPlayer.y + mainPlayer.h + mainPlayer.h > y && mainPlayer.y < y+100) {
        touchingPlayer = true;
        //println("TURE");
        if (keyPressed && key == 'e' && alreadyCollected(content) == false) {

          iButtons.add(new itemButton(content));
        }
      } else {
        touchingPlayer = false;  
        //println("FALSE");
      }
      //}  
      //}
    }
  } 

  boolean alreadyCollected(int id) {
    boolean check = false;
    for (int i = 0; i < iButtons.size(); i++) {
      if (iButtons.get(i).itemId == id) {
        if (id == 3) {
          check = false;
        } else {
          check = true;
        }
      }
    }

    return check;
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
