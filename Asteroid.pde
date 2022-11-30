class Asteroid extends Floater
{
  double rotSpeed;
  public Asteroid(){
    corners = 6;
    myCenterX = 100;
    myCenterY = 100;
    myColor = 150;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    rotSpeed = (int)(Math.random()*1) -1;
    xCorners = new int[] {-11, 7, 13, 6, -11, -5};
    yCorners = new int[] {-8, -8, 0, 10, 8, 0};
  }
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;    
  }
}
