class Asteroids extends Floater
{
 private float x, y;
 private int speed;
 public Asteroids()
 {
   x = (float)Math.random()*500;
   y = (float)Math.random()*500;
   speed = (int)(Math.random()*10)-10;
 }
 public void move()
 {
   turn(speed);
   super.move();
 }
  public void show() 
  {
   fill(255);
   ellipse(x, y, 30, 30);
  }
  public void setX(int x) {
    myCenterX = x;
  }  
  public int getX() {
    return (int)myCenterX;
  }
  public void setY(int y) {
    myCenterY = y;
  }   
  public int getY() {
    return (int)myCenterY;
  }
  public void setDirectionX(double x) {
    myDirectionX = x;
  }   
  public double getDirectionX() {
    return myDirectionX;
  }
  public void setDirectionY(double y) {
    myDirectionY = y;
  }   
  public double getDirectionY() {
    return myDirectionY;
  }
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }  
  public double getPointDirection() {
    return myPointDirection;
  }
}