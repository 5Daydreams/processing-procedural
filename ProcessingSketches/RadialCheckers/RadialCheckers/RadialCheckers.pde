float pixelSize = 5.0f;
int thetaFactor = 20;
PVector center = new PVector(0,0);
PVector pixelOffset = new PVector(pixelSize/2, pixelSize/2);
float time;
float radiusFactor = 60;
float radiusSpeed = 3;
float angleSpeed = 10;

void setup()
{
  size(600, 600);

  background(100);
  strokeWeight(5);

  center = new PVector(width/2, height/2);
}

float squareWave(float value)
{
  float temp =sin(value); 
  
  return temp/abs(temp);
}

void draw()
{
  time = millis()/1000.0f;
  
  float x, y, xNorm, yNorm;
  for (int i = 0; i < width/pixelSize; i++)
  {
    x= (i*pixelSize - center.x);

    for (int j = 0; j < height/pixelSize; j++)
    {
      y= (j*pixelSize-center.y);

      xNorm = x/width;
      yNorm = y/height;

      float radius = sqrt( xNorm*xNorm + yNorm * yNorm);
      
      float theta = thetaFactor * atan2(yNorm,xNorm); 
      float value = squareWave(radiusFactor/(1+radius)-time*radiusSpeed) * squareWave(theta-time*angleSpeed);
      
      stroke(255*value);
      point(pixelOffset.x + width/2 + x, pixelOffset.y + height/2+y);
    }
  }
}
  
