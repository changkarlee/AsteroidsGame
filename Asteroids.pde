class Asteroids extends Floater
{
 private float x, y;
 private int speed;
 public Asteroids()
 {
   x = 10;
   y = 10;
   myCenterX = (int)(Math.random()*500);
   myCenterY = (int)(Math.random()*500);
   speed = (int)(Math.random()*10)-10;
   myDirectionX = (int)(Math.random()*8);
   myDirectionY = (int)(Math.random()*8);
 }
 public void move()
 {
   turn(speed);
   super.move();
 }
  public void show() 
  {
   fill(150);
   ellipse((float)myCenterX, (float)myCenterY, 25, 40);
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