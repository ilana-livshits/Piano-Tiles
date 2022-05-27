class LoadingScreen{
  String username = "";
  float speed = 0;

  void introScreen(){
    background(250, 218, 221);  //set background to a light pink
    // have a space for the username at the top left of the screen
    /*
        textSize(30);
        text("Username:", 10, 30);
        textSize(20);
        text(username, 100, 30);
     */
     
     //GAME NAME and creator names
     fill(0);
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
    textSize(25);
    text("Difficulty (speed): " + (int)speed , 20, 650);
    textSize(23);
    fill(144, 238, 144);
    rect(20, 670, 170, 30);
    fill(0);
    text("1 = easy", 50, 694);
    
    fill(90, 100, 0);
    rect(20, 710, 170, 30);
    fill(0);
    text("2 = medium", 29, 734);
    
    fill(199, 163, 23);
    rect(20, 750, 170, 30);
    fill(0);
    text("3 = hard", 45, 774);
    
    fill(253, 88, 0);
    rect(20, 790, 170, 30);
    fill(0);
    text("4 = very hard", 25, 814);
    
    fill(255, 0, 0);
    rect(20, 830, 170, 30);
    fill(0);
    text("5 = impossible", 20, 854);
    
    
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
        mode = "arcade";
      } 
   }
   
}
