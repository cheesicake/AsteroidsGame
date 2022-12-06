Star[] dazzlers;
Spaceship spady;
ArrayList <Asteroid> Ashy;
public void setup() 
{
  size(500, 500);
  dazzlers = new Star[200];
  spady = new Spaceship();
  Ashy = new ArrayList <Asteroid>();
  for(int n = 0; n < 5; n++){
    Ashy.add(new Asteroid());
  }
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
  for(int n = 0; n < Ashy.size(); n++){
    Ashy.get(n).show();
    Ashy.get(n).move();
    if(dist((float)Ashy.get(n).getCenterX(), 
            (float)Ashy.get(n).getCenterY(),
            (float)spady.getCenterX(), 
            (float)spady.getCenterY()) < 2){
       Ashy.remove(n);
       Ashy.add(new Asteroid());
       Ashy.get(Ashy.size()-1).show();
       Ashy.get(Ashy.size()-1).move();
    }
  }
  spady.show();
  spady.move();
  
}

void keyPressed() {
  if (key == 'a') {
    spady.turn(-10);
  }
  if(key == 'd'){
    spady.turn(10);
  }
  if(key == 'w'){
    spady.accelerate(1);
  }
  if(key == 's'){
    spady.accelerate(-1);
  }
  if(key == '2'){
    spady.hyperspace();
  }
}
