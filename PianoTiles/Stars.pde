class Stars {
  //stars positions
  float x;
  float y;
  float z;
  float extraz;

  Stars() {
    //initialize the stars starting point at a middle spot
    x = random(-width/2, width/2);
    y = random(-height/2, height/2);
    z = random(width/2);
    extraz = z;
  }

  void movingStars() {
    z = z - speed;

    if (z < 1) {
      z = width/2;
      x = random(-width/2, width/2);
      y = random(-height/2, height/2);
      extraz = z;
    }
  }
  void show() {
    //make the stars move
    //this was an attempt at those star wars loading screens where the
    //stars are suposed to also move according to the position of the player's mouse
    
    fill(138,43,226);
    noStroke();
    
    float sx = map(x / z, 0, 1, 0, width/2);
    float sy = map(y / z, 0, 1, 0, height/2);;
    float r = map(z, 0, width/2, 16, 0);
    ellipse(sx, sy, r, r);

    float px = map(x / extraz, 0, 1, 0, width/2);
    float py = map(y / extraz, 0, 1, 0, height/2);

    extraz = z;
    
    //make the 'shooting stars effect' where the line is like the moving image of the star
     stroke(138,43,226);
     line(px, py, sx, sy);
  }

}
