PVector x1;
PVector x2;
PVector x3;

ArrayList<PVector> _pointList;

float frictionFactor;



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

PVector PullToTarget(PVector position, PVector target)
{
  PVector direction = PVector.sub(target, position);
  return direction;
}

void UpdatePositions()
{
  PVector translateDirection = new PVector();
  for(int i = 0 ; i < _pointList.size(); i++)
  {
    // _pointList.get(i).add();
    
  }
}
