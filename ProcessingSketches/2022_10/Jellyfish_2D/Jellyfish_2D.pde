float deltaTime;
float time;
float lastTime;

void setup()
{
  deltaTime = 0;
  lastTime = 0;
  time = 0;
}

void TimeTick()
{
  lastTime = time;
  deltaTime = time - lastTime;
  
  time = millis()/1000.0f;  
}

void draw()
{
  
}
