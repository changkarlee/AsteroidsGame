Spaceship commanderK = new Spaceship();
Stars [] bright;
Asteroids [] rock;
public void setup() 
{
  size(500, 500);
  bright = new Stars[10];
  for(int i = 0; i < bright.length; ++i)
  {
   bright[i] = new Stars(); 
  }
  rock = new Asteroids[10];
  for(int i = 0; i < rock.length; i++)
  {
   rock[i] = new Asteroids(); 
  }
}
public void draw() 
{
  background(0);
  commanderK.show();
  commanderK.move();
  for(int i = 0; i< rock.length; i++)
   {
     rock[i].show();
     rock[i].move();
   }
  for(int i = 0; i < bright.length; i++)
  {
   bright[i].show(); 
  }
  
}
public void keyPressed()
{
  if(key == 'w')
  {
   commanderK.accelerate(1); 
  }
  if(key== 'a')
  {
   commanderK.turn(10); 
  }
  if(key == 'd')
  {
    commanderK.turn(-10);
  }
  if(key == 's') //hyperspace
  {
   commanderK.setX((int)(Math.random()*500));
   commanderK.setY((int)(Math.random()*500));
   commanderK.setDirectionX(0);
   commanderK.setDirectionY(0);
   commanderK.setPointDirection((int)(Math.random()*360));
  }
}