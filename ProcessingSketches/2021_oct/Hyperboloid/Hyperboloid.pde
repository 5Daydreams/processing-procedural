float offset = TWO_PI*0.1;
float offsetHalf = PI;
float speed = 4.5;
float endPointMultiplier = 0.37;
float curlMultiplier = 0.5;
float colorOffset = 800;
float time = 0;


void setup()
{
  size(600, 600);
  background(30);
  strokeWeight(0.2);
}

void draw()
{
  GenerateSomething();
}

void LineFromTo(PVector start, PVector end)
{
  line(start.x, start.y, end.x, end.y);
}

void PointAt(PVector pos)
{
  point(pos.x, pos.y);
}

float sin01(float val)
{
  return (sin(val)+1)/2;
}

float cos01(float val)
{
  return (cos(val)+1)/2;
}

void GenerateSomething()
{
  translate(width/2.0, height/2.0);
  time = millis()/1000.0f;
  time *= speed;
  
  // float xStartValue = 0.3 * cos(time + offset) * width;
  // float yStartValue = 0.3 * sin(time + offset) * height;
  
  float xStartValue = (cos(-time*39) * - 0.1 + 0.3 * cos(time/10) ) * width;
  float yStartValue = (sin(-time*39) * - 0.1 + 0.3 * sin(time/10) ) * height;

  PVector startPos = new PVector(xStartValue, yStartValue);

  float xEndValue = (cos(-time*39) * 0.1 + 0.3 * cos(time/10) ) * width;
  float yEndValue = (sin(-time*39) * 0.1 + 0.3 * sin(time/10) ) * height;

  PVector endPos = new PVector(xEndValue, yEndValue);

  float R = 255 * (1+noise(time))/2 * sin01(time + colorOffset);
  float G = 255 * (1+noise(time))/2 * sin01(time - colorOffset);
  float B = 255 * (1+noise(time))/2 * sin01(time);

  stroke(R, G, B);
  
  stroke(250);

  // stroke(255 * (sin01(curlMultiplier*2*time - TWO_PI*0.3)*0.6 + 0.2));
  LineFromTo(startPos, endPos);
}

void GenerateConcentricCirclesAtDraw()
{
  translate(width/2.0, height/2.0);
  time = millis()/1000.0f;
  time *= speed;

  float xStartValue = 0.3 * cos(time + offset) * width;
  float yStartValue = 0.3 * sin(time + offset) * height;

  PVector startPos = new PVector(xStartValue, yStartValue);

  float xEndValue = (cos(-time/6) * 0.15 + 0.25 * cos(time) ) * width;
  float yEndValue = (sin(-time/6) * 0.15 + 0.25 * sin(time) ) * height;

  PVector endPos = new PVector(xEndValue, yEndValue);

  float R = 255 * (1+noise(time))/2 * sin01(time + colorOffset);
  float G = 255 * (1+noise(time))/2 * sin01(time - colorOffset);
  float B = 255 * (1+noise(time))/2 * sin01(time);

  stroke(R, G, B);

  // stroke(255 * (sin01(curlMultiplier*2*time - TWO_PI*0.3)*0.6 + 0.2));
  LineFromTo(startPos, endPos);
}

float SinWave(float amplitude, float waveSpeed, float phase)
{
  return amplitude * sin(waveSpeed * time + phase);
}

float CosWave(float amplitude, float waveSpeed, float phase)
{
  return amplitude * cos(waveSpeed * time + phase);
}

void GenerateShaolinCoinAtDraw()
{
  float time = millis()/1000.0f;
  time *= speed;

  float xEndValue = (0.5 + cos01(time + offset)/2) * width*0.45 * cos(time * endPointMultiplier) + width*0.5f;
  float yEndValue = (0.5 + sin01(time + offset)/2) * height*0.45 * sin(time * endPointMultiplier) + height*0.5f;

  PVector endPos = new PVector(xEndValue, yEndValue);

  stroke(255 * (sin01(time)/2 + 0.5));
  PointAt(endPos);
}

void GenerateCrazyStuffAtDraw()
{
  translate(width/2, height/2);
  float time = millis()/1000.0f;
  time *= speed;

  float xStartValue = (sin01(time - offset)) * width*0.45 * cos(time + offset);
  float yStartValue = (cos01(time - offset)) * height*0.45 * sin(time + offset);

  PVector startPos = new PVector(xStartValue, yStartValue);

  float xEndValue = (sin01(time + offset)) * width*0.45 * cos(time * endPointMultiplier);
  float yEndValue = (cos01(time + offset)) * height*0.45 * sin(time * endPointMultiplier);

  PVector endPos = new PVector(xEndValue, yEndValue);

  stroke(255 * (sin01(time)*0.4 + 0.6f));
  LineFromTo(startPos, endPos);
}
