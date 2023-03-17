//all
import processing.sound.*;
SoundFile file;

//Img
PImage activeatedPortalImg;
PImage deactiveatedPortalImg;
PImage lightKnightImg;
PImage darkKnightImg;
PImage shopImg;
PImage tree;
PImage lamp;
PImage doorImg;
PImage targetImg;
PImage bountyImg;
PImage playerPosOne;
PImage playerPosTwo;
PImage currentPlayerPos;
PImage mouse1Img;
PImage mouse2Img;
PImage mouse3Img;
PImage desertPlantImg;
PImage dashImg;
PImage BackgroundImgW1;
PImage chestImg;
PImage openChestImg;
PImage menuImg;
PImage desertBackgroundImg;
PImage blueBuildingImg;
PImage forestEnemyImg;
PImage gatewayCastleImg;
PImage gatewayCastleObjImg;
PImage jumpIdImg;
PImage naturalPortalImg;
PImage backgroundImgW4;
PImage largeTreeImg;
PImage insideTreeImg;
PImage treeDoor;
PImage swampBackgroundImg;
PImage slimeBossImg;
PImage boss1Img;
PImage aNPCImg;
PImage ravenLogoImg;
PImage slimeKnightImg;
PImage groundSlimeImg;
PImage world0BackgroundImg;
PImage world0GroundImg;
PImage world1GroundImg;
PImage world4GroundImg;
PImage world7GroundImg;
PImage world8GroundImg;
PImage world8BackgroundImg;
PImage archImg;
PImage rockImg;
PImage rockBrokenImg;
PImage caveImg;


//screen 6
int selecteditem = 0;
ArrayList<Float> itemCosts = new ArrayList<Float>();

//in ids
ArrayList<PImage> imgIds = new ArrayList<PImage>();

//screen 4
ArrayList<itemButton> iButtons = new ArrayList<itemButton>();

//event trigger
boolean boss1 = false;
boolean boss2 = false;
int storyTriggerAdventurer = 0;
int storyTriggerStartup = 0;

//screen 3
ArrayList<weapon> weapons = new ArrayList<weapon>();
ArrayList<world> worlds = new ArrayList<world>();
textBox currentTextBox;
ArrayList<wall> walls = new ArrayList<wall>();
ArrayList<Integer> shopContent2 = new ArrayList<Integer>();
int prevDoor;
boolean mainPortalActivated;
ArrayList<Boolean> portalsActivated = new ArrayList<Boolean>();
boolean jumpStart = false;
boolean jumping = false;
float jumpForce = 20;
float gravity = 2;
boolean playerFacingRight = true;
boolean keyPressShow = false;
float checkenchant;
ArrayList<shop> shops = new ArrayList<shop>();
int bountys = 0;
boolean bowCharge = false;
ArrayList<ArrayList> Mainlist = new ArrayList<ArrayList>(); 
int orderSelected = 1;
float centerX;
int changeSelect = 0;
ArrayList<projectile> pro = new ArrayList<projectile>();
ArrayList<enemy> enemys = new ArrayList<enemy>();
ArrayList<object> objs = new ArrayList<object>();
player mainPlayer = new player();
ArrayList<Float> begBlockY = new ArrayList<Float>();
float playerMoveSpeed = 5.3;
float jumpForceDefalt = 12;
boolean hittingDown = false;
boolean movingRight;
boolean movingLeft;
float restListSize;
boolean projCheck;
int currentWeapon1 = 0;
int currentWeapon2 = 0;
int currentWeapon3 = 0;
int screen = 1; 
int world = 0;
//door telePortal;
ArrayList<door> doors = new ArrayList<door>();
ArrayList<primaryObj> pObjs = new ArrayList<primaryObj>();
ArrayList<Chest> chests = new ArrayList<Chest>();
ArrayList<talkNPC> tNPCs = new ArrayList<talkNPC>();
float weaponSpeed;
float weaponDamage;
float globalX;
float glabalY;
secItem equiped = new secItem();
boolean dashing = false;
float dashpower = 80;
float bowChargeTime;
ArrayList<Float> weaponWaitTimes = new ArrayList<Float>();
boolean w1Ready = true;
boolean w2Ready = true;
boolean w3Ready = true;
float cw1;
float cw2;
float cw3;
ArrayList<Integer> shopContent = new ArrayList<Integer>();
ArrayList<String> itemDescriptions = new ArrayList<String>();
//boolean showingText = false;

//screen 1             int startWIn, float startYIn, float startXIn, int endWIn, float endXIn, float endYIn, PImage imgIn
PImage bak;
PImage npc;
ArrayList<String> buttons = new ArrayList<String>();


