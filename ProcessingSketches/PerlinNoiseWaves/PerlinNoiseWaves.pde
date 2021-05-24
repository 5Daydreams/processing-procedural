float spacing = 7.0f;
float noiseDensityX = 12.0f;
float noiseDensityY = 12.0f;
float offsetSpeed = 0.5f;
float pointWeight = 3.0f; // spacing+1;

void setup()
{
  size(800, 800);
  background(20);
  strokeWeight(pointWeight);
}

void draw()
{
  float offset = millis()/1000.0f;
  PVector offsetDir = new PVector(offset,offset,offset);
  offsetDir.mult(offsetSpeed);

  PVector color1 = new PVector(25, 0, 10);
  PVector color2 = new PVector(0, 225, 0);


  PVector coords = new PVector(0,0,0);
  for (float x=spacing/2.0f; x <= width; x += spacing)
  {
    for (float y=spacing/2.0f; y <= height; y += spacing)
    {
      coords.set(x/width*noiseDensityX, y/height*noiseDensityY, y/height*noiseDensityX);
      // float noise = PerlinNoise3(PVector.add(coords,offsetDir) );
      float noise = PerlinNoise3(coords);
      // float noise = gradientNoise(x * noiseDensityX + offset*y * noiseDensityY);

      // noise = frac(noise * 8);

      PVector strokeValue = PVector.lerp(color1, color2, noise);

      stroke(strokeValue.x, strokeValue.y, strokeValue.z);
      point(x, y);
    }
  }
}
