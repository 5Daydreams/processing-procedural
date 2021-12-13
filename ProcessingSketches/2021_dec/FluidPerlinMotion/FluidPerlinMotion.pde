float increment = 0.1f;
float incrementZ = 0.01f;
float spacing = 10.0f;
int collumns, rows;
float zOffset = 0.0f;

int particleCount = 1500;

Particle[] particles;
PVector[] flowField;

boolean run = false;

void setup()
{
  size(600, 600);
  background(00);

  collumns = floor(width/spacing)+1;
  rows = floor(height/spacing) +1;

  flowField = new PVector[collumns * rows];

  particles = new Particle[particleCount];

  for (int i = 0; i < particles.length; i++)
  {
    PVector startPos = new PVector(random(0, width), random(0, height));
    PVector startVel = new PVector(random(-1, 1), random(-1, 1));
    particles[i] = new Particle(startPos, startVel);

    float r = random(5, 15);
    float g = random(10, 230);
    float b = random(80, 190);
    particles[i].SetColor(r, g, b);
  }
}

void mousePressed()
{
  run = !run;
}
void draw()
{
  if(!run)
  {
    return;
  }
  
  // fill(10, 10);
  // rect(0, 0, width, height);

  float yOffset = 0.0f;

  for (int y = 0; y < rows; y++)
  {
    float xOffset = 0.0f;
    for (int x = 0; x < collumns; x++)
    {
      int index = y * collumns + x;
      float angle = (noise(xOffset, yOffset, zOffset)*2 - 1.0f) * 720;
      float r = noise(xOffset, yOffset, zOffset*0.01);
      xOffset += increment;

      PVector v = AngleVector(angle, r * spacing);
      flowField[index] = v;

      // DrawFlowField(x,y,v,r);
    }
    yOffset += increment;
  }

  for (int i = 0; i < particles.length; i++)
  {
    particles[i].Update();
    // particles[i].Render();
    particles[i].EdgeWarp();
    particles[i].Follow(flowField);
  }

  zOffset += incrementZ;

  println(floor(frameRate));
}

void DrawFlowField(int x, int y, PVector v, float noiseValue)
{
  stroke(30 + 225*noiseValue);
  strokeWeight(0.8f);
  line(x*spacing, y*spacing, x*spacing + v.x, y*spacing + v.y);
}
