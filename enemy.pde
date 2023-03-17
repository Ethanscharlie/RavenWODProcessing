public class enemy {
  float x = random(0, width);
  float y = height/2 - mainPlayer.h*2;
  float s = 150;
  float speed = 10;
  boolean enemyMovingRight = true;
  int swipe = 0;
  int mh = 0;
  ArrayList<Float> pointsX = new ArrayList<Float>();
  ArrayList<Float> pointsY = new ArrayList<Float>();
  int mcounter = 0;
  ArrayList<Integer> enchants = new ArrayList<Integer>();
  int type = 1;
  int hp = 0;
  boolean timeReady = true;
  float timeCheck = millis() + 150;
  boolean touchingPlayer;
  boolean canHit  = true;
  int move = 1;
  float randomy;
  float jumpPower = 8;
  float gravity;

  public enemy() {
    gravity = 2;
    if (world == 4) {
      y =  height/2 - mainPlayer.h*2;
    }
  }
  void run() {


    //for(int i = 0; i < mainPlayer.w; i++){
    //for(int j = 0; j < mainPlayer.h; j++){
    if (world == 3) {
      if (mainPlayer.x+mainPlayer.w > x && mainPlayer.x < x+140 && mainPlayer.y + mainPlayer.h + mainPlayer.h > y && mainPlayer.y < y+210) {
        touchingPlayer = true;
        //println("TURE");
      } else {
        touchingPlayer = false;  
        //println("FALSE");
      }
    }
    if (world == 7) {
      if (mainPlayer.x+mainPlayer.w > x && mainPlayer.x < x+140 && mainPlayer.y + mainPlayer.h + mainPlayer.h > y && mainPlayer.y < y+210) {
        touchingPlayer = true;
        //println("TURE");
      } else {
        touchingPlayer = false;  
        //println("FALSE");
      }
    }

    // println(str(millis()) + ":" + str(timeCheck));
    if (millis() > timeCheck) {
      timeReady = true; 
      println("timeready");
    }

    mh = pointsX.size();


    if (world == 1 || world == 6) {
      y =  height/2 - mainPlayer.h*2;
      if (x < width/2+ speed/2 && x > width/2 - speed/2) {
        pro.add(new projectile(x, y, width/2 + mainPlayer.w/2 -x, height/2 + 250 -y, 0.02, false, 0));
      }
      if (enemyMovingRight) {
        x = x + speed;
      } else {
        x = x - speed;
      }
      if (x > width && enemyMovingRight) {
        enemyMovingRight =! enemyMovingRight;
      }
      if (x < 0 && enemyMovingRight == false) {
        enemyMovingRight =! enemyMovingRight;
      }





      //fill(222,22,0);
      // swipe = 0;  

      fill(0);
      //ellipse(x, y, s, s);
      image(forestEnemyImg, x-(s/2), y-(s/2));
      fill(255, 0, 0);
    } else if (world == 5) {
      y =  height/2 - mainPlayer.h*2;
      if (x < width/2+ speed/2 && x > width/2 - speed/2) {
        pro.add(new projectile(x, y, width/2 + mainPlayer.w/2 -x, height/2 + 250 -y, 0.02, false, 0));
      }
      if (enemyMovingRight) {
        x = x + speed;
      } else {
        x = x - speed;
      }
      if (x > width && enemyMovingRight) {
        enemyMovingRight =! enemyMovingRight;
      }
      if (x < 0 && enemyMovingRight == false) {
        enemyMovingRight =! enemyMovingRight;
      }




      //fill(222,22,0);
      // swipe = 0;  

      fill(0);
      //ellipse(x, y, s, s);
      image(forestEnemyImg, x-(s/2), y-(s/2));
      fill(255, 0, 0);
    } else if (world == 2) {
      y =  height/2 - mainPlayer.h*2;
      if (timeReady) {
        pro.add(new projectile(x, y, width/2 + mainPlayer.w/2 -x, height/2 + 250 -y, 0.02, false, 1));  
        timeReady = false;
        timeCheck = millis() + 1550;
      }

      if (enemyMovingRight) {
        x = x + speed;
      } else {
        x = x - speed;
      }
      if (x > width && enemyMovingRight) {
        enemyMovingRight =! enemyMovingRight;
      }
      if (x < 0 && enemyMovingRight == false) {
        enemyMovingRight =! enemyMovingRight;
      }

      fill(255, 168, 5);
      ellipse(x, y, s, s);
      fill(255, 0, 0);
    } else if (world == -1) {
      y =  height/2 - mainPlayer.h*2;
      if (timeReady) {
        pro.add(new projectile(x, y, width/2 + mainPlayer.w/2 -x, height/2 + 250 -y, 0.02, false, 0));  
        timeReady = false;
        timeCheck = millis() + 1550;
      }

      if (enemyMovingRight) {
        x = x + speed;
      } else {
        x = x - speed;
      }
      if (x > width && enemyMovingRight) {
        enemyMovingRight =! enemyMovingRight;
      }
      if (x < 0 && enemyMovingRight == false) {
        enemyMovingRight =! enemyMovingRight;
      }

      fill(0);
      ellipse(x, y, s, s);
      fill(255, 0, 0);
    } else if (world == 3) {
      y = height - height/3;
      y -= 100;
      if (touchingPlayer && canHit) {
        mainPlayer.health -= 10; 
        canHit = false;
      }

      if (enemyMovingRight && timeReady) {
        x = x + speed;
      } else if (timeReady) {
        x = x - speed;
      }

      if (x > width-s && enemyMovingRight && timeReady) {
        enemyMovingRight =! enemyMovingRight;
        canHit = true;
        timeReady = false;
        timeCheck = millis() + 1550;
      }
      if (x < 0 && enemyMovingRight == false && timeReady) {
        enemyMovingRight =! enemyMovingRight;  
        canHit = true;
        timeReady = false;
        timeCheck = millis() + 1550;
      }
      fill(255);
      //rect(x,y,s,s);
      image(lightKnightImg, x, y);
    }

    if (world == 7) {

      if (touchingPlayer && canHit) {
        mainPlayer.health -= 10; 
        canHit = false;
      }

      if (move == 1) {

        if ((int)random(0, 2) == 0) {
          enemyMovingRight = true;
        } else {
          enemyMovingRight = false;
        }
        if (mainPlayer.x > x) {
          enemyMovingRight = true;
        } else {
          enemyMovingRight = false;
        }

        if (x > width && enemyMovingRight) {
          enemyMovingRight =! enemyMovingRight;
        }
        if (x < 0 && enemyMovingRight == false) {
          enemyMovingRight =! enemyMovingRight;
        }

        println(enemyMovingRight);

        if (timeReady) {
          move = 2;
          timeReady = false;
          timeCheck = millis() + 1550;
          canHit = true;
        }
      }
      if (move == 2) {
        y -= jumpPower;
        jumpPower -= gravity;

        if (enemyMovingRight) {
          x += random(3, 15);
        } else {
          x -= random(3, 15);
        }

        if (y+150 >= height - height/4) {
          move = 1; 
          jumpPower = 50;
        }
      }
//jump(40, 2, height - height/4);
      image(slimeBossImg, x, y);
    }

    if (world == 4) {



      if (hp < 17) {

        if (timeReady) {
          pro.add(new projectile(x, y, width/2 + mainPlayer.w/2 -x, height/2 + 250 -y, 0.02, false, 0));    
          timeReady = false;
          timeCheck = millis() + 1750;
        }
        if (move == 1) {
          if (enemyMovingRight) {
            x = x + speed;
          } else {
            x = x - speed;
          }
          if (enemyMovingRight && x > width) {
            enemyMovingRight =! enemyMovingRight;
            randomy = (int)random(100, width/2-200);
            move = 2;
          } else if (enemyMovingRight == false && x < 0) {
            enemyMovingRight =! enemyMovingRight; 
            randomy = (int)random(width/2, height-height/4);
            move = 2;
          }
          if (x < 0) {
          }
        } else if (move == 2) {
          y = randomy;
          if (y == randomy) {
            move = 1;
          } else if (y > randomy) {
            y += 1;
          } else if (y < randomy) {
            y -= 1;
          }
        }
      } else if (hp > 16) {
        if (timeReady) {
          pro.add(new projectile(x, y, width/2 + mainPlayer.w/2 -x, height/2 + 250 -y, 0.02, false, 0));   
          timeReady = false;
          timeCheck = millis() + 1550;
        }
        if (move == 1) {
          if (enemyMovingRight) {
            x = x + speed;
          } else {
            x = x - speed;
          }
          if (enemyMovingRight && x > width) {
            enemyMovingRight =! enemyMovingRight;
            randomy = (int)random(100, width/2-200);
            move = 2;
          } else if (enemyMovingRight == false && x < 0) {
            enemyMovingRight =! enemyMovingRight; 
            randomy = (int)random(width-100, height-height/4);
            move = 2;
          }
          if (x < 0) {
          }
        } else if (move == 2) {
          y = randomy;
          if (y == randomy) {
            move = 1;
          } else if (y > randomy) {
            y += 1;
          } else if (y < randomy) {
            y -= 1;
          }
        }
      }
      image(boss1Img, x, y);
      fill(255, 0, 0);
    }

    for (int i = 0; i < enchants.size(); i++) {
      if (enchants.get(i) == 1) {
        speed = 7;
      }
    }     


    //text(str(hp)+" / " + str(mh),width/2,width/2);

    image(targetImg, (x+pointsX.get(hp))-10, (y+pointsY.get(hp))-10);
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
