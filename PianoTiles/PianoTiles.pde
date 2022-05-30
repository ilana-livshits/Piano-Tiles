import processing.sound.*;
SoundFile note1;
SoundFile note2;
SoundFile note3;
SoundFile note4;
ArrayList<SoundFile> notes = new ArrayList<SoundFile>();
ArrayList<Float> yPosition;
ArrayList<Integer> blackTiles;
ArrayList<Boolean> clickedTiles;
float speed;
float acceleration;
boolean notDead = false;
boolean begin = false;
LoadingScreen introendscreen;
static int counter = 0;

/*
PImage bg;

int totalFrames = 120;
int counterrr = 0;
boolean record = false;
  */

void resetyPosition() {
  yPosition = new ArrayList<Float>();
  for (int i = -1; i < 4; i++) {
    yPosition.add((float)(i * height/4));
  }
}

void setupNotes() {
  notes.add(note1);
  notes.add(note2);
  notes.add(note3);
  notes.add(note4);
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
      } else if(counter >= 20){
         notDead = false;
      }else {
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
  introendscreen = new LoadingScreen();
  background(255);
  init();
  note1 = new SoundFile(this, "key01.wav");
  note2 = new SoundFile(this, "key06.wav");
  note3 = new SoundFile(this, "key14.wav");
  note4 = new SoundFile(this, "key20.wav");
  setupNotes();
}

void draw() {
  background(255);
  
  /*
  float percent = 0;
    if (record) {
      percent = float(counterrr) / totalFrames;
    } else {
      percent = float(counterrr % totalFrames) / totalFrames;
    }
    render(percent);
    if (record) {
      saveFrame("output/gif-"+nf(counterrr, 3)+".png");
      if (counterrr == totalFrames-1) {
        exit();
      }
    }
    counterrr++;
  */
  
  // set up introendscreen
  if (!begin) {
    introendscreen.introScreen();
  } else {
    drawblackTiles();
    textSize(20);
    text("score: " + counter, 5, 20);
  }
  if (begin && notDead) {
    moveDown();
    speed += acceleration;
  }
  if(!notDead){
    if(counter < 20){
      introendscreen.endScreen();
    }else if(counter >= 20){
      introendscreen.winningScreen();
     }
    if(key == 'h'){ 
      begin = false;
      introendscreen.introScreen();
    }
  }
}

  /*
  void render(float percent) {
    float angle = map(percent, 0, 1, 0, TWO_PI);
    background(0);
    translate(width/2, height/2);
    rotate(angle);
    stroke(255);
    noFill();
    rectMode(CENTER);
    square(0, 0, 100);
  }
  */

void init() {
  speed = introendscreen.speed * 2;
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
  else if(key == 'h'){
    begin = false;
    introendscreen.introScreen();
  } 
}

void mouseClicked() {
  if (begin == false) {
    introendscreen.mouseClicked();
  } else {
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
  if (notDead) {
    int i = (int)Math.random() * 4;
    notes.get(i).play();
    counter++;
  }
  //if (!notDead)
  //  notes.get(0).play();
}
