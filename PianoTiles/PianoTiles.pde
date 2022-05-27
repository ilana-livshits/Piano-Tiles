ArrayList<Float> yPosition;
ArrayList<Integer> blackTiles;
ArrayList<Boolean> clickedTiles;
float speed;
float acceleration;
boolean notDead = false;
boolean begin = false;
LoadingScreen introscreen;

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
  introscreen = new LoadingScreen();
  background(255);
  init();
}

void draw() {
   background(255);
  // set up introScreen
    if (!begin) {
        introscreen.introScreen();
    }else{
     drawblackTiles();
    }
     if (begin && notDead) {
        moveDown();
        speed += acceleration;
  }
}

void init() {
  speed = introscreen.speed * 2;
  acceleration = 0.002;
  resetyPosition();
  randomizeblackTiles();
  notDead = true;
  begin = false;
}

void keyPressed() {
  if (key == 's') {
        init();
        begin = true;
    }
}

void mouseClicked() {
  if(begin == false){
    introscreen.mouseClicked();
  }else{
  begin = true;
  notDead = true;
  int index = getFirstNotclickedTiles();
  if (index != -1) {
    int l = (blackTiles.get(index) * width/4);
    int r = (blackTiles.get(index) + 1) * width/4;
    if (mouseX <= r && mouseX >= l && mouseY >= yPosition.get(index) && (mouseY <= yPosition.get(index) + height/4 || (get(mouseX, mouseY) != -1 && get(mouseX, mouseY) != -16777216))) {
      setclickedTiles(index);
    } else if (get(mouseX, mouseY) != -10197916) {
      notDead = false;
    }
  }
  }
}
