chemoTaxis [] bob, other;
void setup () {
size (500,500);
bob = new chemoTaxis[5];
other = new chemoTaxis[5];
for (int i = 0; i < bob.length; i++)
{
 bob[i] = new chemoTaxis(color(255,255,255));
  other[i] = new chemoTaxis(color(0,0,0));
}
}
void draw()
{
  background(255);
  for(int i = 0; i < bob.length; i++)
  {
    bob[i].show();
    bob[i].walk();
    other[i].show();
    other[i].walk();
  if(dist(bob[i].myX, bob[i].myY, other[i].myX, other[i].myY) > 50) {
  bob[i].myColor = color(0,255,0);
  other[i].myColor = color(255,0,0);
  }
  else {
    bob[i].myColor = color(0,0,0);
    other[i].myColor = color(255,255,255);
  }
  }
  }
class chemoTaxis
{
  int myColor, myX, myY;
  chemoTaxis(int c)
  {
  myX = 250;
   myY = 250;
 myColor = c;
  }
  void walk()
  {
 myX = myX + (int)(Math.random()*7)-3;
 myY = myY + (int)(Math.random()*7)-3;
}
void show()
{
 
  fill(myColor);
  ellipse(myX,myY,30,30);
}
}