void setup() {
  size(displayWidth, displayHeight);

  currentTextBox = new textBox("");
  currentTextBox.needed = false;

  background(244, 244, 100);
  fill(244, 244, 100);
  ellipse(width/2, height/2, 100, 100);
  fill(0);
  text("Loading", width/2-(textWidth("Loading")/2), height/2 - height/10);
  
  caveImg = loadImage("caveImg.png");
  caveImg.resize(250,250);
  playerPosOne = loadImage("playerPosOne.png");
  playerPosOne.resize(80, 100);
  playerPosTwo = loadImage("playerPosTwo.png");
  playerPosTwo.resize(80, 100);
  currentPlayerPos = playerPosOne;

  mouse1Img = loadImage("mouse1.png");
  mouse1Img.resize(60, 60);
  mouse2Img = loadImage("mouse2.png");
  mouse2Img.resize(60, 60);
  mouse3Img = loadImage("mouse3.png");
  mouse3Img.resize(60, 60);

  //slimeKnightImg = loadImage("knightSlimeImg.png");
  //slimeKnightImg.resize(150,150);
  rockBrokenImg = loadImage("rockBrokenImg.png");
  rockBrokenImg.resize(100, 100);
  rockImg = loadImage("rockImg.png");
  rockImg.resize(100, 100);
  archImg = loadImage("arch.png");
  world8GroundImg = loadImage("world8Ground.png");
  world8GroundImg.resize(width, height/4);
  world8BackgroundImg = loadImage("world8Background.png");
  world8BackgroundImg.resize(width,height);
  world7GroundImg = loadImage("world7Ground.png");
  world7GroundImg.resize(width, height/4);
  world4GroundImg = loadImage("world4Ground.png");
  world4GroundImg.resize(width, height/4);
  world1GroundImg = loadImage("world1Ground.png");
  world1GroundImg.resize(width, height/4);
  world0GroundImg = loadImage("world0Ground.png");
  world0GroundImg.resize(width, height/4);
  world0BackgroundImg = loadImage("world0Background.png");
  world0BackgroundImg.resize(width, height);
  ravenLogoImg = loadImage("ravenLogo.png");
  ravenLogoImg.resize(510, 250);
  aNPCImg = loadImage("aNPC.png");
  aNPCImg.resize(80, 100);
  boss1Img = loadImage("boss1Img.png");
  boss1Img.resize(400, 200);
  slimeBossImg = loadImage("slimeBossImg.png");
  slimeBossImg.resize(150, 150);
  swampBackgroundImg = loadImage("swampBackgroundImg.jpg");
  swampBackgroundImg.resize(width, height);
  treeDoor = loadImage("treeDoor.png");
  treeDoor.resize(mainPlayer.w+10, mainPlayer.h+10);
  insideTreeImg = loadImage("insideTheTreeImg.png");
  insideTreeImg.resize(width, height);
  largeTreeImg = loadImage("largeTreeImg.png");
  largeTreeImg.resize(500, 1000);
  backgroundImgW4 = loadImage("backgroundImgW4.png");
  backgroundImgW4.resize(width, height);
  activeatedPortalImg = loadImage("activeatedPortalImg.png");
  activeatedPortalImg.resize(150, 150);
  deactiveatedPortalImg = loadImage("deactiveatedPortalImg.png");
  deactiveatedPortalImg.resize(150, 150);
  naturalPortalImg = loadImage("naturalPortalImg.png");
  naturalPortalImg.resize(120, 120);
  lightKnightImg = loadImage("lightKnightImg.png");
  lightKnightImg.resize(150, 211);
  darkKnightImg = loadImage("darkKnightImg.png");
  darkKnightImg.resize(150, 211);
  gatewayCastleImg = loadImage("gatewayCastleImg.png");
  gatewayCastleObjImg = loadImage("gatewayCastleObjImg.png");
  gatewayCastleImg.resize(width, height);
  gatewayCastleObjImg.resize(width/10, height);
  forestEnemyImg = loadImage("forestEnemyImg.png");
  forestEnemyImg.resize(150, 150);
  blueBuildingImg = loadImage("blueBuildingImg.png");
  blueBuildingImg.resize(700, 340);
  desertBackgroundImg = loadImage("desertBackgroundImg.jpg");
  desertBackgroundImg.resize(width, height);
  shopImg = loadImage("shopImg.png");
  shopImg.resize(150, 150);
  menuImg = loadImage("menuImg.png");
  menuImg.resize(80, 80);
  openChestImg = loadImage("openChestImg.png");
  openChestImg.resize(100, 100);
  chestImg = loadImage("chestImg.png");
  chestImg.resize(100, 100);
  dashImg = loadImage("dashImg.png");
  dashImg.resize(60, 60);
  desertPlantImg = loadImage("desertplantimg.png");
  desertPlantImg.resize(60, 75);
  tree = loadImage("tree.png");
  lamp = loadImage("lamp.png");
  doorImg = loadImage("doorway.png");
  doorImg.resize(mainPlayer.w+10, mainPlayer.h+10);
  BackgroundImgW1 = loadImage("BackgroundImgW1.png");
  BackgroundImgW1.resize(width, height);
  npc = loadImage("NPC.png");
  npc.resize(80, 100);
  targetImg = loadImage("target.png");
  targetImg.resize(20, 20);

  bountyImg = loadImage("bountyImg.png");
  bountyImg.resize(100, 100);
  resetObjs();
  createDoors();


  //doors

  //doorImg.resize(mainPlayer.w+10, mainPlayer.h+10);


  //teledoor
  //telePortal.img.resize(mainPlayer.w+10, mainPlayer.h+10);


  bak = loadImage("menubackground.png");
  bak.resize(width, height);

  println("done loading");



  stroke(0);
  strokeWeight(2);

  weapons.add(new weapon(0, lamp, 0, 0, "This is literaly nothing"));
  weapons.add(new weapon(1, loadImage("bowIdImg.png"), 1100, 10, "Basic Bow - This is your standard death weapon"));
  weapons.add(new weapon(2, loadImage("dashImg.png"), 800, 10, "Dash - get out of the way!"));
  weapons.add(new weapon(3, loadImage("potionImg.png"), 0, 4, "Healling Potion - just apples and water"));
  weapons.add(new weapon(4, loadImage("desertBowIdImg.png"), 1100, 4, "Desert Bow - This has the ablity to slow enmeys down"));
  weapons.add(new weapon(5, loadImage("placeholder.png"), 0, 4, "Carl emblem"));
  weapons.add(new weapon(6, loadImage("jumpIdImg.png"), 800, 4, "Jump - boing boing"));
  weapons.add(new weapon(7, loadImage("forestGem.png"), 0, 7, "Forest Gem - used to unlock the large tree"));
  weapons.add(new weapon(8, loadImage("vineRod.png"), 1100, 10, "vine rod - makes dem vines"));

  weaponWaitTimes.add(0.0);
  weaponWaitTimes.add(1100.0);
  weaponWaitTimes.add(800.0);
  weaponWaitTimes.add(0.0);
  weaponWaitTimes.add(1100.0);
  weaponWaitTimes.add(0.0);
  weaponWaitTimes.add(800.0);
  weaponWaitTimes.add(0.0);
  weaponWaitTimes.add(1100.0);

  itemCosts.add(0.0);
  itemCosts.add(10.0);
  itemCosts.add(10.0);
  itemCosts.add(4.0);
  itemCosts.add(4.0);
  itemCosts.add(4.0);
  itemCosts.add(4.0);
  itemCosts.add(7.0);

  itemDescriptions.add("This is literaly nothing");
  itemDescriptions.add("Basic Bow - This is your standard death weapon");
  itemDescriptions.add("Dash - get out of the way!");
  itemDescriptions.add("Healling Potion - just apples and water");
  itemDescriptions.add("Desert Bow - This has the ablity to slow enmeys down");
  itemDescriptions.add("Carl emblem");
  itemDescriptions.add("Jump - boing boing");
  itemDescriptions.add("Forest Gem - used to unlock the large tree");
  itemDescriptions.add("vine rod - makes dem vines");

  worlds.add(new world(0, world0BackgroundImg, world0GroundImg, lamp));
  worlds.add(new world(1, BackgroundImgW1, world1GroundImg, tree));
  worlds.add(new world(2, desertBackgroundImg, world0GroundImg, desertPlantImg));
  worlds.add(new world(3, world0BackgroundImg, world0GroundImg, gatewayCastleObjImg));
  worlds.add(new world(4, backgroundImgW4, world4GroundImg, archImg));
  worlds.add(new world(5, insideTreeImg, world0GroundImg, tree));
  worlds.add(new world(6, swampBackgroundImg, world1GroundImg, tree));
  worlds.add(new world(7, swampBackgroundImg, world7GroundImg, archImg));
  worlds.add(new world(8, world8BackgroundImg, world8GroundImg, archImg));

  //sound
  music();
  //file = new SoundFile(this,"song1.wav");
  //file.play();
  centerX = width/2;
  globalX = width/2;
  //player
  mainPlayer.y = height - height/3;
  mainPlayer.x = width/2;

  shopContent2.add(3);
  //shopContent2.add(7);
  shops.add(new shop(width/2-600, height - height/3, 100, 100, 0, shopContent2));
  //Chests
  chests.add(new Chest(width/2+300, mainPlayer.y, 0, 1));
  chests.add(new Chest(width/2+180, mainPlayer.y, 0, 2));
  chests.add(new Chest(width/2+180, mainPlayer.y, 3, 6));
  chests.add(new Chest(width/2-2700, mainPlayer.y, 1, 8));

  //object
  for (int j = 0; j < 100; j++) {
    objs.add(new object());
  } 
  resetObjs();

  //primary objects
  pObjs.add(new primaryObj(width/2-(360-45), 130+340, 1, blueBuildingImg, 0));
  pObjs.add(new primaryObj(width/2+800, height/2-600, 1, largeTreeImg, 0));
  pObjs.add(new primaryObj(width/2+800, height/2-600, 4, largeTreeImg, 0));
  //rock
  pObjs.add(new primaryObj(width/2-1000, (height-height/4)-98, 1, rockImg, 1));
  pObjs.add(new primaryObj(width/2-1700, (height-height/4)-98, 1, rockImg, 1));
  pObjs.add(new primaryObj(width/2-3200, (height-height/4)-98, 1, rockImg, 1));
  //cave
  pObjs.add(new primaryObj(width/2-3600, (height-height/4)-250, 1, caveImg, 0));

  //talkNPCs
  tNPCs.add(new talkNPC(mainPlayer.x-100, mainPlayer.y, mainPlayer.w, mainPlayer.h, 0, 0, "Open the chests before leaving"));
  tNPCs.add(new talkNPC(mainPlayer.x+100, mainPlayer.y, mainPlayer.w, mainPlayer.h, 0, 0, "To equip gear press Q, then click on the slot that you want it be in, then click on the gear you want"));
  tNPCs.add(new talkNPC(width/2-100, mainPlayer.y, mainPlayer.w, mainPlayer.h, 2, 0, "The enemy in this area has a chance to give you the desert bow after death, the bow has the ablity to slow enemys down, and the enemy can also slow you down!"));
  tNPCs.add(new talkNPC(width/2-450, height - height/3, mainPlayer.w, mainPlayer.h, 1, 0, "Hit the targets on the enemy with your bow, once you hit all of them, then it dies"));
  tNPCs.add(new talkNPC(width/2+450, height - height/3, mainPlayer.w, mainPlayer.h, 5, 0, "you need the forest gem to continue, it drops from the slime in the swamp"));
  tNPCs.add(new talkNPC(mainPlayer.x-100, mainPlayer.y, mainPlayer.w, mainPlayer.h, 1, 1, ""));

  //walls
  walls.add(new wall(width/2+570, height-height/3-200, 80, 200, 1, false, 0));
  walls.add(new wall(width/2+200, height-height/3-200, 80, 200, 8, false, 1));


  //imgids



  //doors


  //telePortal.img = loadImage("doorway.png");

  //screen 1
  buttons.add("Continue");
  buttons.add("New Game");
  buttons.add("Settings");

  //screen1
  background(244, 244, 100);
}


