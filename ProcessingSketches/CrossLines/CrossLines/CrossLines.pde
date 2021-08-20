int pixelSize = 20;
PVector[] directions = new PVector[4];

void setup()
{
  size(600, 600);
  background(20);

  directions[0] = new PVector(pixelSize, 0);
  directions[1] = new PVector(0, pixelSize);
  directions[2] = new PVector(-pixelSize, 0);
  directions[3] = new PVector(0, -pixelSize);

  strokeWeight(2);
  stroke(128);

  for (int i = 1; i < width/pixelSize; i ++)
  {
    for (int j = 1; j < height/pixelSize; j ++)
    {
      if ( (i+j)%(2) == 0)
      {
        continue;
      }

      float x = i*pixelSize;
      float y = j*pixelSize;

      int kSize = (int)random(2, 4);
      int prevIndexes[] = new int[kSize];
      
      for (int k = 0; k < kSize; k ++)
      {
        int random = (int)random(0, 4);

        if (ArrayContains(prevIndexes, random))
        {
          continue;
        }

        prevIndexes[k] = random;        
        
        push();
        translate(x,y);
        
        // rotate((random+k) * 6.28318530718/4.0f);
        
        line(0, 0, directions[random].x, directions[random].y);
        
        pop();
      }
           
    }
  }
}

boolean ArrayContains(int[] array, int value)
{
  for (int i = 0; i < array.length; i++)
  {
    if (array[i] == value)
      return true;
  }

  return false;
}
