PVector center = new PVector(width/2, height/2);
boolean run;
int BGColor = 20;

PVector low = new PVector(0, 50, 180);
PVector high = new PVector(225, 100, 255);
PVector multipliers = new PVector(0.9, 0.8, 1);

int particleNumber = 8;
SpringParticle[] group = new SpringParticle[particleNumber];

void setup()
{
  size(800, 800);
  background(20);
  smooth();
  strokeWeight(1);
  fill(20);
  colorMode(RGB, 255);

  for (int i =0; i < particleNumber; i++)
  {
    group[i] = new SpringParticle(new PointParticle(
      new PVector(random(150, 450), random(150, 450)), 
      new PVector(random(-(i+4), +(i+4)), random(-(i+4), +(i+4))), 
      random(5, 8)), 
      random(3, +1*i/2));
  }

  center.set(width/2, height/2);
  run = true;
}

void mousePressed()
{
  run = !run;
}

void draw()
{ 
  long currentTime = millis();

  if (!run)
  {  
    time = currentTime;
    return;
  }
  
  background(BGColor);

  deltaTime = (currentTime - time)*0.1f;

  //strokeWeight(1);
  //stroke(random(120, 155), random(55, 100), random(180, 210));

  PVector[] forces = new PVector[particleNumber];
  // forces[0] = SpringToTarget(group[0].particle.position, center, group[0].springConstant/100);
  // group[0].particle.ApplyTotalForceAndUpdatePosition(forces[0]);

  strokeWeight(5);

  for (int i = 0; i < particleNumber; i++)
  {
    forces[i] = SpringToTarget(group[i].particle.position, center, group[i].springConstant);
    group[i].particle.ApplyTotalForceAndUpdatePosition(forces[i]);
    // point(group[i].particle.position.x, group[i].particle.position.y); // , 5);
  }

  // noFill();
  // stroke(random(10, 20), random(140, 230), random(130, 185));
  strokeWeight(0.7);

  for (int i =1; i < particleNumber; i++)
  {
    float valR = SmoothRandom1d(20, (80/particleNumber)*(i+1), i*353);
    float valG = SmoothRandom1d(50, (320/particleNumber)*(i+1), i*256);
    float valB = SmoothRandom1d(70, (300/particleNumber)*(i+1), i*451);
    stroke(BGColor);
    fill(valR, valG, valB);
    CircleFromTo(group[i].particle.position, group[i-1].particle.position);
    //LineFromTo(group[i].particle.position, group[i-1].particle.position);
  }


  //for (int i = 1; i < particleNumber; i++)
  //{
  //  // stroke(60+(140/particleNumber)*(i+2));  
  //  SmoothPolarBezier(group[i].particle.position, group[i-1].particle.position, 80);
  //}

  time = currentTime;
}

void drawPolyhedra()
{
  PVector[] forces = new PVector[particleNumber+1];
  forces[0] = SpringToTarget(group[0].particle.position, center, group[0].springConstant/100);
  group[0].particle.ApplyTotalForceAndUpdatePosition(forces[0]);

  for (int i = 1; i < particleNumber; i++)
  {
    forces[i] = SpringToTarget(group[i].particle.position, group[i-1].particle.position, group[i].springConstant/10);
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
      stroke(60+(140/particleNumber)*(i+2));
      LineFromTo(group[i].particle.position, group[j].particle.position);
    }
  }
}