//void move
void draw() {

  //println(telePortal.endW);
  if (keyPressed) {
    if (key == 'a') {
      //centerX -= playerMoveSpeed;
    }
    if (key == 'd') {
      //centerX += playerMoveSpeed;
    }
  }
  // println(centerX);
  //save("screenshot.png");
  //screenshot = loadImage("screenshot.png");
  //println(str(world) + "///");
  if (keyPressed && key == 'q' && (screen == 3 || screen == 4)) {
    if (screen == 3) {
      screen = 4;
    } else if (screen == 4) {
      screen = 3;
    }

    delay(200);
  }
  if (screen == 2) {


    //image(bak,0,0);
    background(bak);

    fill(0);
    image(ravenLogoImg, width/10, height/10+(55*4));
    for (int i = 0; i < buttons.size(); i++) {    
      fill(255);

      if (mousePressed && mouseX > width/10-13 && mouseX < width/10-13 + width/2 && mouseY > height/10-13+(i*55) && mouseY < (height/10-13)+(i*55)+50) {

        runButton(buttons.get(i));
      }


      rect(width/10-13, height/10-13+(i*55), width/2, 50);
      fill(0);
      text(buttons.get(i), width/10, height/10+(i*55));
    }
  }

  if (screen == 1) {

    println("loading");

    screen = 2;
  }

  if (screen == 6) {
    background(255);
    fill(255);
    rect(width-width/4, 0, width/4-10, height-20);
    fill(0);
    text("item id: " + str(selecteditem) + "          cost: " + str(itemCosts.get(selecteditem)), width-width/4+30, 0+30);

    fill(0, 255, 0);
    ellipse(width-width/4+80, 0+90, 80, 80);
    fill(0);
    text("Buy", width-width/4+70, 80);
    if (dist(width-width/4+80, 0+90, mouseX, mouseY) < 40 && mousePressed) {
      if (bountys > itemCosts.get(selecteditem)-1 ) {
        bountys -= itemCosts.get(selecteditem);
        iButtons.add(new itemButton(selecteditem));
        screen = 3;
      }
    }

    fill(255, 0, 0);    
    ellipse(width-width/4+170, 0+90, 80, 80);
    fill(0);
    text("Exit", width-width/4+160, 0+80);
    if (dist(width-width/4+170, 0+90, mouseX, mouseY) < 40 && mousePressed) {
      screen = 3;
    }

    for (int i = 0; i < shopContent.size(); i++) {
      fill(255);
      ellipse(60, 60 + (60 * (i)), 60, 60);
      image(imgIds.get(shopContent.get(i)), 60-30, 60 + (60 * i) - 30);

      if (dist(60, 60 + (60 * (i)), mouseX, mouseY) < 30 && mousePressed) {
        selecteditem = shopContent.get(i);
      }
    }
  }
  if (screen == 4) {
    background(0);
    fill(255);  
    ellipse(width/2, (height/2-width/9)-100, 60, 60);
    ellipse(width/2, (height/2-width/9)-30, 60, 60);
    ellipse(width/2, (height/2-width/9)+40, 60, 60);

    ellipse(width/2+150, (height/2-width/9)-100, 110, 110);
    fill(0);
    text("Save", width/2+150, (height/2-width/9)-100);
    fill(255);

    if (dist(width/2+150, (height/2-width/9)-100, mouseX, mouseY) < 110/2) {
      saveGame();
    }



    if (dist(width/2, (height/2-width/9)-100, mouseX, mouseY) < 30 && mousePressed) {
      if (changeSelect == 1) {
        changeSelect = 1;
      } else {
        changeSelect = 1;
      }
    } else if (dist(width/2, (height/2-width/9)-30, mouseX, mouseY) < 30 && mousePressed) {
      if (changeSelect == 2) {
        changeSelect = 2;
      } else {
        changeSelect = 2;
      }
    } else if (dist(width/2, (height/2-width/9)+40, mouseX, mouseY) < 30 && mousePressed) {
      if (changeSelect == 3) {
        changeSelect = 3;
      } else {
        changeSelect = 3;
      }
    }

    if (changeSelect == 1) {
      fill(255, 255, 0);
      ellipse(width/2, (height/2-width/9)-100, 60, 60);
    } else if (changeSelect == 2) {
      fill(255, 255, 0);
      ellipse(width/2, (height/2-width/9)-30, 60, 60);
    } else if (changeSelect == 3) {
      fill(255, 255, 0);
      ellipse(width/2, (height/2-width/9)+40, 60, 60);
    }

    fill(255);  
    //text(changeSelect,width/2-50,height/2-width/9-60);
    rect(width/9, height/2-width/20, width-width/5, height/2-height/8);
    fill(0);
    rect(width/9+60, height/2-width/20+60, width-width/5-120, height/2-height/8-120);



    if (weapons.size() >= currentWeapon1) {
      image(weapons.get(currentWeapon1).img, width/2-30, (height/2-width/9)-130);
    } else {
      text(currentWeapon1, width/2, (height/2-width/9)-100);
    }
    //
    if (weapons.size() >= currentWeapon2) {
      image(weapons.get(currentWeapon2).img, width/2-30, (height/2-width/9)-60);
    } else {
      text(currentWeapon2, width/2, (height/2-width/9)-30);
    }
    //
    if (weapons.size() >= currentWeapon3) {
      image(weapons.get(currentWeapon3).img, width/2-30, (height/2-width/9)+10);
    } else {
      text(currentWeapon3, width/2, (height/2-width/9)+40);
    }
    //


    fill(255);


    for (int i = 0; i < iButtons.size(); i++) {
      iButtons.get(i).x = width/9+100 + (i * 100);
      iButtons.get(i).y = height/2-width/20+100;
      iButtons.get(i).drawSelf();
      if (dist(mouseX, mouseY, iButtons.get(i).x, iButtons.get(i).y) < 30) {

        fill(255);
        text(itemDescriptions.get(iButtons.get(i).itemId), 400, 200, 300, 300);

        if (mousePressed && currentWeapon1 != iButtons.get(i).itemId && currentWeapon2 != iButtons.get(i).itemId && currentWeapon3 != iButtons.get(i).itemId) {
          if (changeSelect == 1) {
            currentWeapon1 = iButtons.get(i).itemId;
          } else if (changeSelect == 2) {
            currentWeapon2 = iButtons.get(i).itemId;
          } else if (changeSelect == 3) {
            currentWeapon3 = iButtons.get(i).itemId;
          }
          changeSelect = 0;

          //if (iButtons.get(i).itemId == iButtons.get(i).itemId) {

          //weaponSpeed = 0.052;
          //}
        }
      }
    }
  }

  if (screen == 5) {
    background(0);

    text("Game Over", width/2, height/2);
    text("exit the game and start it to continue", width/2, height/2+100);
  }

  if (screen == 3) {
    fill(255);

    image(worlds.get(world).backgroundImg, 0, 0);
    //background
    if (world == 0) {
      // background(30, 30, 30);
    } else if (world == 1) {
      //image(BackgroundImgW1, 0, 0);
      //background(179,222,255);
    } else if (world == 2) {
      //image(desertBackgroundImg, 0, 0);
    } else if (world == 3) {
      //image(gatewayCastleImg, 0, 0);
    } else if (world == 4) {
      //image(backgroundImgW4, 0, 0);
    } else if (world == 5) {
      //image(insideTreeImg, 0, 0);
    } else if (world == 6) {
      //image(swampBackgroundImg, 0, 0);
    }

    if (mainPlayer.health < 1) {
      screen = 5;
    }



    //Objects
    for (int i = 0; i < objs.size(); i++) {
      objs.get(i).drawObj();
      objs.get(i).img.resize(objs.get(i).w, objs.get(i).h);
    }

    //primary objects
    for (int i = 0; i < pObjs.size(); i++) {
      pObjs.get(i).drawSelf();
    }



    for (int i = 0; i < walls.size(); i++) {
      walls.get(i).drawSelf();
    }

    if (playerTouchingObject()) {
      fill(255);
      rect(mainPlayer.x+(mainPlayer.w/2)-5, mainPlayer.y-(mainPlayer.h/1.5)-15, 20, 20);
      fill(0);
      text("E", mainPlayer.x+(mainPlayer.w/2), mainPlayer.y-(mainPlayer.h/1.5));
      //println("keyPressShowed");
    }

    if (boss1) {
      doors.get(1).startW = 4;
    }
    for (int i = 0; i < iButtons.size(); i++) {
      if (iButtons.get(i).itemId == 7) {
        doors.get(2).startW = 1;  
        doors.get(2).endW = 5;
        doors.get(6).startW = 5;
      }
    }

    for (int i = 0; i < iButtons.size(); i++) {
      iButtons.get(i).drawGet();
    }

    for (int i = 0; i < weapons.size(); i++) {
      if (weapons.get(i).inUse) {
        if (weapons.get(i).id == 8) {
          fill(47, 113, 19);
          line(weapons.get(i).oMouseX, 0+300, weapons.get(i).oMouseX, height);
          if (weapons.get(i).timeCheck <= millis()) {
            weapons.get(i).inUse = false;
          }
        }
      }
    }

    //ui
    fill(255);
    ellipse(width/10, height/10, 60, 60);
    ellipse(width/10+70, height/10, 60, 60);
    ellipse(width/10+140, height/10, 60, 60);

    image(mouse1Img, width/10-30, height/10+50);
    image(mouse2Img, width/10+40, height/10+50); 
    image(mouse3Img, width/10+110, height/10+50);

    image(bountyImg, width-190, 80);
    fill(255, 20, 20);
    text("Bountys: " + str(bountys), width-160, 130);
    fill(255);

    image(menuImg, width/10-30, height/10+120);

    strokeWeight(20);

    stroke(0);
    line(80, 55, 100 * 10, 55);
    stroke(255, 0, 0);
    line(80, 55, mainPlayer.health * 10, 55);

    stroke(0);
    strokeWeight(2);

    fill(0);

    if (weapons.size() >= currentWeapon1) {
      image(weapons.get(currentWeapon1).img, width/10-30, height/10-30);
    } else {
      text(currentWeapon1, width/10, height/10);
    }

    if (weapons.size() >= currentWeapon2) {
      image(weapons.get(currentWeapon2).img, width/10+40, height/10-30);
    } else {
      text(currentWeapon2, width/10+70, height/10);
    }

    if (weapons.size() >= currentWeapon3) {
      image(weapons.get(currentWeapon3).img, width/10+110, height/10-30);
    } else {
      text(currentWeapon3, width/10+140, height/10);
    }

    //chests
    for (int i = 0; i < chests.size(); i++) {
      chests.get(i).drawSelf();
    }

    for (int i = 0; i < shops.size(); i++) {
      shops.get(i).drawSelf();
    }


    //door
    for (int i = 0; i < doors.size(); i++) {
      doors.get(i).drawSelf();
    }
    for (int i = 0; i < tNPCs.size(); i++) { 
      tNPCs.get(i).drawSelf();
    }
    if (currentTextBox != null) {
      currentTextBox.drawSelf();
    }
    //telePortal.drawSelf();


    if ((millis() > cw1 + weaponWaitTimes.get(currentWeapon1)) && w1Ready == false) {
      w1Ready = true;
    }
    if ((millis() > cw2 + weaponWaitTimes.get(currentWeapon2)) && w2Ready == false) {
      w2Ready = true;
    }
    if ((millis() > cw3 + weaponWaitTimes.get(currentWeapon3)) && w3Ready == false) {
      w3Ready = true;
    }


    if ((random(5000) < 5) || (keyPressed && key == 't') || (world == 4 && boss1 == false && storyTriggerAdventurer == 5)) {
      if (enemys.size() == 0 && world != 0 && world != -1) {

        if ((world == 4 && boss1) == false && (world == 6 && boss2) == false && (world == 4 && storyTriggerAdventurer < 5) == false) {

          enemys.add(new enemy());

          music();
          if (world == 1) {
            enemys.get(0).pointsX.add(75.0);
            enemys.get(0).pointsY.add(0.0);
            enemys.get(0).pointsX.add(-75.0);
            enemys.get(0).pointsY.add(0.0);
            enemys.get(0).pointsX.add(0.0);
            enemys.get(0).pointsY.add(0.0);
            enemys.get(0).pointsX.add(0.0);
            enemys.get(0).pointsY.add(-75.0);
          } else if (world == 2) {
            enemys.get(0).pointsX.add(75.0);
            enemys.get(0).pointsY.add(0.0);
            enemys.get(0).pointsX.add(-75.0);
            enemys.get(0).pointsY.add(0.0);
            enemys.get(0).pointsX.add(0.0);
            enemys.get(0).pointsY.add(0.0);
            enemys.get(0).pointsX.add(0.0);
            enemys.get(0).pointsY.add(-75.0);
          } else if (world == 3) {
            enemys.get(0).pointsX.add(95.0);
            enemys.get(0).pointsY.add(75.0);
            enemys.get(0).pointsX.add(95.0);
            enemys.get(0).pointsY.add(105.0);
            enemys.get(0).pointsX.add(95.0);
            enemys.get(0).pointsY.add(145.0);
            //
            enemys.get(0).pointsX.add(95.0);
            enemys.get(0).pointsY.add(75.0);
            enemys.get(0).pointsX.add(95.0);
            enemys.get(0).pointsY.add(105.0);
            enemys.get(0).pointsX.add(95.0);
            enemys.get(0).pointsY.add(145.0);
          } else if (world == 4) {
            //1
            enemys.get(0).pointsX.add(400.0);
            enemys.get(0).pointsY.add(100.0);
            enemys.get(0).pointsX.add(0.0);
            enemys.get(0).pointsY.add(100.0);
            enemys.get(0).pointsX.add(200.0);
            enemys.get(0).pointsY.add(100.0);
            enemys.get(0).pointsX.add(200.0);
            enemys.get(0).pointsY.add(000.0);
            //2
            enemys.get(0).pointsX.add(400.0);
            enemys.get(0).pointsY.add(100.0);
            enemys.get(0).pointsX.add(0.0);
            enemys.get(0).pointsY.add(100.0);
            enemys.get(0).pointsX.add(200.0);
            enemys.get(0).pointsY.add(100.0);
            enemys.get(0).pointsX.add(200.0);
            enemys.get(0).pointsY.add(000.0);
            //3
            enemys.get(0).pointsX.add(400.0);
            enemys.get(0).pointsY.add(100.0);
            enemys.get(0).pointsX.add(0.0);
            enemys.get(0).pointsY.add(100.0);
            enemys.get(0).pointsX.add(200.0);
            enemys.get(0).pointsY.add(100.0);
            enemys.get(0).pointsX.add(200.0);
            enemys.get(0).pointsY.add(000.0);

            //phase 2
            enemys.get(0).pointsX.add(200.0);
            enemys.get(0).pointsY.add(100.0);
            enemys.get(0).pointsX.add(200.0);
            enemys.get(0).pointsY.add(100.0);
            enemys.get(0).pointsX.add(200.0);
            enemys.get(0).pointsY.add(100.0);
          } else if (world == 5) {
            enemys.get(0).pointsX.add(75.0);
            enemys.get(0).pointsY.add(0.0);
            enemys.get(0).pointsX.add(-75.0);
            enemys.get(0).pointsY.add(0.0);
            enemys.get(0).pointsX.add(0.0);
            enemys.get(0).pointsY.add(0.0);
            enemys.get(0).pointsX.add(0.0);
            enemys.get(0).pointsY.add(-75.0);
          } else if (world == 6) {
            enemys.get(0).pointsX.add(75.0);
            enemys.get(0).pointsY.add(0.0);
            enemys.get(0).pointsX.add(-75.0);
            enemys.get(0).pointsY.add(0.0);
            enemys.get(0).pointsX.add(0.0);
            enemys.get(0).pointsY.add(0.0);
            enemys.get(0).pointsX.add(0.0);
            enemys.get(0).pointsY.add(-75.0);
          } else if (world == 7) {
            enemys.get(0).pointsX.add(75.0);
            enemys.get(0).pointsY.add(75.0);
            enemys.get(0).pointsX.add(75.0);
            enemys.get(0).pointsY.add(75.0);        
            enemys.get(0).pointsX.add(75.0);
            enemys.get(0).pointsY.add(75.0);
            enemys.get(0).pointsX.add(75.0);
            enemys.get(0).pointsY.add(75.0);
            enemys.get(0).pointsX.add(75.0);
            enemys.get(0).pointsY.add(75.0);
            enemys.get(0).pointsX.add(75.0);
            enemys.get(0).pointsY.add(75.0);        
            enemys.get(0).pointsX.add(75.0);
            enemys.get(0).pointsY.add(75.0);
            enemys.get(0).pointsX.add(75.0);
            enemys.get(0).pointsY.add(75.0);
          }
        }
      }
    }

    worlds.get(world).scrollGround();
    if (world == 0) {
      //fill(37, 94, 139);
    } else if (world == 1) {
      //fill(46, 165, 45);
    } else if (world == 2) {
      //fill(240, 222, 189);
    }
    //rect(-1, height - height/4, width+1, height/4);

    if (pro.size()>0) {

      for (int i = 0; i < pro.size(); i++) {
        projCheck = false;
        pro.get(i).run();
        for (int j = 0; j < enemys.size(); j++) {
          //dist(pro.get(i).x, pro.get(i).y, enemys.get(j).x, enemys.get(j).y) < 60 || 
          if (dist(pro.get(i).x, pro.get(i).y, enemys.get(j).x + enemys.get(j).pointsX.get(enemys.get(j).hp), enemys.get(j).y + enemys.get(j).pointsY.get(enemys.get(j).hp)) < 60) {
            if (pro.get(i).playerShooting) {
              print("hit");
              if (pro.get(i).playerShooting && pro.get(i).enchant > 0) {
                enemys.get(0).enchants.add(pro.get(i).enchant);
              }
              pro.remove(pro.get(i));
              enemys.get(j).hp += 1;
              projCheck = true;

              if (enemys.get(j).hp == enemys.get(j).mh || enemys.get(j).hp > enemys.get(j).mh) {
                enemys.remove(enemys.get(j));
                if (world == 1) {
                  bountys++;
                } else if (world == 2) {
                  bountys += 2;
                } else if (world == 5) {
                  bountys += 1;
                } else if (world == 3) {
                  bountys += 2;
                } else if (world == 4) {
                  boss1 = true;
                  bountys += 10;
                } else if (world == 6) {
                  boss2 = true;
                  bountys += 10;
                }

                if ((int)random(8) == 0 && world == 2) {
                  iButtons.add(new itemButton(4));
                }
                if (world == 6) {
                  iButtons.add(new itemButton(7));
                }

                music();
              }
            }
          }
        }

        if (projCheck == false && pro.get(i).x > mainPlayer.x && pro.get(i).x < mainPlayer.x + mainPlayer.w && pro.get(i).y > mainPlayer.y && pro.get(i).y < mainPlayer.y + mainPlayer.h && pro.get(i).playerShooting == false) {
          if (pro.get(i).enchant == 1) {
            mainPlayer.enchants.add(1);
          }
          pro.remove(pro.get(i));
          mainPlayer.health -= 10;
          print(mainPlayer.health);

          // enemys.remove(enemys.get(j));
        }
      }
    }      

    for (int j = 0; j < enemys.size(); j++) {
      enemys.get(j).run();
    }



    mainPlayer.drawPlayer();
    if (jumpStart && jumping) {
      mainPlayer.y -= jumpForce;
      jumpForce -= gravity;
    }

    if (mainPlayer.y+100 > height - height/4 && jumping && jumpStart == true) {
      mainPlayer.y -= jumpForce;
      jumpForce -= gravity;
      jumpStart = false;
      //println(mainPlayer.y);
    }
    if (mainPlayer.y-100 <= height - height/4 && jumping && jumpStart == false) {
      jumping = false;  
      print("jump ended");
      mainPlayer.y = (height - height/4) - 100;
    }

    //movement system
    if (keyPressed) {
      if (dashing) {
        if (key == 'a') {
          // currentPlayerPos = playerPosTwo;
          playerFacingRight = false;

          for (int i = 0; i < pro.size(); i++) {
            pro.get(i).Move("RIGHT", true);
          }
          for (int i = 0; i < enemys.size(); i++) {
            enemys.get(i).Move("RIGHT", true);
          }
          for (int i = 0; i < objs.size(); i++) {
            objs.get(i).Move("RIGHT", true);
          }
          for (int i = 0; i < doors.size(); i++) {
            doors.get(i).Move("RIGHT", true);
          }
          for (int i = 0; i < chests.size(); i++) {
            chests.get(i).Move("RIGHT", true);
          }
          for (int i = 0; i < tNPCs.size(); i++) {
            tNPCs.get(i).Move("RIGHT", true);
          }
          for (int i = 0; i < pObjs.size(); i++) {
            pObjs.get(i).Move("RIGHT", true);
          }
          for (int i = 0; i < shops.size(); i++) {
            shops.get(i).Move("RIGHT", true);
          }
          for (int i = 0; i < walls.size(); i++) {
            walls.get(i).Move("RIGHT", true);
          }
          for (int i = 0; i < worlds.size(); i++) {
            worlds.get(i).Move("RIGHT", true);
          }
        }  
        if (key == 'd') {
          //currentPlayerPos = playerPosOne;
          playerFacingRight = true;
          for (int i = 0; i < pro.size(); i++) {
            pro.get(i).Move("LEFT", true);
          }
          for (int i = 0; i < enemys.size(); i++) {
            enemys.get(i).Move("LEFT", true);
          }
          for (int i = 0; i < objs.size(); i++) {
            objs.get(i).Move("LEFT", true);
          }
          for (int i = 0; i < doors.size(); i++) {
            doors.get(i).Move("LEFT", true);
          }
          for (int i = 0; i < chests.size(); i++) {
            chests.get(i).Move("LEFT", true);
          }
          for (int i = 0; i < tNPCs.size(); i++) {
            tNPCs.get(i).Move("LEFT", true);
          }
          for (int i = 0; i < pObjs.size(); i++) {
            pObjs.get(i).Move("LEFT", true);
          }
          for (int i = 0; i < shops.size(); i++) {
            shops.get(i).Move("LEFT", true);
          }
          for (int i = 0; i < walls.size(); i++) {
            walls.get(i).Move("LEFT", true);
          }
          for (int i = 0; i < worlds.size(); i++) {
            worlds.get(i).Move("LEFT", true);
          }
        } 
        dashing = false;
      } else {
        if (key == 'a') {
          //currentPlayerPos = playerPosOne;
          playerFacingRight = false;
          for (int i = 0; i < pro.size(); i++) {
            pro.get(i).Move("RIGHT", false);
          }
          for (int i = 0; i < enemys.size(); i++) {
            enemys.get(i).Move("RIGHT", false);
          }
          for (int i = 0; i < objs.size(); i++) {
            objs.get(i).Move("RIGHT", false);
          }
          for (int i = 0; i < doors.size(); i++) {
            doors.get(i).Move("RIGHT", false);
          }
          for (int i = 0; i < chests.size(); i++) {
            chests.get(i).Move("RIGHT", false);
          }
          for (int i = 0; i < tNPCs.size(); i++) {
            tNPCs.get(i).Move("RIGHT", false);
          }
          for (int i = 0; i < pObjs.size(); i++) {
            pObjs.get(i).Move("RIGHT", false);
          }
          for (int i = 0; i < shops.size(); i++) {
            shops.get(i).Move("RIGHT", false);
          }
          for (int i = 0; i < walls.size(); i++) {
            walls.get(i).Move("RIGHT", false);
          }
          for (int i = 0; i < worlds.size(); i++) {
            worlds.get(i).Move("RIGHT", false);
          }
        }  
        if (key == 'd') {
          //currentPlayerPos = playerPosTwo;
          playerFacingRight = true;
          for (int i = 0; i < pro.size(); i++) {
            pro.get(i).Move("LEFT", false);
          }
          for (int i = 0; i < enemys.size(); i++) {
            enemys.get(i).Move("LEFT", false);
          }  
          for (int i = 0; i < objs.size(); i++) {
            objs.get(i).Move("LEFT", false);
          }
          for (int i = 0; i < doors.size(); i++) {
            doors.get(i).Move("LEFT", false);
          }
          for (int i = 0; i < chests.size(); i++) {
            chests.get(i).Move("LEFT", false);
          }
          for (int i = 0; i < tNPCs.size(); i++) {
            tNPCs.get(i).Move("LEFT", false);
          }
          for (int i = 0; i < pObjs.size(); i++) {
            pObjs.get(i).Move("LEFT", false);
          }
          for (int i = 0; i < shops.size(); i++) {
            shops.get(i).Move("LEFT", false);
          }
          for (int i = 0; i < walls.size(); i++) {
            walls.get(i).Move("LEFT", false);
          }
          for (int i = 0; i < worlds.size(); i++) {
            worlds.get(i).Move("LEFT", false);
          }
        }
      }
    }
  }// end of screen 3 --- main gameplay
}//end of draw                            
void mousePressed() {

  if ((mouseButton == LEFT && w1Ready)) {
    weapons.get(currentWeapon1).use();
  }
  if ((mouseButton == RIGHT && w2Ready)) {
    weapons.get(currentWeapon2).use();
  }
  if ((mouseButton == CENTER && w3Ready)) {
    weapons.get(currentWeapon3).use();
  }

  //end of thing

  if (mouseButton == LEFT && w1Ready) {
    w1Ready = false;
    cw1 = millis();
  }
  if (mouseButton == RIGHT && w2Ready) {
    w2Ready = false;
    cw2 = millis();
  }
  if (mouseButton == CENTER && w3Ready) {
    w3Ready = false;
    cw3 = millis();
  }
}

