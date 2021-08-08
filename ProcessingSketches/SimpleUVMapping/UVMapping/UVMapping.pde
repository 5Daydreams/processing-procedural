int pixelSize = 20;
float time = 0;
PVector center = new PVector(0, 0);
float curlFactor = 20;
float baseSizeFactor = 0.2f;
float pulseIntervals = 250.0f;

void setup()
{
  size(600, 600);

  center = new PVector(width/2, height/2);
  background(30);
}

void draw()
{
  background(30);
  time = millis()/2.0f;
  DrawEverywhere();
  println(frameRate);
}

void DrawEverywhere()
{
  rectMode(CENTER);
  noStroke();
  for (int i = 0; i < width; i+=pixelSize)
  {
    for (int j = 0; j < height; j+=pixelSize)
    {
      DoTheThing(i, j);
    }
  }
}

void DoTheThing(float x, float y)
{
  float tempY = height-y;

  push();
  translate(x+pixelSize/2, y+pixelSize/2);

  float distanceToCenter = dist(x, y, center.x-pixelSize/2, center.y-pixelSize/2);
  float normalizedDistanceToCenter = distanceToCenter/((width+height)/2);

  rotate( bumpyLinear(time/(2*pulseIntervals), normalizedDistanceToCenter-0.4f));

  float xCentered = (x-center.x);
  float yCentered = (y-center.y);

  float xCSquared = xCentered*xCentered;
  float yCSquared = yCentered*yCentered;

  fill( 255*sin01(time/500.0f-curlFactor*sqrt(xCSquared+yCSquared)/((width+height)/2)-atan2(xCentered,yCentered)));

  // rect(0, 0, pixelSize, pixelSize);

  rect(0, 0, 
    (baseSizeFactor+normalizedDistanceToCenter* clampedSine(normalizedDistanceToCenter - time/pulseIntervals, 0.2f, 1.0f))*pixelSize, 
    (baseSizeFactor+normalizedDistanceToCenter* clampedSine(normalizedDistanceToCenter - time/pulseIntervals, 0.2f, 1.0f))*pixelSize);

  pop();
}

float sin01(float value)
{
  return (1.0f+sin(value))/2.0f;
}

float clampedSine(float value, float lowerBound, float higherBound)
{
  float center =  (lowerBound + higherBound)/2;
  float amplitude = (higherBound-lowerBound);

  return center + amplitude * sin(value);
}

float bumpyLinear(float value, float offset)
{
  float sineValue = sin(2*value+offset);
  return value + sineValue*sineValue/2;
}
