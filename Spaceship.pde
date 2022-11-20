class Spaceship extends Floater  
{   
    public Spaceship()
  {
    corners = 4;
    xCorners = new int[] {-8, 16, -8, -2};
    yCorners = new int[] {-8, 0, 8, 0};
    myCenterX = 250;
    myCenterY = 250;
    myColor = 252;
    myPointDirection = 0;
    myXspeed = myPointDirection;
    myYspeed = myPointDirection;
  }
 public void hyperspace(){
   myXspeed = 0;
   myYspeed = 0;
   myCenterX = (int)(Math.random()*500);
   myCenterY = (int)(Math.random()*500);
   myPointDirection = (int)(Math.random()*360);
 }
 public double getXspeed(){
    return myXspeed;
  }
  public void setXspeed(double n){
    myXspeed = n;
  }
  public double getYspeed(){
    return myYspeed;
  }
  public void setYspeed(double n){
    myYspeed = n;
  }
}
