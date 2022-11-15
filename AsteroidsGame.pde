Star[] dazzlers;
public void setup() 
{
  background(0);
  size(500, 500);
  dazzlers = new Star[200];
  for(int n = 0; n < dazzlers.length; n++)
  {
    dazzlers[n] = new Star();
  }
}
public void draw() 
{
  for(int n = 0; n < dazzlers.length; n++)
  {
    dazzlers[n].show();
  }
}
