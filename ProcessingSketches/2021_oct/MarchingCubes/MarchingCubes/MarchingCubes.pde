float field[][];
int resolution = 5;
int cols, rows;

float xSeed = 0;
float ySeed = 0;
float zSeed = 0;
float increment = 0.2;

float zOffset = 0;
float zPanSpeed = 0.05;

OpenSimplexNoise noiseGen;

void setup()
{
  size(400, 400);
  noiseGen = new OpenSimplexNoise();

  cols = 1 + width/resolution;
  rows = 1 + height/resolution;  
  field = new float[cols][rows];
  
  xSeed = random(-500,500);
  ySeed = random(-500,500);
  zSeed = random(-500,500);
  
  zOffset = zSeed;
}

void draw()
{
  background(127);
  strokeWeight(resolution * 0.25);
  
  float xOffset = xSeed;
  for (int i = 0; i < cols; i++)
  {
    float yOffset = ySeed;
    xOffset += increment;
    for (int j = 0; j < rows; j++)
    {
      yOffset += increment;
      field[i][j] = (float)(noiseGen.eval(xOffset, yOffset, zOffset));
    }
  }
  zOffset += zPanSpeed;

  for (int i = 0; i< cols; i++)
  {
    for (int j = 0; j< rows; j++)
    {
      stroke(field[i][j] * 255);
      point(i*resolution, j*resolution);
    }
  }

  strokeWeight(0.5);
  stroke(255);
  for (int i = 0; i< cols-1; i++)
  {
    for (int j = 0; j< rows-1; j++)
    {
      float x = i * resolution;
      float y = j * resolution;
      float halfRes = resolution/2;
      PVector a = new PVector(x + halfRes, y);
      PVector b = new PVector(x + resolution, y + halfRes);
      PVector c = new PVector(x + halfRes, y + resolution);
      PVector d = new PVector(x, y + halfRes);

      int state = GetState(field[i][j], field[i+1][j], field[i+1][j+1], field[i][j+1]);

      AnalyseState(state, a, b, c, d);
    }
  }
}

int GetState(float a, float b, float c, float d)
{
  return int(8 * ceil(a) + 4 * ceil(b) + 2 * ceil(c) + 1 * ceil(d));
}

void AnalyseState(int state, PVector a, PVector b, PVector c, PVector d)
{
  switch(state)
  {
  case 0:
    // don't draw
    break;
  case 1:
    LineFromTo(c, d);
    break;
  case 2:
    LineFromTo(b, c);
    break;
  case 3:
    LineFromTo(b, d);
    break;
  case 4:
    LineFromTo(a, b);
    break;
  case 5:
    LineFromTo(a, d);
    LineFromTo(b, c);
    break;
  case 6:
    LineFromTo(c, a);
    break;
  case 7:
    LineFromTo(a, d);
    break;
  case 8:
    LineFromTo(a, d);
    break;
  case 9:
    LineFromTo(a, c);
    break;
  case 10:
    LineFromTo(c, d);
    LineFromTo(a, b);
    break;
  case 11:
    LineFromTo(a, b);
    break;
  case 12:
    LineFromTo(b, d);
    break;
  case 13:
    LineFromTo(b, c);
    break;
  case 14:
    LineFromTo(c, d);
    break;
  case 15:
    // don't draw
    break;
  }
}

void LineFromTo(PVector start, PVector end)
{
  line(start.x, start.y, end.x, end.y);
}
