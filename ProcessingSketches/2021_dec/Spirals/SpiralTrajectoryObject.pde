public class SpiralTrajObject
{
  float radialMultiplier;
  float angularMultiplier;
  float spiralStepSize;

  PVector centerPosition;
  PVector velocity;

  PVector currentPosition;
  PVector previousPosition;

  SpiralTrajObject(PVector centerPos, PVector startPos, float radial, float angular, float stepSize)
  {
    centerPosition = centerPos;
    
    radialMultiplier = radial;
    angularMultiplier = angular;
    spiralStepSize = stepSize;
    
    currentPosition = startPos;
    previousPosition = new PVector(currentPosition.x,currentPosition.y);
    
    velocity = new PVector(0,0);
  }

  void UpdatePositionAndDraw()
  {
    push();
    translate(width/2, height/2);
    previousPosition = new PVector(currentPosition.x,currentPosition.y);

    PVector radialDirection = PVector.sub(currentPosition, centerPosition).normalize();
    PVector angularDirection = new PVector(); 

    // remember: Processing flips the direction of the y-axis, so the positive z-axis points inwards into the screen
    PVector.cross(new PVector(0,0,-1),radialDirection,angularDirection);
    
    radialDirection = radialDirection.mult(radialMultiplier);
    angularDirection = angularDirection.mult(angularMultiplier);
    
    velocity = PVector.add(radialDirection,angularDirection).normalize();
    velocity.mult(spiralStepSize);

    currentPosition = PVector.add(currentPosition,velocity);
     
    line(previousPosition.x,previousPosition.y,currentPosition.x,currentPosition.y);
    pop();
  }
  
  void PrintCurrentInfo()
  {
    println("Center pos: " + centerPosition);
    println("Previous pos: " + previousPosition);
    println("Velocity: " + velocity);
    println("Current pos: " + currentPosition);
  }
  
}
