PVector[] points = new PVector[25];


void setup()
{
  size(600, 600); 
  for (int i=0; i< points.length; i++)
  {
    points[i] = new PVector(random(width), random(height), random(width));
  }
}

void draw()
{
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
        float d = dist(x,y,z,vec.x,vec.y, vec.z);
        distances[i] = d;
      }      
      
      float[] sorted = sort(distances);

      float r = map(sorted[0],0,width*3/4,255,0);
      float g = map(sorted[1],0,height*3/4,255,0);
      float b = map(sorted[2],0,width*3/4,255,0);
      int index = x + y*width;
      pixels[index] = color(r,g,b);
    }
  }

  updatePixels();

  //stroke(0, 255, 0);
  //strokeWeight(6);
  //for (PVector v : points)
  //{
  //  point(v.x, v.y);
  //  v.x += random(-1,1);
  //  v.y += random(-1,1);
  //}
}
