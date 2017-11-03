Bacteria bob;
Bacteria[] colony;
Mouse yeet;
boolean win=false;
void setup()
{
  size(1000, 1000);
  noStroke();
  bob = new Bacteria();
  colony = new Bacteria[25];
  for (int i=0; i<colony.length; i++) {
    colony[i] = new Bacteria();
  }
}
void draw()
{
  background(255);
  yeet = new Mouse();
  for (int i=0; i<colony.length; i++)
  {
    colony[i].walk();
    colony[i].show();
  }
  yeet.move();
  yeet.show();
  if (win==true) {
    textSize(50);
    text("YOU LOSE!!!", 300, 300);
    noLoop();
  }
  if (win==false) {
    loop();
  }
}
void mousePressed() {
  win=false;
  loop();
}
class Bacteria
{
  int Color = 100;
  int bX, bY;
  Bacteria() {
    bX = 500;
    bY = 500;
  }
  void walk()
  {
    if (bX <= mouseX) {
      bX = bX + (int)(Math.random() * 8);
    }
    if (bY <= mouseY) {
      bY = bY + (int)(Math.random() * 10);
    }
    if (bX >= mouseX) {
      bX = bX - (int)(Math.random() * 10);
    }
    if (bY >= mouseY) {
      bY = bY - (int)(Math.random() * 10);
    }
    if ((bX == mouseX)&(bY == mouseY)) {
      win=true;
    }
  }
  void show()
  {
    fill(193, 175, 255, 158);
    ellipse(bX, bY, 30, 30);
  }
}
class Mouse
{
  int cX, cY;
  Mouse()
  {
    cX = 500;
    cY = 500;
  }
  void move()
  {
    cX = mouseX;
    cY = mouseY;
  }
  void show()
  {
    fill(0);
    textSize(25);
    text("Steak", cX, cY);
    textSize(50);
    text("Tease the Bacteria!", 300, 50);
  }
}
