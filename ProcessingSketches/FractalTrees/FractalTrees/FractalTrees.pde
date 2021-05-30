float branchLength = 100;
float branchSplitAngle = PI/6;
float branchSizeReduction = 0.7f;



void setup()
{
  size(400, 400);
  background(20);
  stroke(255);  
}


void draw()
{
  background(20);
  translate(200, height);
  DrawBranch(branchLength, branchSplitAngle, branchSizeReduction);
}

void DrawBranch(float len, float angle, float sizeReduction)
{  
  if (len > 8)
  {
    line(0, 0, 0, -len);
    translate(0, -len);

    push();
    rotate(angle); 
    DrawBranch(len*sizeReduction, angle, sizeReduction);
    pop();

    push();
    rotate(-angle);
    DrawBranch(len*sizeReduction, angle, sizeReduction);
    pop();
  }
}
