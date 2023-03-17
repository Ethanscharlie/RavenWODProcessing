public class block {
  float x;
  float y;
  int size;
  String type = "basic";
  PImage grass = loadImage("grass.png");

  void drawBlock() {
    rect(x, y, size, size);  

    image(grass, x, y);
  }
}
