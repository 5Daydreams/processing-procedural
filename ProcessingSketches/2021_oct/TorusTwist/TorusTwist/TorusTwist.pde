float offset = TWO_PI*0.05;
float speed = 4.5;
float endPointMultiplier = 0.37;
float curlMultiplier = 0.5;
float colorOffset = 800;
float time = 0;
int ringPointCount = 64;
int cacheSize = 16;
int ringPointOffset = 5;
boolean isActive = false;

void setup()
{
  size(600, 600);
  background(30);
  strokeWeight(0.3);
}


void mousePressed()
{
    isActive = !isActive; 
}

void draw()
{
  if (!isActive)
  {
    return;
  }
  background(30);
  GenerateRing();
}

void LineFromTo(PVector start, PVector end)
{
  line(start.x, start.y, end.x, end.y);
}

void PointAt(PVector pos)
{
  point(pos.x, pos.y);
}

float sin01(float val)
{
  return (sin(val)+1)/2;
}

float cos01(float val)
{
  return (cos(val)+1)/2;
}

void GenerateRing()
{
  for (int j = 0; j < cacheSize; j ++)
  {
    push();
    translate(width/2, height/2);
    float time = millis()/5000.0f;
    time *= speed;

    for (int i = 0; i < ringPointCount; i++)
    {
      float currOffset = (i)%ringPointCount * TWO_PI/(ringPointCount);
      float displacedOffset = ((i+ringPointOffset))%ringPointCount * TWO_PI/(ringPointCount);

      float xStartValue = (sin(time + currOffset)) * width*0.25 * (cos01(time + j * offset) + 0.3f);
      float yStartValue = (cos(time + currOffset)) * height*0.25 * (cos01(time + j * offset) + 0.3f);

      PVector startPos = new PVector(xStartValue, yStartValue);

      float xEndValue = (sin(time + displacedOffset)) * width*0.25 * (cos01(time+ (j+1) * offset) + 0.3f);
      float yEndValue = (cos(time + displacedOffset)) * height*0.25 * (cos01(time+ (j+1) * offset) + 0.3f);

      PVector endPos = new PVector(xEndValue, yEndValue);

      float strokeOffset = (sin01((time + (j+1) * offset))*0.9 + 0.1f);
      strokeOffset *=strokeOffset;
      stroke(255 * strokeOffset);
      strokeWeight(0.9 * strokeOffset);
      LineFromTo(startPos, endPos);
    }

    pop();
  }
}
