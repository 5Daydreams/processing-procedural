PVector x1;
PVector x2;
PVector x3;

float time;



void setup()
{
  size(500,500);
  time = 0;
  float rand1 = random(width*0.25,width*0.75);
  float rand2 = random(width*0.25,width*0.75);
  float rand3 = random(width*0.25,width*0.75);
  x1 = new PVector(rand1,50,0);
  x2 = new PVector(rand2,50,0);
  x3 = new PVector(rand3,50,0);
}


void draw()
{
  background(20);
  circle(1,2,3);
}

float PullToTarget(PVector position, PVector target)
{
  PVector direction = PVector.sub(target, position);


  return direction.mag();
}
