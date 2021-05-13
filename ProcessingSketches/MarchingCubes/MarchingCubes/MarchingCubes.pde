float field[][];
int resolution = 20;
int cols, rows;

void setup()
{
  size(400, 400);
  cols = 1 + width/resolution;
  rows = 1 + height/resolution;  
  field = new float[cols][rows];  
  for (int i = 0; i< cols; i++)
    for (int j = 0; j< rows; j++)
    {
      {
        field[i][j] = floor(random(2));
      }
    }
}

void draw()
{
  background(127);
  strokeWeight(resolution * 0.25);
  for (int i = 0; i< cols; i++)
    for (int j = 0; j< rows; j++)
    {
      {
        stroke(field[i][j] * 255 );
        point(i*resolution, j*resolution);
      }
    }

  for (int i = 0; i< cols-1; i++)
    for (int j = 0; j< rows-1; j++)
    {
      {
        float x = i * resolution;
        float y = j * resolution;
        float halfRes = resolution/2;
        PVector a = new PVector(x + halfRes, y);
        PVector b = new PVector(x + resolution, y + halfRes);
        PVector c = new PVector(x + halfRes, y + resolution);
        PVector d = new PVector(x, y + halfRes);

        int state = GetState(field[i][j], field[i+1][j], field[i+1][j+1], field[i][j+1]);
      }
    }
}

int GetState(float a, float b, float c, float d)
{
  return int(a + 2 * b + 4 * c + 8 * d);
}

void AnalyseState(int state)
{
  switch(state)
  {
  case 0:
  // don't draw
    break;
  case 1:
    break;
  case 2:
    break;
  case 3:
    break;
  case 4:
    break;
  case 5:
    break;
  case 6:
    break;
  case 7:
    break;
  case 8:
    break;
  case 9:
    break;
  case 10:
    break;
  case 11:
    break;
  case 12:
    break;
  case 13:
    break;
  case 14:
    break;
  case 15:
    break;
  }
}
