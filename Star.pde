class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star()
  {
   myX = (int)(Math.random()*600);
   myY = (int)(Math.random()*600);
  }
  
  public void show()
  {
    noStroke();
    fill((int)(Math.random()*50)+75);
    ellipse(myX, myY, 2, 2);
  }
}
