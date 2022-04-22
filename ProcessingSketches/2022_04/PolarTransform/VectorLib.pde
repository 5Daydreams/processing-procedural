PVector TransformUvToPolar(PVector cartesian)
{
  cartesian.sub(0.5f, 0.5f);
  cartesian.mult(2.0f);
  float distance = cartesian.mag();
  float angle = atan2(cartesian.y, cartesian.x) + PI;
  return new PVector(angle/TWO_PI, distance);
}

class uvVector
{
  private float u;
  private float v;
  private PVector self;
  boolean isPolar = false;

  uvVector(float newX, float newY)
  {
    u = newX;
    v = newY;

    self = new PVector(u, v);
  }

  float x()
  {
    return u - floor(u);
  }

  float y()
  {
    return v - floor(v);
  }

  void TransformToPolar()
  {
    u -= 0.5f;
    v -= 0.5f;

    u *= 2.0f;
    v *= 2.0f;

    float radius = new PVector(u, v).mag();
    float angle = (atan2(v, u) + PI) / TWO_PI;

    u = radius;
    v = angle;
  }

  float getCircleSDF(PVector centerPos, float radius)
  {
    float relativeDistance = PVector.sub(self, centerPos).mag() * (2.0f/radius);
    return relativeDistance; // Colors are converted to 255 space in processing
  }
}
