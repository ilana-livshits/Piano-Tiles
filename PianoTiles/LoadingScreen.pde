class LoadingScreen { //<>//
  String username = "";
  float speed = 1;
  Stars[] stars = new Stars[200];
  float speedStars;
  PImage bckground;
 
  void introScreen() {
    bckground = loadImage("purpleombre (1).jpg");

    size(500, 900);
    //background(250, 218, 221);  //set background to a light pink
    // have a space for the username at the top left of the screen
    /*
        textSize(30);
     text("Username:", 10, 30);
     textSize(20);
     text(username, 100, 30);
     */
    //setup
    for (int i = 0; i < stars.length; i++) {
      stars[i] = new Stars();
    }  
    speedStars = map(mouseX, 0, width, 0, 50);

    background(bckground); //set background to an image

    //translate(0, 0);
    for (int i = 0; i < stars.length; i++) {
      stars[i].movingStars();
      stars[i].show();
    }
    //GAME NAME and creator names
    fill(250);
    rect(30, 20, 440, 200);
    fill(75, 20, 131);
    textSize(69);
    text("PIANO TILES", 50, 100);
    textSize(30);
    text("Made by: Ilana Livshits", 80, 150);
    text("& Salvina Sharipova", 100, 185);


    //write the instructions in the middle of the screen 
    int allwidth = 500;
    int allheight = 900;
    fill(0);
    textSize(30);
    
    //instructions

    text("Tap on the black tiles in order", 30, 270);
    text("as they appear on the screen", 30, 305);
    text("You can also use 1, 2, 3, 4", 30, 355);
    text("keys for the 4 columns.", 30, 390);
    text("Select the difficulty, mode,", 30, 440);
    text("and song.", 30, 475); //1 = easy, 2 = medium, 3 = hard, 4 = very hard, 5 = impossible
    text("Click 's' to start the game.", 30, 525); //Type in a username and click enter
    text("Have fun!", 30, 560);
    
    //buttons
    
    // have a space for the speed at the top right of the screen
    //display 5 boxes with the numbers 1-5 in it next to the speed
    textSize(30);
    text("Difficulty: " + (int)speed, 55, 650);
    textSize(23);
    fill(219, 196, 249);
    rect(50, 670, 200, 30);
    fill(250);
    text("1 = easy", 65, 694);

    fill(206, 161, 250);
    rect(50, 710, 200, 30);
    fill(250);
    text("2 = medium", 65, 734);

    fill(178, 112, 243);
    rect(50, 750, 200, 30);
    fill(250);
    text("3 = hard", 65, 774);

    fill(154, 64, 245);
    rect(50, 790, 200, 30);
    fill(250);
    text("4 = very hard", 65, 814);

    fill(114, 4, 225);
    rect(50, 830, 200, 30);
    fill(250);
    text("5 = impossible", 65, 854);

    textSize(30);
    fill(0);
    text("Mode: " + PianoTiles.mode, 290, 590);
    textSize(23);
    fill(157, 223, 233);
    rect(300, 610, 125, 30);
    fill(0);
    text("arcade", 325, 634);

    fill(153, 187, 247);
    rect(300, 650, 125, 30);
    fill(0);
    text("zen", 340, 674);
    
    //cheats
    fill(180, 227, 170);
    rect(145, 570, 130, 20);
    fill(0);
    textSize(18);
    text("win screen", 150, 586);
    
    
    fill(204, 143, 118);
    rect(145, 600, 130, 20);
    textSize(18);
    fill(0);
    text("losing screen", 150, 616);
    
    fill(0);
    textSize(23);
    text("CHEATS: " , 30, 600);

    textSize(30);
    fill(0);
    text("Song: " + PianoTiles.song, 290, 715);

    textSize(15);
    fill(182,225,240);
    rect(300, 730, 125, 30);
    fill(0);
    text("happy birthday", 310, 750);

    textSize(15);
    fill(155,180,232);
    rect(300, 765, 125, 50);
    fill(0);
    text("twinkle twinkle \nlittle star", 310, 785);

    textSize(15);
    fill(164,155,232);
    rect(300, 820, 125, 30);
    fill(0);
    text("fur elise", 310, 840);

    textSize(15);
    fill(164,116,207);
    rect(300, 855, 125, 30);
    fill(0);
    text("random", 310, 875);
  }
  void mouseClicked() {
    //if mouse is on the colors above, set the speed to that number
    if (mouseX > 20 && mouseX < 270 && mouseY > 670 && mouseY < 700) {
      speed = 1;
    } else if (mouseX > 20 && mouseX < 270 && mouseY > 710 && mouseY < 740) {
      speed = 2;
    } else if (mouseX > 20 && mouseX < 270 && mouseY > 750 && mouseY < 780) {
      speed = 3;
    } else if (mouseX > 20 && mouseX < 270 && mouseY > 790 && mouseY < 820) {
      speed = 4;
    } else if (mouseX > 20 && mouseX < 270 && mouseY > 830 && mouseY < 860) {
      speed = 5;
    } else if (mouseX > 325 && mouseX < 450 && mouseY > 610 && mouseY < 640) {
      PianoTiles.mode = "arcade";
    } else if (mouseX > 325 && mouseX < 450 && mouseY > 650 && mouseY < 680) {
      PianoTiles.mode = "zen";
    } else if (mouseX > 325 && mouseX < 450 && mouseY > 730 && mouseY < 760) {
      PianoTiles.song = "bday";
    } else if (mouseX > 325 && mouseX < 450 && mouseY > 765 && mouseY < 815) {
      PianoTiles.song = "twinkle";
    } else if (mouseX > 325 && mouseX < 450 && mouseY > 820 && mouseY < 850) {
      PianoTiles.song = "fur elise";
    } else if (mouseX > 325 && mouseX < 450 && mouseY > 855 && mouseY < 885) {
      PianoTiles.song = "random";
    }
    //else if(mouseX > 40 && mouseX < 165 && mouseY > 585 && mouseY < 620){
    //   PianoTiles.begin = false;
    //    PianoTiles.notDead = false;
    //    PianoTiles.counter = -3;
    //    //PianoTiles.cheatScreenYoN = true;
    //    PianoTiles.picker = false;
    //  }
      else if (mouseX > 145 && mouseX < 275 && mouseY > 570 && mouseY < 590) {
       // counter = 99;
       //introendscreen.winningScreen();  
       //PianoTiles.begin = false;
        PianoTiles.notDead = false;
        PianoTiles.counter = 99;
      }
      else if (mouseX > 145 && mouseX < 275 && mouseY > 600 && mouseY < 620) {
        //counter = 0;
        //introendscreen.endScreen();
        //PianoTiles.begin = false;
        PianoTiles.notDead = false;
        PianoTiles.counter = 0;
      }
  }
  
   /*
  void cheatScreen(){
    background(250, 218, 221);
    fill(0);
    textSize(30);
    text("Choose which ending screen", 50, 200);
    text("you would like to see:", 50, 250);
    
    fill(149, 230, 159);
    rect(50, 300, 400, 60);
    textSize(40);
    fill(0);
    text("win screen", 150, 345);
    
    fill(189, 107, 89);
    rect(50, 400, 400, 60);
    textSize(40);
    fill(0);
    text("losing screen", 130, 445);
   }
   */
   
   void cheatScreen(){
  //int cheatTime = millis() / 1000;
  //int cheatCountdown = 5;
  if(PianoTiles.chooser == "win screen"){
   // while( (cheatCountdown - millis() / 1000 + cheatTime) > 0){
    winningScreen();
    PianoTiles.chooser = "";
   // }
  }
  else if(PianoTiles.chooser == "losing screen"){
  //  while( (cheatCountdown - millis() / 1000 + cheatTime) > 0){
      endScreen();
      PianoTiles.chooser = "";
     // }
  }
}
   
   void endScreen(){
    background(250, 218, 221);
    fill(0);
    textSize(30);
    text("Good try!", 50, 50);
    text(PianoTiles.counter + " tiles were tapped", 50, 100);
    text("Click 'h' to return to the home screen", 50, 150);
    for (int i = 0; i < stars.length; i++) {
      stars[i] = new Stars();
    }  
    speedStars = map(mouseX, 0, width, 0, 50);
    background(0); //set background to an image
    //translate(0, 0);
    for (int i = 0; i < stars.length; i++) {
      stars[i].movingStars();
      stars[i].show();
    }
    fill(255);
    textSize(60);
    text("Good try!", 110, 360);
    textSize(40);
    text(PianoTiles.counter + " tiles were tapped", 55, 450);
    textSize(40);
    text("Click 'h' to return", 70, 520);
    text("to the home screen", 53, 570);
  }

  void winningScreen() { //placeholder for now. when you reach 50 tiles, display:
    for (int i = 0; i < stars.length; i++) {
      stars[i] = new Stars();
    }  
    speedStars = map(mouseX, 0, width, 0, 50);
    background(106, 51, 154); //set background to an image
    //translate(0, 0);
    for (int i = 0; i < stars.length; i++) {
      stars[i].movingStars();
      stars[i].show();
    }
    fill(255);
    textSize(60);
    text("You won!", 110, 360);
    textSize(40);
    text(PianoTiles.counter + " tiles were tapped", 55, 450);
    textSize(40);
    text("Click 'h' to return", 70, 520);
    text("to the home screen", 53, 570);
  }
}
