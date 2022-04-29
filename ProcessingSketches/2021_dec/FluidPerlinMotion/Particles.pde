PVector zero = new PVector(0, 0);
float maxSpeed = 8;

public class Particle
{
  PVector previousPosition = zero;
  PVector currentPosition = zero;
  PVector velocity = zero;
  PVector acceleration = zero;
  color colour = color(0, 0, 0);

  Particle()
  {
    currentPosition = zero;
    velocity = zero;
    acceleration = zero;
  }

  Particle(PVector startPos, PVector startVel)
  {
    previousPosition = startPos;
    currentPosition = startPos;
    velocity = startVel;
    acceleration = zero;
  }

  void SetColor(float r, float g, float b)
  {
    colour = color(r, g, b);
  }

  void Update()
  {
    velocity = PVector.add(velocity, acceleration);
    velocity.limit(maxSpeed);

    currentPosition = PVector.add(currentPosition, velocity);
    acceleration = zero;
    Render();
    previousPosition = currentPosition;
  }

  void ApplyForce(PVector force)
  {
    acceleration = PVector.add(acceleration, force);
  }

  void Follow(PVector[] flowField)
  {
    int x = floor(currentPosition.x/spacing);
    int y = floor(currentPosition.y/spacing);
    int index = y * collumns + x;
    PVector force = flowField[index].mult(0.9f);

    ApplyForce(force);
  }

  void EdgeWarp()
  {
    if (currentPosition.x > width)
    {
      currentPosition.x = 0;
    } else if (currentPosition.x < 0)
    {
      currentPosition.x = width;
    }

    if (currentPosition.y > height)
    {
      currentPosition.y = 0;
    } else if (currentPosition.y < 0)
    {
      currentPosition.y = height;
    }
  }

  void Render()
  {
    if (PVector.sub(previousPosition, currentPosition).mag() > width/2)
    {
      return;
    }

    float r = red(colour);
    float g = green(colour);
    float b = blue(colour);
    stroke(r, g, b,235);
    strokeWeight(0.3f);

    line(previousPosition.x,previousPosition.y,currentPosition.x,currentPosition.y);
    //point(currentPosition.x, currentPosition.y);
  }
}
