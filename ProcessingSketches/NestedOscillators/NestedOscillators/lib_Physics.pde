long time = 0;
float deltaTime;
float gravityForce = 17;

class PointParticle
{
  PVector position = new PVector(0, 0);
  PVector velocity = new PVector(0, 0);
  PVector acceleration  = new PVector(0, 0);
  float mass = 1.0f;

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

PVector SpringToTarget(PVector vector, PVector centerPosition, float springConstant)
{
  PVector direction = PVector.sub(centerPosition, vector);
  direction.normalize();
  PVector force = direction.mult(springConstant);

  return force;
}
