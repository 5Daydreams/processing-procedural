float spacing = 20.0f;
float noiseDensityX = 0.01f;
float noiseDensityY = 0.01f;
float offsetSpeed = 0.3f;
float pointWeight = 25.0f; // spacing+1;

int waveIterations = 5;

void setup()
{
  size(600, 600);
  background(20);
}

void draw()
{
  float offset = millis()/1000.0f;
  PVector offsetDir = new PVector(0,0,offset);
  offsetDir.mult(offsetSpeed);
  
  PVector color1 = new PVector(0, 0, 0);
  PVector color2 = new PVector(50, 50, 50);

  PVector coords = new PVector(0,0,0);
  
  
  for (float x=spacing/2.0f; x <= width; x += spacing)
  {    
    for (float y=spacing/2.0f; y <= height; y += spacing)
    {
      coords.set(x*noiseDensityX, y*noiseDensityY, 0);

      float noise = GetPerlinWave(PVector.add(offsetDir,coords),1.0f,1.0f);

      PVector strokeValue = PVector.lerp(color1, color2, noise);

      fill(strokeValue.x, strokeValue.y, strokeValue.z);
      square(x-spacing/2.0f, y-spacing/2.0f,pointWeight);
    }
  }
}
