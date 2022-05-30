class LoadingScreen{
  String username = "";
  float speed = 1;
  Stars[] stars = new Stars[200];
  float speedStars;
  PImage bckground;
  
  //public static float getSpeedStars() {
  //  return speedStars;
  //}
  

  void introScreen(){
    bckground = loadImage("ombrerainbow.png");
    
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
     
     fill(0);
     textSize(69);
     text("PIANO TILES", 50, 100);
     textSize(30);
     text("Made by: Ilana Livshits", 80, 150);
     text("& Salvina Sharipova", 100, 185);
     
    
    //write the instructions in the middle of the screen 
    int allwidth = 500;
    int allheight = 900;
    fill(255);
    textSize(30);
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
    text("Difficulty (speed) : " + (int)speed , 30, 630);
    textSize(23);
    fill(117, 223, 78);
    rect(150, 670, 200, 30);
    fill(250);
    text("1 = easy", 200, 694);
    
    fill(63, 165, 111);
    rect(150, 710, 200, 30);
    fill(250);
    text("2 = medium", 190, 734);
    
    fill(53, 131, 139);
    rect(150, 750, 200, 30);
    fill(250);
    text("3 = hard", 200, 774);
    
    fill(47, 91, 125);
    rect(150, 790, 200, 30);
    fill(250);
    text("4 = very hard", 180, 814);
    
    fill(47, 47, 125);
    rect(150, 830, 200, 30);
    fill(250);
    text("5 = impossible", 170, 854);    
    
    textSize(25);
    text("Mode: " + mode , 300, 650);
    textSize(23);
    fill(252, 199, 215);
    rect(300, 670, 125, 30);
    fill(0);
    text("arcade", 325, 694);
    
    fill(250, 107, 150);
    rect(300, 710, 125, 30);
    fill(0);
    text("zen", 340, 734);

  }
  
   void mouseClicked(){
     //if mouse is on the colors above, set the speed to that number
      if (mouseX > 20 && mouseX < 190 && mouseY > 670 && mouseY < 700) {
        speed = 1;
      } else if (mouseX > 20 && mouseX < 190 && mouseY > 710 && mouseY < 740) {
        speed = 2;
      } else if (mouseX > 20 && mouseX < 190 && mouseY > 750 && mouseY < 780) {
        speed = 3;
      } else if (mouseX > 20 && mouseX < 190 && mouseY > 790 && mouseY < 820) {
        speed = 4;
      } else if (mouseX > 20 && mouseX < 190 && mouseY > 830 && mouseY < 860) {
        speed = 5;
      } else if (mouseX > 300 && mouseX < 425 && mouseY > 670 && mouseY < 700) {
        mode = "arcade";
      } else if (mouseX > 300 && mouseX < 425 && mouseY > 710 && mouseY < 740) {
        mode = "zen";
      } 
   }
   
   void endScreen(){
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
