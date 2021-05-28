PVector[] points = new PVector[25];

float offset = 0;
float offsetSpeed = 5.5f;
PVector offsetDir = new PVector(0, 0, 0);

float noiseMaximum = 3.0f;

void setup()
{
  size(600, 600); 
  for (int i=0; i< points.length; i++)
  {
    points[i] = new PVector(random(width), random(height), random((width+height))/2);
  }
}

void draw()
{
  offset = millis()/1000.0f;

  loadPixels();
  for (int x=0; x<width; x++)
  {
    for (int y=0; y<height; y++)
    {

      float[] distances = new float[points.length];
      for (int i=0; i< points.length; i++)
      {
        float z = frameCount % width;
        PVector vec = points[i];
        float d = dist(x, y, z, vec.x, vec.y, vec.z);
        distances[i] = d;
      }      

      int n=1;
      int m=0;
      float[] sorted = sort(distances);

      float noise = (map(sorted[n], 0, 600, 0, noiseMaximum) + map(sorted[m], 0, 800, 0, noiseMaximum))/2;

      noise = frac(noise);

      int index = x + y*width;
      pixels[index] = color(noise*255/noiseMaximum);

      //float r = map(sorted[0],0,width*3/4,255,0);
      //float g = map(sorted[1],0,height*3/4,255,0);
      //float b = map(sorted[2],0,width*3/4,255,0);
      //int index = x + y*width;
      //pixels[index] = color(r,g,b);
    }
  }

  updatePixels();
}

float frac(float value)
{
  return value%1.0f;
}
