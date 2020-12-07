class Asteroid extends Floater {
  private double rotSpeed = Math.random()*4;
  public Asteroid() {
    corners = 6;
    xCorners = new int[]{(int)(Math.random()*5-13),(int)(Math.random()*5+5),(int)(Math.random()*5+11),(int)(Math.random()*5+5),(int)(Math.random()*5-13),(int)(Math.random()*5-18)};
    yCorners = new int[]{(int)(Math.random()*5-10),(int)(Math.random()*5-10),(int)(Math.random()*5),(int)(Math.random()*5+6),(int)(Math.random()*5+6),(int)(Math.random()*5)};
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
