public class ground {
  float x;
  float y;
  PImage img;
  boolean imgRequire;

  public ground(float xIn, float yIn, PImage imgIn, boolean imRIn) {
    x = xIn;
    y = yIn;
    img = imgIn;
    imgRequire = imRIn;
  }

  void drawSelf() {
    image(img, x, y);
  }
}
