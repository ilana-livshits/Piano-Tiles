class Blocks {
  private float tileWidth;
  private float tileLength;
  private int c; //black is 0, gray is 209
  float x, y;

  public Blocks() {
    tileWidth = width/4;
    tileLength = (float) Math.random()* 100.0 +100.0;
    c = 0;
    x = 0;
    y = 0;
  }

  public Blocks(float tW, float tL, float x_, float y_) {
    tileWidth = tW;
    tileLength = tL;
    c = 0;
    x = x_;
    y = y_;
  }

  public Blocks(float tW, float tL, int tC, float x_, float y_) {
    tileWidth = tW;
    tileLength = tL;
    c = tC;
    y= y_;
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

  float getTileWidth() {
    return tileWidth;
  }

  float getTileLength() {
    return tileLength;
  }

  float getBottom() {
    return -1;
  }

  void createBlock() {
  }

  void move() {
  }
  
  void display(){
    fill(c);
  }
}
