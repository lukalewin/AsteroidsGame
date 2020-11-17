//your variable declarations here
Spaceship bob = new Spaceship();
Star[] sky = new Star[250];
boolean isWpressed = false, isApressed = false, isDpressed = false;

public void setup() 
{
  size(600, 600);
  background(10);
  for (int i = 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
}
public void draw() 
{
  background(10);
  for (int i = 0; i < sky.length; i++)
  {
    sky[i].show();
  }
  fill(255);
  bob.show();
  bob.move();
  if (isWpressed && isApressed) {
    bob.accelerate(0.15);
    bob.turn(-5);
  } else if (isWpressed && isDpressed) {
    bob.accelerate(0.15);
    bob.turn(5);
  } else if (isWpressed) {
    bob.accelerate(0.15);
  } else if (isApressed) {
    bob.turn(-5);
  } else if (isDpressed) {
    bob.turn(5);
  }
}

public void keyPressed()
{
  if (key == 'w') {
    isWpressed = true;
  } else if (key == 'a') {
    isApressed = true;
  } else if (key == 'd') {
    isDpressed = true;
  } else if (key == 'q') {
    bob.hyperspace();
  }
}

public void keyReleased()
{
  if (key == 'w') {
    isWpressed = false;
  } else if (key == 'a') {
    isApressed = false;
  } else if (key == 'd') {
    isDpressed = false;
  }
}
