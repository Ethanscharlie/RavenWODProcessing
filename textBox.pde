public class textBox {
  String text = " ";
  int pages = 1;
  color textColor;
  color boxColor;
  boolean needed = true;
  String[] splitText;
  int currentPage = 0;

  public textBox(String textIn) {
    text = textIn;
    pages = split(text, "/").length;

    splitText = split(text, "/");
  }

  void drawSelf() {
    if (needed) {
      fill(255);    
      rect(30, height/12, width-90, (height/3-120)+55);    
      fill(0);  
      textSize(55);
      text(splitText[currentPage], 45, height/12+60, (45+(width-90))-50, (height/12+60)+(height/3-120));
      textSize(10);
      image(mouse1Img, 30+(width-90)-67, height/12+(height/3-120)-67+55);

      if (mousePressed) {
        currentPage ++;
        pages -= 1;
        if (pages < 1) {
          needed = false;
        }
        delay(200);
      }
    }
  }
}
