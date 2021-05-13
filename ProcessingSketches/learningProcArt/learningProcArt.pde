int w = 600;
int h = 600;
int2 center = new int2(w/2, h/2);

int particleNumber = 12;
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
      new int2(int(random(150, 450)), int(random(150, 450))), 
      new float2(random(-7, 7), random(-7, 7)), 
      random(1, 5)), 
      random(40, 70));
  }
}

void draw()
{ 
  background(20);
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
  strokeWeight(0.7);

  for (int i =0; i < particleNumber; i++)
  {
    for (int j = i; j < particleNumber; j++)
    {
      stroke(40+180/particleNumber*(i+1));
      LineFromTo(group[i].particle.position, group[j].particle.position);
    }
  }

  time = currentTime;
}
