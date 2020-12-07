class Life {
  int myColor;
  int lifeLeft;
  public Life() {
    myColor = color(109, 255, 109);
    lifeLeft = 150;
  }
  
  public void show() {
    stroke(200);
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
}
