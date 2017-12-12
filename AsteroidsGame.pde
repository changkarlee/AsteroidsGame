Spaceship commanderK = new Spaceship();
Stars [] bright;
ArrayList <Asteroids> rock = new ArrayList <Asteroids>();

public void setup() 
{
  size(500, 500);
  bright = new Stars[10];
  for (int i = 0; i < bright.length; ++i)
  {
    bright[i] = new Stars();
  }
  // rock = new Asteroids[10];
  // for(int i = 0; i < rock.length; i++)
  //{
  //rock[i] = new Asteroids(); 
  //}
  for (int i = 0; i < 10; i++)
  {
    rock.add(new Asteroids());
  }
}

public void draw() 
{
  background(0);
  float meter = 0;
  commanderK.show();
  commanderK.move();
  for (int i = 0; i < rock.size(); i++)
  {
    rock.get(i).show();
    rock.get(i).move();  
    meter = dist(commanderK.getX(), commanderK.getY(), rock.get(i).getX(), rock.get(i).getY());
    if (meter <= 20) //make a loop for drawing the different asteroids
    {
      rock.remove(i); 
      //rock.add(new Asteroids());
    }
  }
  for (int i = 0; i < bright.length; i++)
  {
    bright[i].show();
  }
}
public void keyPressed()
{
  if (key == 'w')
  {
    commanderK.accelerate(1);
  }
  if (key== 'a')
  {
    commanderK.turn(10);
  }
  if (key == 'd')
  {
    commanderK.turn(-10);
  }
  if (key == 's') //hyperspace
  {
    commanderK.setX((int)(Math.random()*500));
    commanderK.setY((int)(Math.random()*500));
    commanderK.setDirectionX(0);
    commanderK.setDirectionY(0);
    commanderK.setPointDirection((int)(Math.random()*360));
  }
}