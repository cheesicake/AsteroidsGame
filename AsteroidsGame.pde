Star[] dazzlers;
Spaceship spady;
ArrayList <Asteroid> Ashy;
ArrayList <Bullet> pew;
public void setup() 
{
  size(500, 500);
  dazzlers = new Star[200];
  spady = new Spaceship();
  pew = new ArrayList <Bullet>();
  Ashy = new ArrayList <Asteroid>();
  for(int n = 0; n < 5; n++){
    Ashy.add(new Asteroid());
  }
  for(int n = 0; n < Ashy.size()-1; n++){
    pew.add(new Bullet());
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
    if(dist((float)Ashy.get(n).getX(), 
            (float)Ashy.get(n).getY(),
            (float)spady.getX(), 
            (float)spady.getY()) < 12){
       Ashy.set(n,new Asteroid());
    }
}
  for(int n = 0; n < pew.size()-1; n++){
    pew.get(n).show();
    pew.get(n).move();
    if(dist((float)pew.get(n).getX(), 
            (float)pew.get(n).getY(), 
            (float)Ashy.get(n).getX(), 
            (float)Ashy.get(n).getY())<10){
      Ashy.set(n, new Asteroid());
      pew.remove(pew.get(n));
    }
    if(pew.get(n).getX() > width || pew.get(n).getY() > height){
      pew.remove(pew.get(n));
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
  if(key == 'e'){
    pew.add(new Bullet());
  }
}
