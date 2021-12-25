PVector center = new PVector();

Particle particles[];
int particleCount = 7000;

void setup()
{
  size(500, 500);
  background(20);
  center = new PVector(width/2, height/2);

  particles = new Particle[particleCount];

  for (int i = 0; i < particleCount; i ++)
  {
    PVector startPos = PVector.add(center,PVector.random2D().mult(random(width*0.1f,width*0.4f)));
    PVector startVel = PVector.random2D().mult(random(width*0.01f,width*0.4f));

    particles[i] = new Particle(startPos, startVel);

    float r = random(70, 100);
    float g = random(30, 60);
    float b = random(210, 250);

    particles[i].SetColor(r, g, b);
  }
}


void draw()
{
  background(20);
  for (int i = 0; i < particleCount; i ++)
  {
    PVector forceDirection = PullToTarget(particles[i].currentPosition, center);
    particles[i].ApplyForce(forceDirection.mult(0.0001f));
    particles[i].Update();
    particles[i].EdgeWarp();
  }
  
  println(frameRate);
}

PVector PullToTarget(PVector position, PVector target)
{
  PVector direction = PVector.sub(target, position);
  return direction;
}
