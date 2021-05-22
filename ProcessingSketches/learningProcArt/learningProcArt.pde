PVector center = new PVector(width/2, height/2);

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
      new PVector(random(50, 550), random(50, 550)), 
      new PVector(random(-3, 3), random(-3, 3)), 
      random(1, 3)), 
      random(4, 7));
  }
  
  stroke(255);
  center.set(width/2, height/2);
  print(center);
}

void draw()
{ 
  background(20);
  long currentTime = millis();
  deltaTime = (currentTime - time)*0.1f;

  //strokeWeight(1);
  //stroke(random(120, 155), random(55, 100), random(180, 210));

  PVector[] forces = new PVector[particleNumber];

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
