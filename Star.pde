class Star 
{
  private int myX, myY, mySize;
  Star()
  {
    myX = (int)(Math.random()*500)+1;
    myY = (int)(Math.random()*500)+1;
    mySize = (int)(Math.random()*6)+1;
  }
  public void show()
  {
    fill((int)(Math.random()*252));
    ellipse(myX, myY, mySize, mySize);
  }
  public int getX()
  {
    return myX;
  }
  public void setX(int n)
  {
    myX = n;
  }
  public int getY()
  {
    return myY;
  }
  public void setY(int n)
  {
    myY = n;
  }
  public int getSize()
  {
    return mySize;
  }
  public void setSize(int n)
  {
    mySize = n;
  }
}
