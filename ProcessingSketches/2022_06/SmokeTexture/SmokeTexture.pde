float increment = 0.1f;
float incrementZ = 0.1f;

float spacing = 10.0f;
int collumns, rows;
float zOffset = 0.0f;

int particleCount = 800;

Particle[] particles;
PVector[] flowField;

boolean run = false;

void setup()
{
  size(512, 512);
  background(20);

  collumns = floor(width/spacing)+1;
  rows = floor(height/spacing) +1;

  flowField = new PVector[collumns * rows];

  particles = new Particle[particleCount];

  for (int i = 0; i < particles.length; i++)
  {
    PVector startPos = new PVector(random(0, width), random(0, height));
    PVector startVel = new PVector(random(-1, 1), random(-1, 1));
    particles[i] = new Particle(startPos, startVel);

    float white = random(50,250);

    float r = white;
    float g = white;
    float b = white;

    //float g = random(120-r, 230-r);

    particles[i].SetColor(r, g, b);
  }
}

void mousePressed()
{
  run = !run;
}

void keyPressed() {
  if (key == CODED) 
  {
    if (keyCode == UP) 
    {
      save("smokeTex.png");
    }
  }
}
void draw()
{
  if (!run)
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
      float angle = (noise(xOffset, yOffset, zOffset)*2 - 1.0f) * 2880;
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
