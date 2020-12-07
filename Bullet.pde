class Bullet extends Floater {
  public Bullet(Spaceship theShip) {
    //Square bullets for testing
    corners = 4;
    xCorners = new int[]{-2, 2, 2, -2};
    yCorners = new int[]{-2, -2, 2, 2};

    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myColor = 255;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = theShip.getDirection();
  }
  
  public double getX() {
    return myCenterX;
  }

  public double getY() {
    return myCenterY;
  }
}
