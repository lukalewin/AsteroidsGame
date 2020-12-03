class Asteroid extends Floater {
  private double rotSpeed;
  public Asteroid() {
    corners = 6;
    xCorners = new int[]{-11, 7, 13, 6, -11, -5};
    yCorners = new int[]{-8, -8, 0, 10, 8, 0};

  }
  
  public void move() {
    turn(rotSpeed);
    super.move();
  }
}
