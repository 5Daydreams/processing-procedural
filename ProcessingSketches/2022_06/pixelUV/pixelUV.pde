

void setup()
{
  size(512, 512);
  strokeWeight(1);
  int pixelSize = 64;
  
  for (int j = 0; j < height; j++)
  {
    for (int i =0; i< width; i ++)
    {
      stroke(pixelSize*(i/pixelSize)/2, (pixelSize*((height - j)/pixelSize))/2, 0);
      point(i, j);
    }
  }
  
  save("pixelUV.png");
}
