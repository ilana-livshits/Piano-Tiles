class LoadingScreen{
  static String username = "";
  static float speed = 0;

  void introScreen(){
    background(250, 218, 221);  //set background to a light pink
    // have a space for the username at the top left of the screen
        textSize(30);
        text("Username:", 10, 30);
        textSize(20);
        text(username, 100, 30);
        
    // have a space for the speed at the top right of the screen
        textSize(30);
        text("Speed:", 1020, 30);
        textSize(20);
        text(speed, 1090, 30);
    
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
  
    //user input for the username. use the keyTyped method to get the username and store it in the username variable
    // stop and store the username in the username variable when the user presses enter
    void keyTyped() {
      if (key == '\n') {
        username = text;
        text = "";
      }
      else {
        text += key;
      }
    }
    
    //user input for the speed. use the keyTyped method to get the speed and store it in the speed variable
    // stop and store the speed in the speed variable when the user presses enter
    void keyTyped() {
      if (key == '\n') {
        speed = text;
        text = "";
      }
      else {
        text += key;
      }
    }

    //if user clicks to the right of username, allow the user to write in a username and save it to the variable username
    void mouseClicked(){
      if(mouseX > 100 && mouseX < 300 && mouseY > 30 && mouseY < 60){
        username = "";
      }
    }
  
    //if user clicks to the right of speed, allow the user to write in a speed and save it to the variable speed
    // must be between 1 and 5
    void mouseClicked2(){
      if(mouseX > 1020 && mouseX < 1090 && mouseY > 30 && mouseY < 60){
        speed = 0;
      }
    }
  
  display(){  
    introScreen();
  }

}
