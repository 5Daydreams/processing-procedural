

////////////////////////////////// Coloring /////////////////////////////////


void ApplyNewGrayscale()
{
  int value = 255;
  int strokeValue = value * int(random(0, 100))/100;

  stroke(strokeValue);
}

void SetupBluePink()
{
  PVector low = new PVector(0, 50, 180);

  PVector high = new PVector(225, 100, 255);

  PVector multipliers = new PVector(0.9, 0.8, 1);

  ApplyNewColor(low, high, multipliers);
}


void ApplyNewColor(PVector lowColorBound, PVector highColorBound, PVector multipliers)
{
  float strokeR = random(lowColorBound.x, highColorBound.x);
  float strokeG = random(lowColorBound.y, highColorBound.y);
  float strokeB = random(lowColorBound.z, highColorBound.z);

  float capR = multipliers.x;
  float capG = multipliers.y;
  float capB = multipliers.z;

  stroke(strokeR * capR, strokeG * capG, strokeB * capB);
}

/////////////////////////////// Beziers //////////////////////////////////////

void LineFromTo(PVector start, PVector end)
{
  line(start.x, start.y, end.x, end.y);
}

void RandomBezier(float lowX, float lowY, float highX, float highY)
{
  beginShape();

  float startX = random(lowX, highX);
  float startY = random(lowY, highY);

  vertex(startX, startY); // first point

  float deltaX = highX-lowX;
  float deltaY = highY-lowY;

  float control1X = startX + random(-deltaX, deltaX);
  float control1Y = startY - random(-deltaY, deltaY);

  float control2X = highX - random(-deltaX, deltaX);
  float control2Y = highY + random(-deltaY, deltaY);

  float finalX = random(lowX, highX);
  float finalY = random(lowY, highY);

  bezierVertex(control1X, control1Y, control2X, control2Y, finalX, finalY);
  endShape();
}


void OscillatingBezier(float startX, float startY, float finalX, float finalY, float variance) 
{
  beginShape();
  vertex(startX, startY); // first point

  float deltaX = variance + finalX - startX;
  float deltaY = variance -(finalY - startY);

  float control1X = startX + random(0, 100) * deltaX/80;
  float control1Y = startY - random(0, 100) * deltaY/80;

  float control2X = finalX - random(0, 100) * deltaX/80;
  float control2Y = finalY + random(0, 100) * deltaY/80;

  bezierVertex(control1X, control1Y, control2X, control2Y, finalX, finalY);
  endShape();
}

void CenterConstrainedBezier(float startX, float startY, float finalX, float finalY, float variance) 
{
  beginShape();
  vertex(startX, startY); // first point

  float deltaX = variance + finalX - startX;
  float deltaY = variance - (finalY - startY);

  float control1X = constrain(startX + random(-100, 100) * deltaX/160, width/2-variance, width/2+variance);
  float control1Y = constrain(startY - random(-100, 100) * deltaY/160, height/2, height/2);

  float control2X = constrain(finalX - random(-100, 100) * deltaX/160, width/2-variance, width/2+variance);
  float control2Y = constrain(finalY + random(-100, 100) * deltaY/160, height/2, height/2);

  bezierVertex(control1X, control1Y, control2X, control2Y, finalX, finalY);
  endShape();
}

void PolarBezier(float startX, float startY, float finalX, float finalY, float variance)
{
  beginShape();
  vertex(startX, startY); // first point

  float control1X = startX + random(-variance, variance);
  float control1Y = startY - random(-variance, variance);

  float control2X = finalX - random(-variance, variance);
  float control2Y = finalY + random(-variance, variance);

  bezierVertex(control1X, control1Y, control2X, control2Y, finalX, finalY);
  endShape();
}

void PolarBezier(PVector start, PVector end, float variance)
{
  PolarBezier(start.x,start.y,end.x,end.y,variance);
}

// I should try creating a smoothly-randomized version of PolarBezier

void SmoothPolarBezier(float startX, float startY, float finalX, float finalY, float variance)
{
  beginShape();
  vertex(startX, startY); // first point

  float control1X = startX + random(-variance, variance)* rand1dTo1d(millis());
  float control1Y = startY - random(-variance, variance)* rand1dTo1d(millis());

  float control2X = finalX - random(-variance, variance)* rand1dTo1d(millis());
  float control2Y = finalY + random(-variance, variance)* rand1dTo1d(millis());

  bezierVertex(control1X, control1Y, control2X, control2Y, finalX, finalY);
  endShape();
}

void SmoothPolarBezier(PVector start, PVector end, float variance)
{
  SmoothPolarBezier(start.x,start.y,end.x,end.y,variance);
}

///////////////////////////////////////////////////////

void CreateRotatingEquilateralPolygon(float x, float y, float radius, int vertexCount)
{
  pushMatrix();
  translate(x, y);
  rotate(frameCount/15.0);
  polygon(0,0,radius,vertexCount);  // Triangle
  popMatrix();
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
