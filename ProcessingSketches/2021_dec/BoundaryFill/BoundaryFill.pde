

void setup()
{
  size(500, 500);
  background(150);
  fill(200);
  
  translate(width/2,height/2);
  
  BoundaryRect bound = new BoundaryRect(-50.0f,50.0f,-100.0f,100.0f);
  
  PVector dir = new PVector(1,0);
  float spacing = 10.0f;
  
  bound.DrawLines(dir,spacing);
  bound.DrawLines(dir.rotate(HALF_PI),spacing*2);
}
