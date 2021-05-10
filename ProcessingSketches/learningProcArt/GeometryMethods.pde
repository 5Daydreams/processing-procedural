

////////////////////////////////// Coloring /////////////////////////////////


void ApplyNewGrayscale()
{
  int value = 255;
  int strokeValue = value * int(random(0, 100))/100;

  stroke(strokeValue);
}

void SetupBluePink()
{
  float3 low = new float3(0, 50, 180);

  float3 high = new float3(225, 100, 255);

  float3 multipliers = new float3(0.9, 0.8, 1);

  ApplyNewColor(low, high, multipliers);
}


void ApplyNewColor(float3 lowColorBound, float3 highColorBound, float3 multipliers)
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

void RandomBezier(int lowX, int lowY, int highX, int highY)
{
  beginShape();

  int startX = int(random(lowX, highX));
  int startY = int(random(lowY, highY));

  vertex(startX, startY); // first point

  int deltaX = highX-lowX;
  int deltaY = highY-lowY;

  int control1X = startX + int(random(-deltaX, deltaX));
  int control1Y = startY - int(random(-deltaY, deltaY));

  int control2X = highX - int(random(-deltaX, deltaX));
  int control2Y = highY + int(random(-deltaY, deltaY));

  int finalX = int(random(lowX, highX));
  int finalY = int(random(lowY, highY));

  bezierVertex(control1X, control1Y, control2X, control2Y, finalX, finalY);
  endShape();
}


void OscillatingBezier(int startX, int startY, int finalX, int finalY, int variance) 
{
  beginShape();
  vertex(startX, startY); // first point

  int deltaX = variance + finalX - startX;
  int deltaY = variance -(finalY - startY);

  int control1X = startX + int(random(0, 100)) * deltaX/80;
  int control1Y = startY - int(random(0, 100)) * deltaY/80;

  int control2X = finalX - int(random(0, 100)) * deltaX/80;
  int control2Y = finalY + int(random(0, 100)) * deltaY/80;

  bezierVertex(control1X, control1Y, control2X, control2Y, finalX, finalY);
  endShape();
}

void CenterConstrainedBezier(int startX, int startY, int finalX, int finalY, int variance) 
{
  beginShape();
  vertex(startX, startY); // first point

  int deltaX = variance + finalX - startX;
  int deltaY = variance - (finalY - startY);

  int control1X = constrain(startX + int(random(-100, 100)) * deltaX/160, w/2-variance, w/2+variance);
  int control1Y = constrain(startY - int(random(-100, 100)) * deltaY/160, h/2 - margin, h/2+margin);

  int control2X = constrain(finalX - int(random(-100, 100)) * deltaX/160, w/2-variance, w/2+variance);
  int control2Y = constrain(finalY + int(random(-100, 100)) * deltaY/160, h/2 - margin, h/2+margin);

  bezierVertex(control1X, control1Y, control2X, control2Y, finalX, finalY);
  endShape();
}

void PolarBezier(int startX, int startY, int finalX, int finalY, int variance)
{
  beginShape();
  vertex(startX, startY); // first point

  int control1X = startX + int( random(-variance, variance));
  int control1Y = startY - int( random(-variance, variance));

  int control2X = finalX - int( random(-variance, variance));
  int control2Y = finalY + int( random(-variance, variance));

  bezierVertex(control1X, control1Y, control2X, control2Y, finalX, finalY);
  endShape();
}

///////////////////////////////////////////////////////

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
