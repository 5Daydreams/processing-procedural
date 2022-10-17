

class Jellyfish implements Updateable
{

  Transform_2D headNode;
  Transform_2D leftArm;
  Transform_2D rightArm;
  Transform_2D[] legs;
  
  void Draw()
  {
     drawTransform(headNode);
     drawTransform(leftArm);
     drawTransform(rightArm);
     
     for (int i = 0; i < legs.length; i++)
     {
       drawTransform(legs[i]);
     }
     
     drawTransform(headNode);
     
  }
  
  void drawTransform(Transform_2D transform)
  {
     circle(transform.position.x,transform.position.y,transform.pointSize); 
  }
  
  void Update()
  {
    
  }
  
}
