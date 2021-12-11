PVector zeroPos = new PVector(0, 0);
PVector right = new PVector(1, 0);
PVector left = new PVector(-1, 0);
PVector up = new PVector(0, -1);
PVector down = new PVector(0, 1);

SpiralTrajObject spiralLine;
SpiralTrajObject[] spirals = new SpiralTrajObject[10];

boolean run = false;

void setup()
{
  size(500, 500);

  background(50);

  spiralLine = new SpiralTrajObject(zeroPos, PVector.add(zeroPos, right), -5, -10, 50);

  for (int i = 0; i < spirals.length; i++)
  {
    spirals[i] = RandomizeNewSpiral();
  }
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

  fill(50, 50);
  rect(0, 0, width, height);

  // spiralLine.UpdatePositionAndDraw();
}

PVector GetRandomVector(float xMin, float xMax, float yMin, float yMax)
{
  return new PVector(random(xMin, xMax), random(yMin, yMax));
}

SpiralTrajObject RandomizeNewSpiral()
{
  PVector centerPos = GetRandomVector(-50, 50, -50, 50);
  PVector offset = GetRandomVector(-1, 1, -1, 1);
  float radialMulti = random(0.5f, 2.0f);
  float angularMulti = random(-30.0f, 30.0f);
  float stepSize = random(1.5f, 10.0f);

  return new SpiralTrajObject(centerPos, PVector.add(centerPos, offset), radialMulti, angularMulti, stepSize);
}

void mousePressed()
{
  run = !run;
}
