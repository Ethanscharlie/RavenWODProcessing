public class projectile {

  float x;
  float y; 
  float slopeX;
  float slopeY;
  float speed;
  boolean playerShooting;
  int enchant;

  public projectile(float xIn, float yIn, float slopeXIn, float slopeYIn, float speedIn, boolean playerShootingIn, int enchantIn) {
    x = xIn;
    y = yIn; 
    println(slopeYIn / slopeXIn  ); 
    slopeX = slopeXIn;
    slopeY = slopeYIn;
    speed = speedIn;
    playerShooting = playerShootingIn;
    enchant = enchantIn;

    if (enchant > 0) {
      checkenchant = millis();
    }


    //
  }
  void run() {
    fill(100, 100, 100);
    ellipse(x, y, 20, 20);
    x = x + slopeX * speed;
    y = y + slopeY * speed;
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
