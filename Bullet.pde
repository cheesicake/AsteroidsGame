class Bullet extends Floater{
  public Bullet(){
    myCenterX = spady.getX();
    myCenterY = spady.getY();
    myPointDirection = spady.getPointDirection();
    accelerate(2);
  }
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed; 
  }
}
