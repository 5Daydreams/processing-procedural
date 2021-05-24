long time = 0;
float deltaTime;
float gravityForce = 17;

class PointParticle
{
  PointParticle(PVector startPos, PVector startVel, float massValue)
  {
    position = startPos;
    velocity = startVel;
    mass = massValue;
  }

  void ApplyTotalForceAndUpdatePosition(PVector force)
  {
    acceleration = force.mult(deltaTime/mass);
    velocity.add(acceleration);
    position.add(velocity);
  }

  PVector position = new PVector(0, 0);
  PVector velocity = new PVector(0, 0);
  PVector acceleration  = new PVector(0, 0);
  float mass = 0.0f;
}

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

void GravityMotionBezier(PointParticle particle)
{
  SetupBluePink();
  long currentTime = millis();

  PVector force = GetTiltDirection(particle, deltaTime);
  
  particle.ApplyTotalForceAndUpdatePosition(force);

  CenterConstrainedBezier(center.x, center.y, particle.position.x, particle.position.y, 150);

  time = currentTime;
}

PVector GetTiltDirection(PointParticle particle, float deltaTime)
{
  PVector direction = PVector.sub(particle.position,center);
  float distanceSquared = direction.magSq();
  PVector tiltDirection = new PVector( direction.x/ distanceSquared, direction.y/distanceSquared);

  return tiltDirection.mult( deltaTime * gravityForce);
}

////////////////////////////////////////////////////

PVector SpringToTarget(PVector vector, PVector centerPosition, float springConstant)
{
  PVector direction = PVector.sub(centerPosition,vector);
  direction.normalize();
  PVector force = direction.mult(springConstant);

  return force;
}
