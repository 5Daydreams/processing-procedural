PVector zeroPos = new PVector(0, 0);
PVector right = new PVector(1, 0);
PVector left = new PVector(-1, 0);
PVector up = new PVector(0, -1);
PVector down = new PVector(0, 1);

int spiralCount = 1000;
SpiralTrajObject[] spirals;
PVector SpiralCenter = new PVector();

boolean run = true;

void setup()
{
  size(500, 500);

  background(10);

  SetupSpirals();
}

void SetupSpirals()
{
  spirals = new SpiralTrajObject[spiralCount];
  SpiralCenter = GetRandomVector(-width*0.4f, width*0.4f, -height*0.4f, height*0.4f);

  for (int i = 0; i < spirals.length; i++)
  {
    spirals[i] = RandomizeNewSpiral();
  }
}

void mousePressed()
{
  SetupSpirals();
  // run = !run;
}


void draw()
{
  if (!run)
  {
    return;
  }

  stroke(200, 255);
  for (int i = 0; i < spirals.length; i++)
  {
    spirals[i].UpdatePositionAndDraw();
  }

  noStroke();

  fill(10, 10);
  rect(0, 0, width, height);
}

PVector GetRandomVector(float xMin, float xMax, float yMin, float yMax)
{
  return new PVector(random(xMin, xMax), random(yMin, yMax));
}

SpiralTrajObject RandomizeNewSpiral()
{
  PVector centerPos = SpiralCenter;
  PVector offset = GetRandomVector(-10, 10, -10, 10);
  // float radialMulti = random(0.8f, 1.2f);
  float radialMulti = (randomGaussian()*0.3f)+ 0.9f;
  radialMulti *= radialMulti;
  float angularMulti = random(-2.0f, 0.3f);
  angularMulti *= angularMulti;

  if (0.0f < angularMulti && angularMulti <= 0.3f)
  {
    angularMulti = 0.4f;
  }

  float stepSize = random(1.5f, 4.0f);

  float r = random(0, 190);
  float g = 170 - r;
  float b = max(r, g) + 50;

  color newColor = color(r, g, b);

  return new SpiralTrajObject(centerPos, PVector.add(centerPos, offset), radialMulti, angularMulti, stepSize, newColor);
}
