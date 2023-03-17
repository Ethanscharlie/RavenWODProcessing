public class talkNPC {
  float x;
  float y;
  int w;
  int h;
  PImage img;
  String text;
  int myWorld;
  boolean showingText = false;
  boolean touchingPlayer;
  int type;
  boolean looped = false;
  float adTriggerX;

  public talkNPC(float xIn, float yIn, int wIn, int hIn, int worldIn, int typeIn, String textIn) {
    x = xIn;
    y = yIn;
    w = wIn;
    h = hIn;
    img = npc;
    text = textIn;
    myWorld = worldIn;
    type = typeIn;
    if (textIn == null) {
      textIn = " ";
    }
  }

  void drawSelf() {
    //println(storyTriggerAdventurer);
    looped = false;
    if (storyTriggerAdventurer == 3 && type == 1) {
      adTriggerX = mainPlayer.x -= 60;
      myWorld = world;
      if (world == 4) {
        storyTriggerAdventurer = 4;
        currentTextBox = new textBox("Look!/There's a bird/that bird is called a raven/ravens are power sources they fuel all of life/we can only see when they're lost because of the void/ ?/ the void?/ the void is a great storm, it grows everyday and soon it will destroy us all/ it is the thing that is summoning all of these bats/AHHH, there's a giant bat!");
      }
    }
    if (storyTriggerAdventurer == 4 && type == 1) {
      if (currentTextBox.needed == false) {
        storyTriggerAdventurer = 5;
      }
    }
    if (storyTriggerAdventurer == 5 && type == 1) {
      myWorld = 1;
    }
    //print("drawNpc");
    if (showingText) {

      //writeText(text);      
      if (mousePressed) {
        //showingText = false;
      }
    }

    if (world == myWorld) { 
      if (npc == null) {
      } else {
        //rect(x,y,w,h);
        if ((storyTriggerAdventurer == 3 || storyTriggerAdventurer == 4) && type == 1) {
          image(aNPCImg, adTriggerX, y);
        } else if (type == 1) {
          image(aNPCImg, x, y);
        } else if (type == 0) {
          image(npc, x, y);
        }
      }



      //for(int i = 0; i < mainPlayer.w; i++){
      //for(int j = 0; j < mainPlayer.h; j++){
      if (world == myWorld && mainPlayer.x+mainPlayer.w > x && mainPlayer.x < x+80 && mainPlayer.y + mainPlayer.h + mainPlayer.h > y && mainPlayer.y < y+100) {
        touchingPlayer = true;
        //intln("Touching talk NPC");
        if (keyPressed && key == 'e') {

          if (type == 1) {

            if (storyTriggerAdventurer == 3) {
              text = "go to the large tree, I will follow you";
            }
            if (storyTriggerAdventurer == 2) {
              for (int i = 0; i < iButtons.size(); i++) {
                if (iButtons.get(i).itemId == 7) {
                  text = ("Ok then lets go to the tree, I will follow you");  
                  storyTriggerAdventurer = 3;
                  looped = true;
                } else {
                  text = "The gem is somewhere in the swamp, the entrince is to the left"; 
                  storyTriggerAdventurer = 2;   
                  looped = true;
                }
              }
            } else if (storyTriggerAdventurer == 1 ) {
              if (bountys < 5) {
                text = "come back to me when you have 5 boutys";
                storyTriggerAdventurer = 1;
                looped = true;
              }
              if (bountys > 4) {
                text = "Good, you have proved your worth. The gem is somewhere in the swamp, the entrince is to the left"; 
                storyTriggerAdventurer = 2;
                looped = true;
              }
            } else if (storyTriggerAdventurer == 0 ) {
              if (bountys < 5) {
                text = "Hello, I need to travel through the large tree, but to enter I need the forest gem, I need someone to get it for me./ You? Sure you have a weapon but do you now how to use it, come back to me when you have 5 boutys";

                storyTriggerAdventurer = 1;

                looped = true;
              }
              if (bountys > 4) {
                text = "Hello, I need to travel through the large tree, but to enter I need the forest gem, I need someone to get it for me./ You? Well you are good with your bow/ The gem is somewhere in the swamp, the entrince is to the left"; 
                storyTriggerAdventurer = 2;
                looped = true;
              }
            }
          }

          if (currentTextBox.needed == false) {
            currentTextBox = new textBox(text);
          }
          showingText = true;
          delay(200);
        }
      } else {
        touchingPlayer = false;
      }
    }
    //}
    //}
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
