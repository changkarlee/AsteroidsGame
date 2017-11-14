class Stars //note that this class does NOT extend Floater
{
  int x;
  int y;
  Stars()
  {
    x = (int)(Math.random()*500);
    y = (int)(Math.random()*500);
  }
  public void show()
  {
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    ellipse(x, y, 10, 10);
  }
}