

void setup()
{
  size(500, 500);
  background(150);
  fill(200);
  
  translate(width/2,height/2);
  
  BoundaryRect bound = new BoundaryRect(-50.0f,50.0f,-100.0f,100.0f);
  
  PVector one = new PVector(1,-1);
  
  bound.DrawLines(one,5.0f);
}
