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
     text("Made by: Ilana Livshits", 80, 140);
     text("& Salvina Sharipova", 100, 175);
     
    
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
    text("Difficulty (speed) :" + speed , 30, 650);
    textSize(20);
    fill(144, 238, 144);
    rect(150, 60, 200, 30);
    fill(0, 100, 0);
    rect(150, 100, 200, 30);
    fill(199, 163, 23);
    rect(150, 140, 200, 30);
    fill(253, 88, 0);
    rect(150, 180, 200, 30);
    fill(255, 0, 0);
    rect(150, 220, 200, 30);
  }
   void mouseClicked(){
     //if mouse is on the colors above, set the speed to that number
      if (mouseX > 150 && mouseX < 350 && mouseY > 60 && mouseY < 90) {
        speed = 1;
      }
      if (mouseX > 150 && mouseX < 350 && mouseY > 100 && mouseY < 130) {
        speed = 2;
      }
      if (mouseX > 150 && mouseX < 350 && mouseY > 140 && mouseY < 170) {
        speed = 3;
      }
      if (mouseX > 150 && mouseX < 350 && mouseY > 180 && mouseY < 210) {
        speed = 4;
      }
      if (mouseX > 150 && mouseX < 350 && mouseY > 220 && mouseY < 250) {
        speed = 5;
      }
   }
}
