class Blocks {
  private float tileWidth;
  private float tileLength;
  private int c; //black is 0, gray is 209

  public Blocks() {
    tileWidth = width/4;
    tileLength = (float) Math.random()* 100.0 +100.0;
    c = 0;
  }
  
  public Blocks(float tW, float tL) {
    tileWidth = tW;
    tileLength = tL;
    c = 0;
  }
  
  public Blocks(float tW, float tL, int tC) {
    tileWidth = tW;
    tileLength = tL;
    c = tC;
  }

  void setColor() {
    if (c == 0) {
      c = 209;
    } else if (c == 209) {
      c = 0;
    }
  }

  int getColor() {
    return c;
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
