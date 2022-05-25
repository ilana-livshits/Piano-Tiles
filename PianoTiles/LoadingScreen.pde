class LoadingScreen{
  static String username = "";
  static float speed = 0;

  void introScreen(){
    background(250, 218, 221);  //set background to a light pink
    // have a space for the username at the top left of the screen
    /*
        textSize(30);
        text("Username:", 10, 30);
        textSize(20);
        text(username, 100, 30);
     */
     
    // have a space for the speed at the top right of the screen
    //display 5 boxes with the numbers 1-5 in it next to the speed
        textSize(30);
        text("Speed:", 10, 80);
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
    
    //write the instructions in the middle of the screen 
    fill(255);
    textSize(50);
    text("tap on the black tiles (in order) as they appear on the screen", width/2, height/2);
    text("Be careful not to tap on the white tiles!", width/2, height/2 + 50);
    text("To select the difficulty, choose a number from 1 to 5", width/2, height/2 + 100);
    text("1 = easy, 2 = medium, 3 = hard, 4 = very hard, 5 = impossible", width/2, height/2 + 150);
    text("Type in a username and click enter", width/2, height/2 + 200);
    text("Click 's' to start the game. Have fun!", width/2, height/2 + 250);
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
