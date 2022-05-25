ArrayList<Float> yPosition;
ArrayList<Integer> blackTiles;
ArrayList<Boolean> clickedTiles;
float speed;
float acceleration;
boolean notDead = false;
boolean begin = false;

void resetyPosition() {
  yPosition = new ArrayList<Float>();
  for (int i = -1; i < 4; i++) {
    yPosition.add((float)(i * height/4));
  }
}

void randomizeblackTiles() {
  blackTiles = new ArrayList<Integer>();
  clickedTiles = new ArrayList<Boolean>();
  for (int i = 0; i < yPosition.size(); i++) {
    blackTiles.add((int)(random(0, 4)));
    clickedTiles.add(false);
  }
}

void drawblackTiles() {
  for (int i = 0; i < blackTiles.size(); i++) {
    int col = blackTiles.get(i);
    col *= width/4;
    int shade = 0;
    if (clickedTiles.get(i)) {
      shade = 100;
    }
    fill(shade);
    noStroke();
    rect(col, yPosition.get(i), width/4, height/4 + 1);
  }
}

public int getFirstNotclickedTiles() {
  for (int i = clickedTiles.size()-1; i >= 0; i--) {
    if (!clickedTiles.get(i)) {
      return i;
    }
  }
  return -1;
}

void setclickedTiles(int n) {
  clickedTiles.set(n, true);
}

void moveDown() {
  for (int i = 0; i < yPosition.size(); i++) {
    if (yPosition.get(i) >= height) {
      if (!clickedTiles.get(i)) {
        notDead = false;
      } else {
        yPosition.remove(i);
        blackTiles.remove(i);
        clickedTiles.remove(i);
        yPosition.add(0, -height/4 + yPosition.get(0));
        blackTiles.add(0, int(random(0, 4)));
        clickedTiles.add(0, false);
      }
    } else {
      yPosition.set(i, (float)(yPosition.get(i) + speed));
    }
  }
}

void setup() {
  size(500, 900);
  background(255);
  init();
}

void draw() {
  background(255);
  drawblackTiles();
  if (begin && notDead) {
    moveDown();
    speed += acceleration;
  }
}

void init() {
  speed = 2;
  acceleration = 0.002;
  resetyPosition();
  randomizeblackTiles();
  notDead = true;
  begin = false;
}

void keyPressed() {
}
void mouseClicked() {
}
