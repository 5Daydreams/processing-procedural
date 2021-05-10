int w = 600;
int h = 600;

int2 center = new int2(w/2, h/2);

int margin = 50;

class SpringParticle
{
  SpringParticle(PointParticle particleInput, float springConstantInput)
  {
    particle = particleInput;
    springConstant = springConstantInput;
  }

  PointParticle particle;
  float springConstant;
}

int particleNumber = 7;
SpringParticle[] group = new SpringParticle[particleNumber];

void setup()
{
  size(600, 600);
  background(20);
  smooth();
  strokeWeight(1);
  fill(20);
  colorMode(RGB, 255);

  for (int i =0; i < particleNumber; i++)
  {
    group[i] = new SpringParticle(new PointParticle(
      new int2(int(random(100, 500)), int(random(100, 500))), 
      new float2(random(-3, 3), random(-3, 3)), 
      random(2, 3)), 
      random(10, 50));
  }
}

void draw()
{ 
  long currentTime = millis();
  deltaTime = (currentTime - time)*0.1f;

  //strokeWeight(1);
  //stroke(random(120, 155), random(55, 100), random(180, 210));

  float2[] forces = new float2[particleNumber];

  for (int i =0; i < particleNumber; i++)
  {
    forces[i] = SpringToCenter(group[i].particle.position, group[i].springConstant/100);
    group[i].particle.ApplyTotalForceAndUpdatePosition(forces[i]);
    // circle(group[i].particle.position.x, group[i].particle.position.y, 2);
  }

  noFill();
  // stroke(random(10, 20), random(140, 230), random(130, 185));
  strokeWeight(0.3);

  for (int i =0; i < particleNumber; i++)
  {
    for (int j = i; j < particleNumber; j++)
    {
      stroke(255*(i+1)/(j+1));
      LineFromTo(group[i].particle.position, group[j].particle.position);
    }
  }

  time = currentTime;
}
