class LoadingScreen{
  String username = "";
  float speed = 1;
  Stars[] stars = new Stars[200];
  float speedStars;
  

  void introScreen(){
    size(500, 900);
    background(250, 218, 221);  //set background to a light pink
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
      speed = map(mouseX, 0, width, 0, 50);
    
      background(0);
     
      translate(width/2, height/2);
      for (int i = 0; i < stars.length; i++) {
        stars[i].movingStars();
        stars[i].show();
        }

     //GAME NAME and creator names
     fill(250);
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
    text("Tap on the black tiles (in order)", 30, 300);
    text("as they appear on the screen", 30, 335);
    text("Be careful not to tap on the", 30, 385);
    text("white tiles!", 30, 420);
    text("To select the difficulty, choose", 30, 470);
    text("a number from 1 to 5.", 30, 505); //1 = easy, 2 = medium, 3 = hard, 4 = very hard, 5 = impossible
    text("Click 's' to start the game.", 30, 555); //Type in a username and click enter
    text("Have fun!", 30, 590);
    
    // have a space for the speed at the top right of the screen
    //display 5 boxes with the numbers 1-5 in it next to the speed
    textSize(30);
    text("Difficulty (speed) : " + (int)speed , 30, 650);
    textSize(23);
    fill(144, 238, 144);
    rect(150, 670, 200, 30);
    fill(0);
    text("1 = easy", 200, 694);
    
    fill(90, 100, 0);
    rect(150, 710, 200, 30);
    fill(0);
    text("2 = medium", 190, 734);
    
    fill(199, 163, 23);
    rect(150, 750, 200, 30);
    fill(0);
    text("3 = hard", 200, 774);
    
    fill(253, 88, 0);
    rect(150, 790, 200, 30);
    fill(0);
    text("4 = very hard", 180, 814);
    
    fill(255, 0, 0);
    rect(150, 830, 200, 30);
    fill(0);
    text("5 = impossible", 170, 854);
  }
  
   void mouseClicked(){
     //if mouse is on the colors above, set the speed to that number
      if (mouseX > 150 && mouseX < 350 && mouseY > 670 && mouseY < 700) {
        speed = 1;
      } else if (mouseX > 150 && mouseX < 350 && mouseY > 710 && mouseY < 740) {
        speed = 2;
      } else if (mouseX > 150 && mouseX < 350 && mouseY > 750 && mouseY < 780) {
        speed = 3;
      } else if (mouseX > 150 && mouseX < 350 && mouseY > 790 && mouseY < 820) {
        speed = 4;
      } else if (mouseX > 150 && mouseX < 350 && mouseY > 830 && mouseY < 860) {
        speed = 5;
      }
   }
   
   void endScreen(){
    background(250, 218, 221);
    fill(0);
    textSize(30);
    text("Good try!", 50, 50);
    text(PianoTiles.counter + " tiles were tapped", 50, 100);
    text("Click 'h' to return to the home screen", 50, 150);
  }
   
   void winningScreen(){
    background(250, 218, 221);
    fill(0);
    textSize(30);
    text("You won!", 50, 50);
    text(PianoTiles.counter + " tiles were tapped", 50, 100);
    text("Click 'h' to return to the home screen", 50, 150);
  }
   
}
