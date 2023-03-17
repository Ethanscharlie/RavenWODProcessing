public class player {
  float x = 0;
  float y = 0;
  int w = 80;
  int h = 100;
  float health = 100;
  ArrayList<Integer> enchants = new ArrayList<Integer>();


  void drawPlayer() {
    if (health < 1) {
      print("playerDead");
    }
    if (health > 100) {
      health = 100;
    }
    if (x != width/2) {
      x = width/2;
    }
    for (int i = 0; i < enchants.size(); i++) {
      if (enchants.get(i) == 1) {
        playerMoveSpeed = 1.3;
      }
    }
    if (enemys.size() < 1) {
      for (int i = 0; i < enchants.size(); i++) {
        enchants.remove(i);
      }
      playerMoveSpeed = 2.3;
    }
    fill(255);
    //rect(x,y,w,h);
    if (playerFacingRight) {
      image(playerPosTwo, x, y, 80, 100);
    } else {
      image(playerPosOne, x, y, 80, 100);
    }

    //image(playerPosOne,x,y);
    //line(x,y,mouseX,y);
    //line(mouseX,y,mouseX,mouseY);
    //head
  }
}
