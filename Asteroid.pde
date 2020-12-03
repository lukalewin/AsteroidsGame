class Asteroid extends Floater {
  private double rotSpeed = Math.random()*4;
  public Asteroid() {
    corners = 6;
    xCorners = new int[]{-11, 7, 13, 6, -11, -5};
    yCorners = new int[]{-8, -8, 0, 10, 8, 0};
    myColor = color((int)(Math.random()*10+173), (int)(Math.random()*5+94), (int)(Math.random()*5+73));
    myCenterX = (double)(Math.random()*600);
    myCenterY = (double)(Math.random()*600);
    myXspeed = (double)(Math.random()*2);
    myYspeed = (double)(Math.random()*2);
  }
  
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  
  public double getX() {
   return myCenterX;
  }
  
  public double getY() {
   return myCenterY;
  }
}
