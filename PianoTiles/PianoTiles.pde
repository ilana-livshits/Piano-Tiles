import processing.sound.*;
SoundFile note1;
SoundFile note2;
SoundFile note3;
SoundFile note4;
SoundFile note5;
SoundFile note6;
SoundFile note7;
SoundFile note8;
SoundFile note9;
SoundFile note10;
SoundFile note11;
SoundFile note12;
SoundFile note13;
SoundFile note14;
SoundFile note15;
SoundFile note16;
SoundFile note17;
SoundFile note18;
SoundFile note19;
SoundFile note20;
SoundFile note21;
SoundFile note22;
SoundFile note23;
SoundFile note24;
SoundFile end;
ArrayList<SoundFile> notes = new ArrayList<SoundFile>();
ArrayList<Float> yPosition;
ArrayList<Integer> blackTiles;
ArrayList<Boolean> clickedTiles;
float speed;
float acceleration;
boolean notDead = false;
boolean begin = false;

LoadingScreen introendscreen;
static int counter;
static String mode;
int countdown;

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
  notes.add(note5);
  notes.add(note6);
  notes.add(note7);
  notes.add(note8);
  notes.add(note9);
  notes.add(note10);
  notes.add(note11);
  notes.add(note12);
  notes.add(note13);
  notes.add(note14);
  notes.add(note15);
  notes.add(note16);
  notes.add(note17);
  notes.add(note18);
  notes.add(note19);
  notes.add(note20);
  notes.add(note21);
  notes.add(note22);
  notes.add(note23);
  notes.add(note24);
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
        end.play();
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
  introendscreen = new LoadingScreen();
  background(255);
  init();
  note1 = new SoundFile(this, "key01.wav");
  note2 = new SoundFile(this, "key02.wav");
  note3 = new SoundFile(this, "key03.wav");
  note4 = new SoundFile(this, "key04.wav");
  note5 = new SoundFile(this, "key05.wav");
  note6 = new SoundFile(this, "key06.wav");
  note7 = new SoundFile(this, "key07.wav");
  note8 = new SoundFile(this, "key08.wav");
  note9 = new SoundFile(this, "key09.wav");
  note10 = new SoundFile(this, "key10.wav");
  note11 = new SoundFile(this, "key11.wav");
  note12 = new SoundFile(this, "key12.wav");
  note13 = new SoundFile(this, "key13.wav");
  note14 = new SoundFile(this, "key14.wav");
  note15 = new SoundFile(this, "key15.wav");
  note16 = new SoundFile(this, "key16.wav");
  note17 = new SoundFile(this, "key17.wav");
  note18 = new SoundFile(this, "key18.wav");
  note19 = new SoundFile(this, "key19.wav");
  note20 = new SoundFile(this, "key20.wav");
  note21 = new SoundFile(this, "key21.wav");
  note22 = new SoundFile(this, "key22.wav");
  note23 = new SoundFile(this, "key23.wav");
  note24 = new SoundFile(this, "key24.wav");
  end = new SoundFile(this, "endNote.wav");
  setupNotes();
}
int time;
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
    time = millis() / 1000;

  } else {
    drawblackTiles();
    textSize(20);
    text("score: " + counter, 5, 20);
    if (mode.equals("zen") && notDead)
      text("time: " + (countdown - millis() / 1000 + time), 5, 40);
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
      end.pause();
      introendscreen.introScreen();
    }
  }
  if (mode.equals("zen") && notDead) {
    if ((countdown - millis() / 1000 + time) < 0) {
      notDead = false;

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
  mode = "";
  counter = 0;
  countdown = 30;
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

    int i = (int)random(4);
    notes.get(i).play();
    counter++;
  }
  if (!notDead)
    end.play();
    //notes.get(0).play();
}