void runButton(String type) {

  if (type == "Continue") {
    screen = 3;
    loadGame();
  }
  if (type == "New Game") {
    screen = 3;
  }
  music();
}
void resetObjs() {
  for (int i = 0; i < objs.size(); i++) {
    if (world == 1) {
      objs.get(i).img = tree;
    } else if (world == 0) {
      objs.get(i).img = lamp;
    } else if (world == 2) {
      objs.get(i).img = desertPlantImg;
    } else if (world == 3) {
      objs.get(i).img = gatewayCastleObjImg;
    } else if (world == 4) {
      objs.get(i).img = lamp;
    } else if (world == 5) {
      objs.get(i).img = tree;
    } else if (world == 6) {
      objs.get(i).img = tree;
    }
    objs.get(i).img = worlds.get(world).objImg;
    for (int j = 0; j < 100; j++) {
      objs.get(j).x = random(-width*10, width*10);
    }
  }
  println("changedlocation");
}

void jump(float force, float gravityIn, float groundLevel) {
  if (5==5) {
    jumpForce = force;
    gravity = gravityIn;
    jumping = true;
    jumpStart = true;
    mainPlayer.y -= 0;
  }
}

void scoot(float dist, boolean pos, boolean startDoorMod) {

  //dist += 90;

  if (enemys.size() > 0) {
    enemys.remove(0);
    println("removed enemy");
  }

  music();
  for (int i = 0; i < pObjs.size(); i++) {
    //pObjs.get(i).x = pObjs.get(i).startX;
  }



  //chests
  for (int i = 0; i < chests.size(); i++) {
    //chests.get(i).x += dist;
  }
  for (int i = 0; i < doors.size(); i++) {

    //doors.get(i).startX = doors.get(i).begStartX;  


    // doors.get(i).endX = doors.get(i).begEndX;
  }

  //resetObjs();
  if (pos == true) {
    dist = dist * -1;
  }
  //

  //println(dist);

  // for(int i = 0; i < objs.size(); i++){
  // objs.get(i).x += dist;  
  //}
  for (int i = 0; i < pObjs.size(); i++) {
    pObjs.get(i).x += dist;
  }
  //println(dist);

  // centerX += dist;
  //chests
  for (int i = 0; i < chests.size(); i++) {
    chests.get(i).x += dist;
  }
  for (int i = 0; i < shops.size(); i++) {
    shops.get(i).x += dist;
  }
  for (int i = 0; i < tNPCs.size(); i++) {
    tNPCs.get(i).x += dist;
  }

  for (int i = 0; i < doors.size(); i++) {

    doors.get(i).startX += dist;  


    doors.get(i).endX += dist;
  }
  //telePortal.endX += dist;
  //centerX = width/2;
}

