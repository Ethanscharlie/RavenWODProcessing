public class world {
  int id;
  PImage backgroundImg;
  PImage groundImg;
  PImage objImg;

  FloatList groundX = new FloatList();

  public world(int idIn, PImage bIIn, PImage gIIn, PImage oIIn) {
    id = idIn;
    backgroundImg = bIIn;
    groundImg = gIIn;
    objImg = oIIn;

    for (int i = 0; i < 20; i += 1) {
      groundX.append(width+(width*i) * 1.0);      
      groundX.append(0-(i*width) * 1.0);
    }
  }

  void scrollGround() {

    for (int i = 0; i < groundX.size(); i++) {
      if ((groundX.get(i) <= width && groundX.get(i)+width >= 0)==true) {
        image(groundImg, groundX.get(i), height-height/4);
        println("grounddrawn" + str(i));
      }
    }
  }

  void Move(String Dir, Boolean Dash) {
    if (Dir == "RIGHT") {
      if (Dash == true) {
        for (int i = 0; i < groundX.size(); i++) {
          groundX.set(i, groundX.get(i) + dashpower);
        }
      } else {
        for (int i = 0; i < groundX.size(); i++) {
          groundX.set(i, groundX.get(i) + playerMoveSpeed);
        }
      }
    }
    if (Dir == "LEFT") {
      if (Dash == true) {
        for (int i = 0; i < groundX.size(); i++) {
          groundX.set(i, groundX.get(i) - dashpower);
        }
      } else {
        for (int i = 0; i < groundX.size(); i++) {
          groundX.set(i, groundX.get(i) - playerMoveSpeed);
        }
      }
    }
  }
}
