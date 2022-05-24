class Game {
  boolean started = false;
  boolean lost = false;
  //x coordinate of left corner of each row
  float row1 = 0;
  float row2 = width/4;
  float row3 = width/4 * 2;
  float row4 = width/4 * 3;
  // Blocks [] block = new Blocks[];
  
  float randRow(){
    int r = (int)(Math.random() * 4) * 1;
    if ( r == 1) 
      return row1;
    if ( r == 2) 
      return row2;
    if (r == 3)
      return row3;
    else
      return row4;
  }
}