void writeText(String text, int pages) {
  fill(255);    
  rect(30, height/12, width-90, (height/3-120)+55);    
  fill(0);  
  textSize(55);
  text(text, 45, height/12+60, (45+(width-90))-50, (height/12+60)+(height/3-120));
  textSize(10);
  image(mouse1Img, 30+(width-90)-67, height/12+(height/3-120)-67+55);
}

void createDoors() {
  for (int i = 0; i < doors.size(); i++) {
    doors.remove(i);
  }
  //mainPlayer.y = height - height/3;
  //mainPlayer.x = width/2;

  //city to forest 1
  doors.add(new door(0, width/2-300, height - height/3, 1, width/2, height - height/3, doorImg, false));

  doors.add(new door(-2, width/2+2000, height - height/3-50, 3, width/2, height - height/3-50, naturalPortalImg, false));
  //forest to large tree
  doors.add(new door(-2, width/2+2000, height - height/3, -2, width/2+1000, height - height/3, treeDoor, false));

  doors.add(new door(9000, width/2-1000, height - height/3, 6, width/2, height - height/3, doorImg, false));

  doors.add(new door(6, width/2+5000, height - height/3-50, 5, width/2+300, height - height/3-50, naturalPortalImg, false));

  doors.add(new door(2, width/2, height - height/3-60, 3, width/2+1600, height - height/3-60, activeatedPortalImg, false));   

  doors.add(new door(-2, width/2+1600, height - height/3, 4, width/2+1000, height - height/3, treeDoor, false));

  doors.add(new door(1, width/2+3000, height - height/3-60, -1, width/2+1000, height - height/3-60, deactiveatedPortalImg, true));

  doors.add(new door(6, width/2-2000, height - height/3, 7, width/2-1000, height - height/3, doorImg, false));
  //cave door
  doors.add(new door(1, width/2-3600+(250/2), height - height/3, 8, width/2, height - height/3, doorImg, false));
  //doors.add(new door(0,width/2-200,height - height/3,1,width/2+400,height - height/3,doorImg));  width/2-3200
}

