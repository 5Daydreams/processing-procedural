



class Transform_2D implements Updateable
{
  Transform_2D parent;
  
  PVector position;
  PVector velocity;
  float pointSize;

  void Update()
  {
    PVector newPos = position.add(velocity.mult(deltaTime));
    position = newPos;
  }
}
