class LoadingScreen{
  String username = "";
  float speed = 0;

 
  void introScreen(){
    //write the instructions in the middle of the screen 
    background(0);
    textSize(50);
    fill(255);
    text("tap on the black tiles (in order) as they appear on the screen", width/2, height/2);
    text("Be careful not to tap on the white tiles!", width/2, height/2 + 50);
    text("To select the difficulty, choose a number from 1 to 5", width/2, height/2 + 100);
    text("1 = easy, 2 = medium, 3 = hard, 4 = very hard, 5 = impossible", width/2, height/2 + 150);
    text("Type in the speed", width/2, height/2 + 200);}

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