void music() {

  if (file == null) {
  } else {
    file.stop();
  }

  if (screen == 3) {
    if (world == 1) {
      file = new SoundFile(this, "forest2.wav");
    }
    if (world == 0) {
      file = new SoundFile(this, "basic2.wav");
    }
    if (world == 2) {
      file = new SoundFile(this, "desertMusic.wav");
    }
    if (world == 3) {
      file = new SoundFile(this, "gatewayCastleMusic.wav");
    }
    if (world == 4) {
      file = new SoundFile(this, "forestHighMusic.wav");
    }
    if (world == 5) {
      file = new SoundFile(this, "insideTreeMusic.wav");
    }
    if (world == 6) {
      file = new SoundFile(this, "swampMusic.wav");
    }
    if (enemys.size() > 0) {
      if (world == 1) {
        file = new SoundFile(this, "enemyFight.wav");
      } else if (world == 2) {
        file = new SoundFile(this, "desertenemysmusic.wav");
      } else if (world == 3) {
        file = new SoundFile(this, "enemyFight.wav");
      } else if (world == 4) {
        file = new SoundFile(this, "forestBossMusic.wav");
      } else if (world == 5) {
        file = new SoundFile(this, "enemyFight.wav");
      } else if (world == 6) {
        file = new SoundFile(this, "enemyFight.wav");
      }
    }
  }
  if (file == null) {
  } else {
    file.loop();
  }
}

