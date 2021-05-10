long time = 0;
float deltaTime;
float gravityForce = 17;

class PointParticle
{
  PointParticle(int2 startPos, float2 startVel, float massValue)
  {
    position = startPos;
    velocity = startVel;
    mass = massValue;
  }

  void ApplyTotalForceAndUpdatePosition(float2 force)
  {
    acceleration = Scale(force,deltaTime/mass);
    velocity = Add(velocity, acceleration);
    int2 intVelocity1 = new int2(int(velocity.x), int(velocity.y));
    position = Add(position, intVelocity1);
  }

  int2 position = new int2(0, 0);
  float2 velocity = new float2(0, 0);
  float2 acceleration  = new float2(0, 0);
  float mass = 0.0f;
}



void GravityMotionBezier()
{
  SetupBluePink();
  long currentTime = millis();
  deltaTime = (currentTime - time)*0.05f;

  float2 force = GetTiltDirection(particle1, deltaTime);
  
  particle1.ApplyTotalForceAndUpdatePosition(force);

  CenterConstrainedBezier(center.x, center.y, particle1.position.x, particle1.position.y, 150);

  time = currentTime;
}

float2 GetTiltDirection(PointParticle particle, float deltaTime)
{
  float2 fakeCenter = new float2(center.x, center.y);
  float2 fakePosition = new float2(particle.position.x, particle.position.y);
  
  float2 direction = UseSecondVectorAsOrigin(fakeCenter, fakePosition);
  float distanceSquared = Size(direction);
  distanceSquared *= distanceSquared;
  float2 tiltDirection = new float2( direction.x/ distanceSquared, direction.y/distanceSquared);

  return Scale(tiltDirection, deltaTime * gravityForce);
}

////////////////////////////////////////////////////

float2 SpringToCenter(int2 vector, float springConstant)
{
  float2 direction = GetFloatVectorByIntSubtraction(center, vector).Normalize();
  float2 force = Scale(direction, springConstant);

  return force;
}
