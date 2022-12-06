class Asteroid extends Floater
{
  double rotSpeed;
  public Asteroid(){
    corners = 6;
    myCenterX = (int)(Math.random()*500 + 1);
    myCenterY = (int)(Math.random()*500 + 1);
    myColor = 252;
    myXspeed = Math.random()*0.5;
    myYspeed = Math.random()*0.5;
    myPointDirection = 0;
    rotSpeed = (int)(Math.random()*1) -1;
    xCorners = new int[] {-11, 7, 13, 6, -11, -5};
    yCorners = new int[] {-8, -8, 0, 10, 8, 0};
  }
  public void move(){
    turn(rotSpeed);
    super.move();   
  }
   public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myYspeed;
  }
}
