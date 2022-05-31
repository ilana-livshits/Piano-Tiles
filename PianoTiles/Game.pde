class Game {
  //boolean started = false;
  //boolean lost = false;
  ////x coordinate of left corner of each row
  //float row1 = 0;
  //float row2 = width/4;
  //float row3 = width/4 * 2;
  //float row4 = width/4 * 3;
  //ArrayList<Blocks> pendingBlocks = new ArrayList<Blocks>();
  //ArrayList<Integer> blackTiles;
  //ArrayList<Boolean> clickedTiles;
  //ArrayList<Float> yPosition;
  //float randRow() {
  //  int r = (int)(Math.random() * 4) * 1;
  //  if ( r == 1) 
  //    return row1;
  //  if ( r == 2) 
  //    return row2;
  //  if (r == 3)
  //    return row3;
  //  else
  //    return row4;
  //}


  //void yPos() {
  //  yPosition = new ArrayList<Float>();
  //  for (int i = -1; i < 4; i++) {
  //    yPosition.add((float)(i * height/4));
  //  }
  //}

  //void randomTiles() {
  //  blackTiles = new ArrayList<Integer>();
  //  clickedTiles = new ArrayList<Boolean>();
  //  for (int i = 0; i < yPosition.size(); i++) {
  //    blackTiles.add((int)(random(0, 4)));
  //    clickedTiles.add(false);
  //  }
  //}

  //void drawTiles() {
  //  for (int i = 0; i < blackTiles.size(); i++) {
  //    int col = blackTiles.get(i);
  //    col *= width/4;
  //    int shade = 0;
  //    if (clickedTiles.get(i)) {
  //      shade = 209;
  //    }
  //    fill(shade);
  //    noStroke();
  //    rect(col, yPosition.get(i), width/4, height/4 + 1);
  //  }
  //}

  //void draw() {
  //  yPos();
  //  randomTiles();
  //  drawTiles();
  //  fill(100);
  //  rect(100, 100, 10, 10);
  //}
}
