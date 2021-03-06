float spacing = 5.0f;
float noiseDensityX = 0.01f;
float noiseDensityY = 0.01f;
float offsetSpeed = 0.08f;
float pointWeight = 2.0f; // spacing+1;

int waveIterations = 5;

void setup()
{
  size(900, 600);
  background(20);
}

void draw()
{
  float offset = millis()/1000.0f;
  PVector offsetDir = new PVector(0,0,offset);
  offsetDir.mult(offsetSpeed);
  PVector offsetDir2 = offsetDir.copy().mult(4);
  PVector offsetDir3 = offsetDir.copy().mult(5.8);
  
  PVector color1 = new PVector(25, 30, 150);
  PVector color2 = new PVector(0, 230, 80);
  
  PVector colorW = new PVector(255,255,255);
  PVector colorB = new PVector(0,  0,  0);

  PVector coords = new PVector(2983,7823,0);
  PVector coords2 = new PVector(1175,6234,0);
  
  
  for (float x=spacing/2.0f; x <= width; x += spacing)
  {    
    for (float y=spacing/2.0f; y <= height; y += spacing)
    {
      coords.set(x*noiseDensityX, y*noiseDensityY, 0);
      coords2.set(5*x*noiseDensityX, 5*y*noiseDensityY, 0);

      float noise = GetPerlinWave(PVector.add(offsetDir,coords),1.0f,1.0f) +0.1f;
      float noise2 = GetPerlinWave(PVector.add(offsetDir2,coords),1.0f,1.4f) + 0.1f;
      // float noise3 = GetPerlinWave(PVector.add(offsetDir3,coords),1.0f,0.3f) + 0.1f;
      
      // noise = frac (noise * 3);

      PVector strokeValue = PVector.lerp(colorW, colorB, noise*0.3f +noise2*0.7f);

      stroke(strokeValue.x, strokeValue.y, strokeValue.z);
      strokeWeight(pointWeight);
      point(x-spacing/2.0f, y-spacing/2.0f);
    }
  }
}