boolean playerTouchingObject() {
  for (int i = 0; i < chests.size(); i++) {
    if (chests.get(i).touchingPlayer) {
      return true;
    }
  }
  for (int i = 0; i < doors.size(); i++) {
    if (doors.get(i).StartTouchingPlayer || doors.get(i).EndTouchingPlayer) {
      return true;
    }
    if ( doors.get(i).EndTouchingPlayer) {
      prevDoor = i;
    }
  }
  for (int i = 0; i < shops.size(); i++) {
    if (shops.get(i).touchingPlayer) {
      return true;
    }
  }
  for (int i = 0; i < tNPCs.size(); i++) {
    if (tNPCs.get(i).touchingPlayer) {
      return true;
    }
  }
  return false;
}

void saveGame() {
  byte[] savedList = {byte(mainPlayer.health), byte(bountys), byte(world), byte(currentWeapon1), byte(currentWeapon2), byte(currentWeapon3), byte(boss1), byte(boss2), byte(iButtons.size()), byte(0)};
  for (int i = 0; i < doors.size(); i++) {
    if (doors.get(i).switchDoor && doors.get(i).endW != -1) {
      savedList[9] += 1;
    }
  }
  for (int i = 0; i < iButtons.size(); i++) {
    savedList = append(savedList, byte(iButtons.get(i).itemId));
  }
  for (int i = 0; i < doors.size(); i++) {
    if (doors.get(i).switchDoor && doors.get(i).endW != -1) {
      savedList = append(savedList, byte(i));
    }
  }
  if (boss1) {
    savedList[6] = 1;
  } else {
    savedList[6] = 0;
  }
  if (boss2) {
    savedList[7] = 1;
  } else {
    savedList[7] = 0;
  }
  saveBytes("data/saveData.txt", savedList);
}

