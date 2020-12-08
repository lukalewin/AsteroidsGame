class Bullet extends Floater {
  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myColor = 255;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = theShip.getDirection();
  }
  
  public void show() {
   fill(myColor);
   noStroke();
   ellipse((float)myCenterX, (float)myCenterY, 7, 7); 
  }
  
  public double getX() {
    return myCenterX;
  }

  public double getY() {
    return myCenterY;
  }
}
