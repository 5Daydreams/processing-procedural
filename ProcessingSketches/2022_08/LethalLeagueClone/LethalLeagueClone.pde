float deltaTime = 0.0f;
float currTime = 0.0f;
float prevTime = 0.0f;

Ball mainBall;


boolean isRunning = false;

class Ball
{
  PVector position;
  PVector velocity;

  Ball(PVector pos, PVector vel)
  {
    position = pos;
    velocity = vel;

    updateBall();
  }

  void drawBall()
  {
    point(position.x, position.y);
  }

  void updateBall()
  {
    drawBall();
    position.add(velocity);
  }
}

void mousePressed()
{
   isRunning = !isRunning; 
}
  

void setup()
{
  isRunning = false;
  size(500, 500);
  background(15);

  stroke(200);
  strokeWeight(50);

  PVector startPos = new PVector(200, 200);
  PVector startVel = new PVector(1, 2);

  mainBall = new Ball(startPos, startVel);
}

void draw()
{
  if(!isRunning)
  {
    return;
  }
  
  background(15);
  currTime = millis();
  deltaTime = (currTime - prevTime) * 0.0001f;

  mainBall.updateBall();

  prevTime = currTime;

  delay(1);
}
