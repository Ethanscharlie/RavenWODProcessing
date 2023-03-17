public class door {
  //first door
  int startW;
  float startX;
  float startY;
  float begStartX;
  boolean StartTouchingPlayer;

  //second door
  int endW;
  float endX;
  float endY;
  float begEndX;
  boolean EndTouchingPlayer;

  boolean ran = false;
  PImage img;
  boolean ranran = false;
  boolean switchDoor;

  public door(int startWIn, float startXIn, float startYIn, int endWIn, float endXIn, float endYIn, PImage imgIn, boolean switchDoorIn) {
    //first door
    startW = startWIn;
    startX = startXIn;
    startY = startYIn;
    begStartX = startX;
    switchDoor = switchDoorIn;

    //second door
    //endW = endWIn;
    endW = endWIn;
    endX = endXIn;
    endY = endYIn;
    begEndX = endX;

    img = imgIn;

    if (switchDoor) {
      if (endW == -1) {
        img = deactiveatedPortalImg;
      } else if (endW == 3) {
        img = activeatedPortalImg;
      }
    }
  }

  void drawSelf() {
    ranran = false;
    if (switchDoor) {
      if (endW == -1) {
        img = deactiveatedPortalImg;
      } else if (endW == 3) {
        img = activeatedPortalImg;
      }
    }
    if (startW == world) {
      if (img == null) {
      } else {
        image(img, startX, startY);
      }
      //print("door");
      //rect(startX,startY,1000,100);
    }
    if (endW == world) {
      if (img == null) {
      } else {
        image(img, endX, endY);
      }
    }
    //println(ranran);

    //world == myWorld && mainPlayer.x+mainPlayer.w > x && mainPlayer.x < x+80 && mainPlayer.y + mainPlayer.h + mainPlayer.h > y && mainPlayer.y < y+100
    if (world == startW && mainPlayer.x+mainPlayer.w > startX && mainPlayer.x < startX+90 && mainPlayer.y + mainPlayer.h + mainPlayer.h > startY && mainPlayer.y < startY+110) {
      keyPressShow = true;
      StartTouchingPlayer = true;
      if (keyPressed && key == 'e' && ranran == false) {
        saveGame();

        ranran = true;
        globalX = width/2;
        if (endW == -1) {
          endW = 3;
        } 
        world = endW;

        if (enemys.size() > 0) {
          enemys.remove(0);
          println("removed enemy");
        }
        music();
        println("worldchange");
        print("char" + str(world));           
        if (begStartX > begEndX) {
          centerX = dist(begEndX, 0, begStartX, 0) * 1;

          scoot(centerX, false, false);
          ran = true;
          println("one");
        } else if (begStartX < begEndX && !ran) {
          centerX = dist(begEndX, 0, begStartX, 0) *  1;
          scoot(centerX, true, false);  
          println("one");
        }
        mainPlayer.x = mainPlayer.x+0;
        // mainPlayer.y = endY;
        resetObjs();
        delay(400);
      }
    } else {
      StartTouchingPlayer = false;
    }


    //println(ranran);
    ran = false;
    if (world == endW && mainPlayer.x+mainPlayer.w > endX && mainPlayer.x < endX+90 && mainPlayer.y + mainPlayer.h + mainPlayer.h > endY && mainPlayer.y < endY+110) {
      EndTouchingPlayer = true;
      keyPressShow = false;
      if (keyPressed && key == 'e' && ranran == false) {
        saveGame();

        globalX = width/2;
        ranran = true;
        world = startW;

        if (enemys.size() > 0) {
          enemys.remove(0);
          println("removed enemy");
        }
        music();
        println("worldchange2");
        print("char" + str(world));
        //centerX = startX-endX * 1;
        if (begStartX < begEndX) {
          centerX = dist(begEndX, 0, begStartX, 0) * 1;
          scoot(centerX, false, true);
          ran = true;
          println("one");
        } else if (begStartX >  begEndX && !ran) {
          centerX = dist(begEndX, 0, begStartX, 0) *  1;
          scoot(centerX, true, true);  
          println("one");
        }
        mainPlayer.x = mainPlayer.x-0;
        //mainPlayer.y = startY;
        resetObjs();
        delay(400);
      }
    } else {
      EndTouchingPlayer = false;
    }



    for (int i = 0; i < mainPlayer.w; i++) {
      for (int j = 0; j < mainPlayer.h; j++) {
      }
    }

    // println(str(startX) + ":" +str(endX));
  }

  void Move(String Dir, Boolean Dash) {
    if (Dir == "RIGHT") {
      if (Dash == true) {
        startX += dashpower;
        endX += dashpower;
      } else {
        startX += (playerMoveSpeed);
        endX += (playerMoveSpeed);
      }
    }
    if (Dir == "LEFT") {
      if (Dash == true) {
        startX -= dashpower;
        endX -= dashpower;
      } else {
        startX -= (playerMoveSpeed);
        endX -= (playerMoveSpeed);
      }
    }
  }
}
