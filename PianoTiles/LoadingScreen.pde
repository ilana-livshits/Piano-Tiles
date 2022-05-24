class LoadingScreen{
  String username = "";
  float speed = 0;

  void introScreen(){
    background(0);
    textSize(50);
    fill(255);
    text("Loading...", width/2, height/2);
  }

  keyPressed(){
    if(key == ' '){
      
    }
  }
  
  display(){
    
    introScreen();
  }

}
