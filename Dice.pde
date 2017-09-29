void setup()
{
  size(500,500);
  noLoop();
}

void draw()
{
  background(0,0,90);
  int sumDie = 0;
  for(int x=50;x<401;x = x+70)
  {
    for(int y=50;y<401; y= y+70)
    {
    Dice bob = new Dice(x,y);
    bob.show();
    sumDie = sumDie + bob.numberDie;
    }
  }
  textSize(25);
  text("Sum of Dice = "+sumDie,150,490);
}

class Dice
{
  int myX,myY,numberDie;
  Dice(int x,int y)
  {
    myX = x;
    myY = y;
    numberDie = (int)(Math.random()*6)+1;
  }
  void roll()
  {
  }
  void show()
  {
    stroke(0);
    fill(255);
    rect(myX, myY, 50,50);
    fill(0);
    if(numberDie==1)
    {
      ellipse(myX+25,myY+25,8,8);
    }
    else if(numberDie==2)
    {
      ellipse(myX+19,myY+25,8,8);
      ellipse(myX+31,myY+25,8,8);
    }
    else if(numberDie==3)
    {
      ellipse(myX+14,myY+25,8,8);
      ellipse(myX+25,myY+25,8,8);
      ellipse(myX+36,myY+25,8,8);
    }
    else if(numberDie==4)
    {
      ellipse(myX+14,myY+15,8,8);
      ellipse(myX+36,myY+15,8,8);
      ellipse(myX+14,myY+35,8,8);
      ellipse(myX+36,myY+35,8,8);
    }
    else if(numberDie==5)
    {
      ellipse(myX+14,myY+15,8,8);
      ellipse(myX+36,myY+15,8,8);
      ellipse(myX+14,myY+35,8,8);
      ellipse(myX+36,myY+35,8,8);
      ellipse(myX+25,myY+25,8,8);
    }
    else if(numberDie==6)
    {
      ellipse(myX+14,myY+15,8,8);
      ellipse(myX+25,myY+15,8,8);
      ellipse(myX+36,myY+15,8,8);
      ellipse(myX+14,myY+35,8,8);
      ellipse(myX+25,myY+35,8,8);
      ellipse(myX+36,myY+35,8,8);
    }
   
  }
}

void mousePressed()
{
  redraw();
}