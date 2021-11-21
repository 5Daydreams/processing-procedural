int mazeCellSize = 25;
MazeTile[] mazeTiles;

void setup()
{
  size(800, 600);
  background(255);
}

void draw()
{
  MazeTile[] mazeTiles = new MazeTile[width/mazeCellSize * height/mazeCellSize];

  for (int k = 0; k < mazeTiles.length; k++)
  {
    mazeTiles[k] = new MazeTile(color(220), color(40), 2);
  }

  noStroke();
  for (int i = 0; i < width/mazeCellSize; i++)
  {
    for (int j = 0; j < height/mazeCellSize; j++)
    {
      mazeTiles[(j*width/mazeCellSize + i)].Draw(i* mazeCellSize, j* mazeCellSize, mazeCellSize);
    }
  }
}

void waitForNFrames(int N)
{
  delay(N);
}

class MazeTile
{
  color FloorColor;
  color WallColor;
  float WallThickness;

  MazeTile(color floor, color wall, float thickness)
  {
    FloorColor = floor;
    WallColor = wall;
    WallThickness = thickness;
  }

  void Draw(PVector position, float size)
  {
    noStroke();
    fill(WallColor);
    rect(position.x, position.y, size, size);

    fill(FloorColor);
    rect(position.x+ WallThickness, position.y + WallThickness, size-2*WallThickness, size-2*WallThickness);
  }

  void Draw(float x, float y, float size)
  {
    PVector position = new PVector(x, y);
    this.Draw(position, size);
  }
}
