float spacing = 20.0f;
float noiseDensityX = 0.01f;
float noiseDensityY = 0.01f;
float offsetSpeed = 0.2f;
float pointWeight = 18.0f; // spacing+1;

int waveIterations = 5;

void setup()
{
  size(1200, 800);
  background(20);
}

void draw()
{
  float offset = millis()/1000.0f;
  PVector offsetDir = new PVector(0,0,offset);
  offsetDir.mult(offsetSpeed);
  PVector offsetDir2 = offsetDir.mult(5);
  
  PVector color1 = new PVector(25, 30, 150);
  PVector color2 = new PVector(0, 230, 80);

  PVector coords = new PVector(2983,7823,0);
  PVector coords2 = new PVector(1175,6234,0);
  
  
  for (float x=spacing/2.0f; x <= width; x += spacing)
  {    
    for (float y=spacing/2.0f; y <= height; y += spacing)
    {
      coords.set(x*noiseDensityX, y*noiseDensityY, 0);
      coords2.set(5*x*noiseDensityX, 5*y*noiseDensityY, 0);

      float noise = GetPerlinWave(PVector.add(offsetDir,coords),1.0f,1.0f) +0.1f;
      float noise2 = GetPerlinWave(PVector.add(offsetDir2,coords),0.4f,2.7f) + 0.1f;
      
      // noise = frac (noise *10);

      PVector strokeValue = PVector.lerp(color1, color2, (noise+noise2)/2);

      fill(strokeValue.x, strokeValue.y, strokeValue.z);
      square(x-spacing/2.0f, y-spacing/2.0f,pointWeight);
    }
  }
}
