class Life {
  private int myColor;
  private int strokeColor;
  private int lifeLeft;
  public Life() {
    myColor = color(109, 255, 109);
    strokeColor = color(200);
    lifeLeft = 150;
  }
  
  public void show() {
    stroke(strokeColor);
    strokeWeight(2);
    fill(10);
    rect(430, 10, 150, 20);
    noStroke();
    fill(myColor);
    rect(430, 10, lifeLeft, 20);
  }
  
  public int getLife() {
    return lifeLeft;
  }
  
  public void setLife(int life) {
   lifeLeft = life; 
  }
  
  public void hide() {
   strokeColor = 10;
   myColor = 10;
  }
}
