class LoadingScreen{
  String username = "";
  float speed = 1;
  Stars[] stars = new Stars[200];
  float speedStars;
  PImage bckground;
  
  void introScreen(){
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
    
    //update colors and add lines and update buttons and aesthetic
    //update background for tiles. make tiles appear at half of screen.
    //create instructions button which pops up the instructions
   
    text("Tap on the black tiles in order", 30, 280);
    text("as they appear on the screen", 30, 315);
    text("Be careful not to tap on the", 30, 365);
    text("white tiles!", 30, 400);
    text("To select the difficulty, choose", 30, 450);
    text("a number from 1 to 5.", 30, 485); //1 = easy, 2 = medium, 3 = hard, 4 = very hard, 5 = impossible
    text("Click 's' to start the game.", 30, 535); //Type in a username and click enter
    text("Have fun!", 30, 570);
    // have a space for the speed at the top right of the screen
    //display 5 boxes with the numbers 1-5 in it next to the speed
    textSize(30);
    text("Difficulty: " + (int)speed , 55, 650);
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
    text("Mode: " + PianoTiles.mode , 290, 650);
    textSize(23);
    fill(157, 223, 233);
    rect(300, 670, 125, 30);
    fill(0);
    text("arcade", 325, 694);
    
    fill(153, 187, 247);
    rect(300, 710, 125, 30);
    fill(0);
    text("zen", 340, 734);
    
    
    fill(149, 230, 159);
    rect(40, 585, 125, 30);
    fill(0);
    textSize(25);
    text("CHEATS" + PianoTiles.mode , 55, 610);
    
  }
   void mouseClicked(){
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
      } else if (mouseX > 325 && mouseX < 450 && mouseY > 670 && mouseY < 700) {
        PianoTiles.mode = "arcade";
      } else if (mouseX > 325 && mouseX < 450 && mouseY > 710 && mouseY < 740) {
        PianoTiles.mode = "zen";
      } 
      else if( mouseX > 40 && mouseX < 165 && mouseY > 585 && mouseY < 620){
       PianoTiles.begin = false;
        PianoTiles.notDead = false;
        PianoTiles.counter = -3;
      }
      else if ((PianoTiles.cheatScreenYoN == true) && mouseX > 50 && mouseX < 110 && mouseY > 300 && mouseY < 360) {
        PianoTiles.begin = false;
        PianoTiles.notDead = false;
        PianoTiles.counter = 10;
      }
      else if ((PianoTiles.cheatScreenYoN == true) && mouseX > 50 && mouseX < 110 && mouseY > 400 && mouseY < 460) {
        PianoTiles.begin = false;
        PianoTiles.notDead = false;
        PianoTiles.counter = 21;
      }
   }
   
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

   void winningScreen(){ //placeholder for now. when you reach 50 tiles, display:
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
