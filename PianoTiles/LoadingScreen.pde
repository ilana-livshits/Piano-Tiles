class LoadingScreen{
  String username = "";
  float speed = 0;

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

  keyPressed(){
    if(key == ' '){
      
    }
  }
  
  //method that
  
  display(){  
    introScreen();
  }

}
