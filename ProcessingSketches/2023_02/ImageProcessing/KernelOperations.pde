// Sampling tricks  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

int ExplicitWrapSampling(int samplePos, int wrapSize)
{
  if (samplePos < 0)
  {
    return samplePos + wrapSize;
  } 
  else if (samplePos >= wrapSize)
  {
    return samplePos - wrapSize;
  }

  return samplePos;
}

int WrapSampling(int samplePos, int wrapSize)
{
  return (samplePos + wrapSize) % wrapSize;
}

boolean IsWithinCircle(int xSampling, int ySampling, int radius)
{
  int xSquared = (xSampling * xSampling);
  int ySquared = (ySampling * ySampling);

  int dist = floor(sqrt(xSquared * 1.0f + ySquared * 1.0f));

  return dist <= radius;
}

// Kernels  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void MinFromCircle(int x, int y, int circleSize)
{
  color minVal = color(255, 255);

  for (int i = -circleSize; i <= circleSize; i++)
  {
    for (int j = -circleSize; j <= circleSize; j++)
    {
      boolean containedByCircle = IsWithinCircle(i, j, circleRadius);

      if (!containedByCircle)
      {
        continue;
      }

      int xPos = ExplicitWrapSampling(x + i, textureSize);
      int yPos = ExplicitWrapSampling(y + j, textureSize);

      color currColor = texture.pixels[xPos + yPos * width];

      if (alpha(currColor) < alpha(minVal))
      {
        minVal = currColor;
      }
    }
  }

  pixels[x + y * width] = minVal;
}
