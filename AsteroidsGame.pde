Star[] dazzlers;
Spaceship spady;
Asteroid Ashy;
public void setup() 
{
  size(500, 500);
  dazzlers = new Star[200];
  spady = new Spaceship();
  Ashy = new Asteroid();
  for(int n = 0; n < dazzlers.length; n++)
  {
    dazzlers[n] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int n = 0; n < dazzlers.length; n++)
  {
    dazzlers[n].show();
  }
  spady.show();
  spady.move();
  Ashy.show();
  Ashy.move();
}

void keyPressed() {
  if (key == 'a') {
    spady.turn(-10);
  }
  if(key == 'd'){
    spady.turn(10);
  }
  if(key == 'w'){
    spady.accelerate(0.5);
  }
  if(key == '2'){
    spady.hyperspace();
  }
}