void loadGame() {
  if (enemys.size() > 0) {
    enemys.remove(0);
  }
  byte[] loadList = loadBytes("saveData.txt");
  mainPlayer.health = loadList[0];
  bountys = loadList[1];
  //world = loadList[2];
  if (loadList[6] == 1) {
    boss1 = true;
  } else {
    boss1 = false;
  }
  if (loadList[7] == 1) {
    boss2 = true;
  } else {
    boss2 = false;
  }


  println(loadList);    
  for (int i = 0; i < iButtons.size(); i++) {
    iButtons.remove(i);
  }

  currentWeapon1 = loadList[3];
  currentWeapon2 = loadList[4];
  currentWeapon3 = loadList[5];
  w1Ready = true;
  w2Ready = true;
  w3Ready = true;

  for (int i = 0; i < loadList[8]; i++) {
    iButtons.add(new itemButton(loadList[i+10]));
  }

  for (int i = 0; i < loadList[9]; i++) {
    //print(loadList[i+8+loadList[6]]);
    doors.get(loadList[i+10+loadList[8]]).endW = 3;
  }
}





//drawPlayer


//void keyPressed(){
//if(keyCode == UP){
//println(hittingDown);
//if(hittingDown == true){

//mainPlayer.y -= 10;
//hittingDown = false;
//while(hittingDown == false && jumpForce > 0){
//delay(600);
//jumpForce -= gravity;
//mainPlayer.y -= jumpForce;
//println(jumpForce);


//if(hittingDown == true){
//println("reset");
//jumpForce = jumpForceDefalt;
//}
//}


// }
//  }
//}
