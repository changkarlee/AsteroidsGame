Spaceship commanderK = new Spaceship();
Stars [] bright;
ArrayList <Asteroids> rock = new ArrayList <Asteroids>();

public void setup() 
{
  size(500, 500);
  bright = new Stars[10];
  for(int i = 0; i < bright.length; ++i)
  {
   bright[i] = new Stars(); 
  }
 // rock = new Asteroids[10];
 // for(int i = 0; i < rock.length; i++)
  //{
   //rock[i] = new Asteroids(); 
  //}
  rock.add(new Asteroids());
}

public void draw() 
{
  background(0);
  
  commanderK.show();
  commanderK.move();
  float meter = dist(commanderK.getX(), commanderK.getY(), rock.get(0).getX(), rock.get(0).getY());
  for(int i = 0; i< rock.size(); i++)
   {
     rock.get(0).show();
     rock.get(0).move();
   }
  for(int i = 0; i < bright.length; i++)
  {
   bright[i].show(); 
  }
  if(meter <= 30)
  {
   rock.remove(0); 
   //rock.add(new Asteroids());
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