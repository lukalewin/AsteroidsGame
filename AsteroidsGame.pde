//your variable declarations here
Spaceship ship = new Spaceship();
ArrayList <Asteroid> ast = new ArrayList <Asteroid>();
ArrayList <Bullet> bul = new ArrayList <Bullet>();
Life life = new Life();
Star[] sky = new Star[250];
int asteroids = 10;
boolean isWpressed = false, isApressed = false, isDpressed = false, isSpacepressed = false;

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
  // Stars
  for (int i = 0; i < sky.length; i++)
  {
    sky[i].show();
  }

  // Asteroids
  for (int i = 0; i < ast.size(); i++)
  {
    ast.get(i).show();
    ast.get(i).move();

    // Ship x Asteroid Collisions
    if (dist((float)ast.get(i).getX(), (float)ast.get(i).getY(), (float)ship.getX(), (float)ship.getY()) < 20) {
      life.setLife(life.getLife() - 30);
      ast.remove(i);
      
      break;
    }
  }

  // Victory / Game Over / Stats text
  if (life.getLife() <= 0) {
    fill(220, 0, 0);
    textAlign(CENTER);
    textSize(80);
    text("GAME OVER", 300, 320);
    ship.setColor(220, 0, 0);
    for (int i = 0; i < bul.size(); i++) {
      bul.remove(i);
    }
    for (int i = 0; i < ast.size(); i++) {
      ast.remove(i);
    }
  } else if (ast.size() == 0) {
    fill(200,255,255);
    textAlign(CENTER);
    textSize(80);
    text("VICTORY!", 300, 320);
    ship.changeColor();
    for (int i = 0; i < bul.size(); i++)
    {
      bul.remove(i);
    }
  } else {
    fill(200);
    textSize(20);
    textAlign(LEFT);
    text("Asteroids left: " + ast.size(), 5, 20);
  }


  // Bullets
  for (int i = 0; i < bul.size(); i++)
  {
    bul.get(i).show();
    bul.get(i).move();

    // Bullet x Asteroid Collisions
    for (int x = 0; x < ast.size(); x++)
    {
      if (dist((float)ast.get(x).getX(), (float)ast.get(x).getY(), (float)bul.get(i).getX(), (float)bul.get(i).getY()) < 20) 
      {
        ast.remove(x);
        bul.remove(i);
        break;
      }
    }
  }

  // Display Life
  life.show();

  // Showing / Moving ship
  fill(255);
  ship.show();
  ship.move();

  // Ship Movement
  if (isWpressed && isApressed) {
    ship.accelerate(0.15);
    ship.turn(-5);
  } else if (isWpressed && isDpressed) {
    ship.accelerate(0.15);
    ship.turn(5);
  } else if (isWpressed) {
    ship.accelerate(0.15);
  } else if (isApressed) {
    ship.turn(-5);
  } else if (isDpressed) {
    ship.turn(5);
  }
}

// Keypresses for movement and rotation
public void keyPressed()
{
  if (key == 'w') {
    isWpressed = true;
  } else if (key == 'a') {
    isApressed = true;
  } else if (key == 'd') {
    isDpressed = true;
  } else if (key == 'q') {
    ship.hyperspace();
  } else if (key == ' ') {
    bul.add(new Bullet(ship));
    bul.get(bul.size()-1).accelerate(6.0);
  }
}

// Key releases for movement and rotation
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
