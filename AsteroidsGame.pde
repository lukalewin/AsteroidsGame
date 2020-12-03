//your variable declarations here
Spaceship bob = new Spaceship();
ArrayList <Asteroid> ast = new ArrayList <Asteroid>();
Star[] sky = new Star[250];
int asteroids = 1;
boolean isWpressed = false, isApressed = false, isDpressed = false;

public void setup() 
{
  size(600, 600);
  background(10);
  for (int i = 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
  for (int i = 0; i < asteroids; i++)
  {
    ast.add(new Asteroid());
  }
}
public void draw() 
{
  background(10);
  for (int i = 0; i < sky.length; i++)
  {
    sky[i].show();
  }
  for (int i = 0; i < ast.size(); i++)
  {
    ast.get(i).show();
    ast.get(i).move();
    if (dist((float)ast.get(i).getX(), (float)ast.get(i).getY(), (float)bob.getX(), (float)bob.getY()) < 20) {
      ast.remove(i);
    }
  }
  if (ast.size() == 0) {
    fill(200);
    textAlign(CENTER);
    textSize(60);
    text("VICTORY!", 300, 300);
    bob.changeColor();
  } else {
    fill(200);
    textSize(20);
    textAlign(LEFT);
    text("Asteroids left: " + ast.size(), 5, 20);
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
