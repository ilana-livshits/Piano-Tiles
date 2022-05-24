class Blocks {
  private float tileWidth = width/4;
  private float tileLength = (float) Math.random()* 100.0 +100.0;
  private int c = 0; //black is 0, gray is 209
  
  void setColor() {
    if (c == 0) {
      c = 209;
    }
    else if (c == 209){
      c = 0;
    }
  }
  
  int getColor() {
    return -1;
  }
  void createBlock() {
  }
  float getTileWidth() {
    return -1;
  }
  float getTileLength() {
    return -1;
  }
  float getBottom() {
    return -1;
  }
}
