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
SoundFile a, b, c, d, dS, e, e5, f, g;
ArrayList<SoundFile> notes = new ArrayList<SoundFile>();
ArrayList<SoundFile> twinkle = new ArrayList<SoundFile>();
ArrayList<SoundFile> furElise = new ArrayList<SoundFile>();
ArrayList<SoundFile> happyBirthday = new ArrayList<SoundFile>();
ArrayList<Float> yPosition;
ArrayList<Integer> blackTiles;
ArrayList<Boolean> clickedTiles;
float speed;
float acceleration;
static boolean notDead = false;
static boolean begin = false;
int index;
int twinkleCount = 0;
int furEliseCount = 0;
int hbCount = 0; //need to init these later

LoadingScreen introendscreen;
static int counter;
static String mode = "";
static String song = "happy birthday";
static int col;
int countdown;

void resetyPosition() {
  yPosition = new ArrayList<Float>();
  for (int i = -1; i < 4; i++) {
    yPosition.add((float)(i * height/4));
  }
}

/*
void resetxPosition() {
  xPosition = new ArrayList<Integer>();
  for (int i = -1; i < 4; i++) {
    xPosition.add((int)(i * width/4));
  }
}
*/

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
  if (song.equals("twinkle")) {
    twinkle.add(c);
    twinkle.add(c);
    twinkle.add(g);
    twinkle.add(g);
    twinkle.add(a);
    twinkle.add(a);
    twinkle.add(g);
    twinkle.add(f);
    twinkle.add(f);
    twinkle.add(e);
    twinkle.add(e);
    twinkle.add(d);
    twinkle.add(d);
    twinkle.add(c);
    twinkle.add(g);
    twinkle.add(g);
    twinkle.add(f);
    twinkle.add(f);
    twinkle.add(e);
    twinkle.add(e);
    twinkle.add(d);
    twinkle.add(g);
    twinkle.add(g);
    twinkle.add(f);
    twinkle.add(f);
    twinkle.add(e);
    twinkle.add(e);
    twinkle.add(d);
    twinkle.add(c);
    twinkle.add(c);
    twinkle.add(g);
    twinkle.add(g);
    twinkle.add(a);
    twinkle.add(a);
    twinkle.add(g);
    twinkle.add(f);
    twinkle.add(f);
    twinkle.add(e);
    twinkle.add(e);
    twinkle.add(d);
    twinkle.add(d);
    twinkle.add(c);
  }
  if (song.equals("fur elise")) {
    furElise.add(e);
    furElise.add(dS);
    furElise.add(e);
    furElise.add(dS);
    furElise.add(e);
    furElise.add(b);
    furElise.add(d);
    furElise.add(c);
    furElise.add(a);
    furElise.add(c);
    furElise.add(e);
    furElise.add(a);
    furElise.add(b);
    furElise.add(a);
    furElise.add(d);
    furElise.add(c);
    furElise.add(e);
    furElise.add(e);
    furElise.add(dS);
    furElise.add(e);
    furElise.add(dS);
    furElise.add(e);
    furElise.add(b);
    furElise.add(d);
    furElise.add(c);
    furElise.add(a);
    furElise.add(c);
    furElise.add(e);
    furElise.add(a);
    furElise.add(b);
    furElise.add(e);
    furElise.add(c);
    furElise.add(b);
    furElise.add(a);
    furElise.add(a);
    furElise.add(b);
    furElise.add(c);
    furElise.add(d);
    furElise.add(e);
    furElise.add(g);
    furElise.add(f);
    furElise.add(e);
    furElise.add(d);
    furElise.add(f);
    furElise.add(e);
    furElise.add(d);
    furElise.add(c);
    furElise.add(d);
    furElise.add(e);
    furElise.add(d);
    furElise.add(c);
    furElise.add(b);
    furElise.add(e5);
    furElise.add(e);
    furElise.add(e5);
    furElise.add(e5);
    furElise.add(e);
    furElise.add(e5);
    furElise.add(dS);
    furElise.add(e5);
    furElise.add(dS);
    furElise.add(e5);
    furElise.add(dS);
    furElise.add(e5);
    furElise.add(dS);
    furElise.add(e5);
    furElise.add(b);
    furElise.add(d);
    furElise.add(c);
    furElise.add(a);
    furElise.add(c);
    furElise.add(e);
    furElise.add(a);
    furElise.add(b);
    furElise.add(e);
    furElise.add(c);
    furElise.add(b);
    furElise.add(a);
    furElise.add(b);
    furElise.add(c);
    furElise.add(d);
    furElise.add(e);
    furElise.add(a);
  }
  if (song.equals("happy birthday")) {
    happyBirthday.add(g);
    happyBirthday.add(g);
    happyBirthday.add(a);
    happyBirthday.add(g);
    happyBirthday.add(c);
    happyBirthday.add(b);
    happyBirthday.add(g);
    happyBirthday.add(g);
    happyBirthday.add(a);
    happyBirthday.add(g);
    happyBirthday.add(d);
    happyBirthday.add(c);
    happyBirthday.add(g);
    happyBirthday.add(g);
    happyBirthday.add(g);
    happyBirthday.add(e);
    happyBirthday.add(c);
    happyBirthday.add(b);
    happyBirthday.add(a);
    happyBirthday.add(f);
    happyBirthday.add(f);
    happyBirthday.add(e);
    happyBirthday.add(c);
    happyBirthday.add(d);
    happyBirthday.add(c);
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
  
  /*

//method to check if two tiles are touching, and if so, make them both gray
void checkTiles() {
  for (int i = 0; i < blackTiles.size(); i++) { 
    for (int j = 0; j < blackTiles.size(); j++) {
      //check if tiles are in same column
      if (xPosition.get(i) == xPosition.get(j)) {
        //check if tiles are touching top and bottom
        if (yPosition.get(i) == yPosition.get(j) + height/4 || yPosition.get(i) == yPosition.get(j) - height/4) {
          //if so, make them gray when clicked
          if (clickedTiles.get(i) && clickedTiles.get(j)) {
            fill(100);
            noStroke();
            generateBlackTiles(xPosition.get(i), yPosition.get(i));
          }
        }
     
      }
    }
  }
}
*/

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
   countdown = 30;
   time = millis() / 1000; 
   if((countdown - millis() / 1000 + time) > 3){
  for (int i = 0; i < yPosition.size(); i++) {
    if (yPosition.get(i) >= height) {
      if (!clickedTiles.get(i)) {
        notDead = false;
      }
      yPosition.remove(i);
      blackTiles.remove(i);
      clickedTiles.remove(i);
      yPosition.add(0, -height/4 + yPosition.get(0));
      blackTiles.add(0, int(random(0, 4)));
      clickedTiles.add(0, false);
    } else {
      yPosition.set(i, (float)(yPosition.get(i) + speed));
    }
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
  a = new SoundFile(this, "a.wav");
  b = new SoundFile(this, "b.wav");
  c = new SoundFile(this, "c.wav");
  d = new SoundFile(this, "d.wav");
  dS = new SoundFile(this, "d#.wav");
  e5 = new SoundFile(this, "e5.wav");
  d = new SoundFile(this, "d.wav");
  e = new SoundFile(this, "e.wav");
  f = new SoundFile(this, "f.wav");
  g = new SoundFile(this, "g.wav");
  setupNotes();
}
int time;
void draw() {
  background(255);
  // set up introendscreen
  if (!begin) {
    introendscreen.introScreen();
    time = millis() / 1000;
  } else {
   // generateBlackTiles();
    drawblackTiles();
    //checkTiles();
    textSize(20);
    text("score: " + counter, 5, 20);
    textSize(20);
    if (mode.equals("zen")) {
      text("time: " + (countdown - millis() / 1000 + time), 5, 40);
    }
  }
  if (begin && notDead) {
    moveDown();
    speed += acceleration;
  }
  if (!notDead) {
    if (counter < 20 && counter >= 0) {
      introendscreen.endScreen();
    } else if (counter >= 20) {
      introendscreen.winningScreen();
    } else if (counter < 0){
      introendscreen.cheatScreen();
    }
    if (key == 'h') { 
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

void init() {
  speed = introendscreen.speed * 2;
  acceleration = 0.002;
  resetyPosition();
  
  randomizeblackTiles();
  notDead = true;
  begin = false;
  counter = 0;
  countdown = 30;
}

void keyPressed() {
  if (key == 's') {
    init();
    begin = true;
  } else if (key == 'h') {
    begin = false;
    introendscreen.introScreen();
  } else if (key == '1') {
    if (begin) {
      index = getFirstNotclickedTiles();
      if (index != -1) {
        if (blackTiles.get(index) == 0) {
          setclickedTiles(index);
          if (blackTiles.size()-1 > index && blackTiles.get(index+1) == 0) {
            setclickedTiles(index+1);
          }
        } else {
          notDead = false;
        }
      }
    }
  } else if (key == '2') {
    if (begin) {
      index = getFirstNotclickedTiles();
      if (index != -1) {
        if (blackTiles.get(index) == 1) {
          setclickedTiles(index);
          if (blackTiles.size()-1 > index && blackTiles.get(index+1) == 1) {
            setclickedTiles(index+1);
          }
        } else {
          notDead = false;
        }
      }
    }
  } else if (key == '3') {
    if (begin) {
      index = getFirstNotclickedTiles();
      if (index != -1) {
        if (blackTiles.get(index) == 2) {
          setclickedTiles(index);
          if (blackTiles.size()-1 > index && blackTiles.get(index+1) == 2) {
            setclickedTiles(index+1);
          }
        } else {
          notDead = false;
        }
      }
    }
  } else if (key == '4') {
    if (begin) {
      index = getFirstNotclickedTiles();
      if (index != -1) {
        if (blackTiles.get(index) == 3) {
          setclickedTiles(index);
          if (blackTiles.size()-1 > index && blackTiles.get(index+1) == 3) {
            setclickedTiles(index+1);
          }
        } else {
          notDead = false;
        }
      }
    }
  }
  if (notDead) {
    if (song.equals("twinkle")) {
      twinkle.get(twinkleCount).play();
      twinkleCount++;
      counter++;
      if (twinkleCount >= twinkle.size())
        notDead = false;
    }
    if (song.equals("fur elise")) {
      furElise.get(furEliseCount).play();
      furEliseCount++;
      counter++;
      if (furEliseCount >= furElise.size())
        notDead = false;
    }
    if (song.equals("happy birthday")) {
      happyBirthday.get(hbCount).play();
      hbCount++;
      counter++;
      if (hbCount >= happyBirthday.size())
        notDead = false;
    }
    if (song.equals("random")) {
      int i = (int)random(24);
      notes.get(i).play();
      counter++;
    }
  }
  if (!notDead)
    end.play();
  
}

void mouseClicked() {
  if (begin == false) {
    introendscreen.mouseClicked();
  } else {
    begin = true;
    notDead = true;
    index = getFirstNotclickedTiles();
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
   if (song.equals("twinkle")) {
      twinkle.get(twinkleCount).play();
      twinkleCount++;
      counter++;
      if (twinkleCount >= twinkle.size())
        notDead = false;
    }
    if (song.equals("fur elise")) {
      furElise.get(furEliseCount).play();
      furEliseCount++;
      counter++;
      if (furEliseCount >= furElise.size())
        notDead = false;
    }
    if (song.equals("happy birthday")) {
      happyBirthday.get(hbCount).play();
      hbCount++;
      counter++;
      if (hbCount >= happyBirthday.size())
        notDead = false;
    }
    if (song.equals("random")) {
      int i = (int)random(24);
      notes.get(i).play();
      counter++;
    }
  }
  if (!notDead)
    end.play();
}
