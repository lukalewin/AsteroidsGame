class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 4;
    xCorners = new int[]{-10, 16, -10, -5};
    yCorners = new int[]{-10, 0, 10, 0};
    myColor = 235;
    myCenterX = 300;
    myCenterY = 300;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }

  public double getX() {
    return myCenterX;
  }

  public double getY() {
    return myCenterY;
  }
  
  public double getDirection() {
    return myPointDirection;
  }

  public void changeColor() {
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
}
