int w = 600;
int h = 600;

int2 center = new int2(w/2, h/2);

int margin = 50;

PointParticle particle1 = new PointParticle(new int2(120, 250), new float2(2, -4), 2);
PointParticle particle2 = new PointParticle(new int2(400, 400), new float2(3, -1), 2);
PointParticle particle3 = new PointParticle(new int2(140, 250), new float2(2, -3), 2);

float spring1 = 14;
float spring2 = 31;
float spring3 = 25;

void setup()
{
  size(600, 600);
  background(50);
  smooth();
  strokeWeight(1);
  // Don't show where control points are
  fill(50);
  colorMode(RGB, 255);
  stroke(255);
}

void draw()
{ 
  long currentTime = millis();
  deltaTime = (currentTime - time)*0.1f;

  // lets separate the methods to form a more modular structure

  float2 force1 = SpringToCenter(particle1.position, spring1/100);  
  float2 force2 = SpringToCenter(particle2.position, spring2/100);
  float2 force3 = SpringToCenter(particle3.position, spring3/100);
  
  particle1.ApplyTotalForceAndUpdatePosition(force1);
  particle2.ApplyTotalForceAndUpdatePosition(force2);
  particle3.ApplyTotalForceAndUpdatePosition(force3);

  noFill();
  stroke(random(10, 20), random(140, 230), random(130, 185));
  strokeWeight(2);
  line(particle1.position.x, particle1.position.y, particle2.position.x, particle2.position.y);
  line(particle1.position.x, particle1.position.y, particle3.position.x, particle3.position.y);
  line(particle2.position.x, particle2.position.y, particle3.position.x, particle3.position.y);

  stroke(random(120, 155), random(55, 100), random(180, 210));
  
  circle(particle1.position.x,particle1.position.y, 2);
  circle(particle2.position.x,particle2.position.y, 2);
  circle(particle3.position.x,particle3.position.y, 2);

  time = currentTime;
}
