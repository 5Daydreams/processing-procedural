int w = 600;
int h = 600;

int margin = 50;

long time = 0;
float deltaTime;

float gravityForce = 17;
float2 circleVelocity = new float2(2, 2.2);
float2 circleAcceleration = new float2(0, 0);

int2 center = new int2(w/2, h/2);
int2 position1 = new int2(120, 250);
int2 position2 = new int2(400, 400);
int2 position3 = new int2(140, 450);

float2 vel1 = new float2(2, -4);
float2 vel2 = new float2(3, -1);
float2 vel3 = new float2(-2, -5);

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

  float2 force1 = SpringToCenter(position1, spring1/100);
  float2 force2 = SpringToCenter(position2, spring2/100);
  float2 force3 = SpringToCenter(position3, spring3/100);

  vel1 = Add(vel1, Scale(force1, deltaTime));
  vel2 = Add(vel2, Scale(force2, deltaTime));
  vel3 = Add(vel3, Scale(force3, deltaTime));

  int2 intVelocity1 = new int2(int(vel1.x), int(vel1.y));
  int2 intVelocity2 = new int2(int(vel2.x), int(vel2.y));
  int2 intVelocity3 = new int2(int(vel3.x), int(vel3.y));

  position1 = Add(position1, intVelocity1); 
  position2 = Add(position2, intVelocity2);
  position3 = Add(position3, intVelocity3);

  noFill();
  stroke(random(10, 20), random(140, 230), random(130, 185));
  strokeWeight(2);
  // line(position1.x, position1.y, position2.x, position2.y);
  // line(position1.x, position1.y, position3.x, position3.y);
  // line(position2.x, position2.y, position3.x, position3.y);

  stroke(random(120, 155), random(55, 100), random(180, 210));
  
  pushMatrix();
  translate(position1.x, position1.y);
  rotate(frameCount/15.0);
  polygon(0,0,15,3);  // Triangle
  popMatrix();
  //circle(position1.x, position1.y, 2);
  //circle(position2.x, position2.y, 2);
  //circle(position3.x, position3.y, 2);

  time = currentTime;
}

////////////////////////////////////////////////////////////////////

void GravityMotionBezier()
{
  SetupBluePink();
  long currentTime = millis();
  deltaTime = (currentTime - time)*0.05f;

  float2 tiltDirection = GetTiltDirection(deltaTime);

  circleVelocity = Add(circleVelocity, tiltDirection);

  float2 fakePosition = Add ( new float2(position1.x, position1.y), Scale(circleVelocity, random(0.5, 1)));

  position1 = new int2(int(fakePosition.x), int(fakePosition.y) );

  CenterConstrainedBezier(center.x, center.y, position1.x, position1.y, 150);

  time = currentTime;
}

float2 GetTiltDirection(float deltaTime)
{
  float2 fakeCenter = new float2(center.x, center.y);
  float2 fakePosition = new float2(position1.x, position1.y);
  circleAcceleration = UseSecondVectorAsOrigin(fakeCenter, fakePosition);
  float distanceSquared = Size(circleAcceleration);
  distanceSquared *= distanceSquared;
  float2 tiltDirection = new float2( circleAcceleration.x/ distanceSquared, circleAcceleration.y/distanceSquared);

  return Scale(tiltDirection, deltaTime * gravityForce);
}

////////////////////////////////////////////////////

float2 SpringToCenter(int2 vector, float springConstant)
{
  float2 direction = GetFloatVectorByIntSubtraction(center, vector).Normalize();
  float2 force = Scale(direction, springConstant);

  return force;
}
