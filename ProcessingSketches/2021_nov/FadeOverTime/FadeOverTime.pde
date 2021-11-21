// Time variables
float currentTime = 0.0f;
float lastTime = 0.0f;
float deltaTime = 0.0f;

// Line iteration
float lineCooldown = 0.01f;
float lineCooldownTracker = 0.0f;

// Sketch boundarySize
float borderOffset = 100.0f;
PVector minBorderOffset = new PVector();
PVector maxBorderOffset = new PVector();

// Bezier Brownian motion
float bezierPositionOffset = 20.0f;
float bezierControlOffset = 450.0f;

// Bezier pair
BezierVertex bezierA = new BezierVertex();
BezierVertex bezierB = new BezierVertex();

// Fade controls
float baseFadeSpeed = 1.0f;
float minFade = 6.0f;
float fadeCooldown = 0.05f;
float fadeCooldownTracker = 0.0f;

// colors
color selectedColor;
color pink = color(240, 20, 255, 255);
color cyan = color(36, 255, 242, 255);
color white = color(220, 220, 220, 255);

void setup()
{
  // colorMode(RGB, 1.0, 1.0, 1.0);
  size(800, 800);
  background(20);
  strokeWeight(4.0);

  minBorderOffset = new PVector(borderOffset, borderOffset);
  maxBorderOffset = new PVector(width - borderOffset, height - borderOffset);

  bezierA.position = new PVector(width/2, height/2);
  bezierB.position = new PVector(width/2, height/2);

  println(run);
  selectedColor = pink;
  stroke(selectedColor);
}

void draw()
{
  if (!run) // see below
  {
    return;
  }

  currentTime = millis();

  deltaTime = (currentTime - lastTime);
  // println(deltaTime);

  lastTime = currentTime;

  FadeScreen(baseFadeSpeed);

  if (lineCooldownTracker > 0.0f)
  {
    lineCooldownTracker -= deltaTime/1000.0f;
  } 
  else
  {
    lineCooldownTracker = lineCooldown;

    float waveValue = (1+ sin(currentTime/1000.0f)) * 0.5;

    selectedColor = ColorLerp(pink, cyan, waveValue);

    bezierA = iterateCurve(bezierA, bezierB, selectedColor);
  }


  if (fadeCooldownTracker > 0.0f)
  {
    fadeCooldownTracker -= deltaTime/1000.0f;
  } 
  else
  {
    fadeCooldownTracker = fadeCooldown;

    FadeScreen(minFade);
  }
}


BezierVertex iterateCurve(BezierVertex bezA, BezierVertex bezB, color curveColor)
{
  bezB.position = new PVector(bezB.position.x + random(-bezierPositionOffset, + bezierPositionOffset), bezB.position.y + random(-bezierPositionOffset, + bezierPositionOffset));
  bezB.position = ClampVector(bezB.position, minBorderOffset, maxBorderOffset);
  bezB.controlPoint = new PVector(bezB.position.x  + random(- bezierControlOffset, + bezierControlOffset), bezB.position.y + random( - bezierControlOffset, + bezierControlOffset));

  stroke(curveColor);
  noFill();
  bezier(bezA.position, bezB.position, bezA.controlPoint, bezB.controlPoint);

  bezA.position = new PVector(bezB.position.x, bezB.position.y);
  bezA.controlPoint = new PVector(2*bezA.position.x - bezB.controlPoint.x, 2*bezA.position.y - bezB.controlPoint.y);

  return bezA;
}

color ColorLerp(color color1, color color2, float lerpValue)
{
  float red = lerp(red(color1), red(color2), lerpValue);
  float green = lerp(green(color1), green(color2), lerpValue);
  float blue = lerp(blue(color1), blue(color2), lerpValue);
  return color (red, green, blue);
}


////////////////////////////////////////////////  Other Methods  ////////////////////////////////////////////////////////////////////


boolean run = true;

void mousePressed()
{
  run = !run;
  println(run);
}


void bezier(PVector a, PVector b, PVector controlA, PVector controlB)
{
  bezier(a.x, a.y, controlA.x, controlA.y, controlB.x, controlB.y, b.x, b.y);
}

void line(PVector A, PVector B)
{
  line(A.x, A.y, B.x, B.y);
}

void FadeScreen(float alphaValue)
{
  noStroke();
  fill(0, alphaValue);
  rect(0, 0, width, height);
}

PVector ClampVector(PVector vec, PVector min, PVector max)
{
  vec.x = constrain(vec.x, min.x, max.x);
  vec.y = constrain(vec.y, min.y, max.y);
  vec.z = constrain(vec.z, min.z, max.z);

  return vec;
}

class BezierVertex
{
  PVector position;
  PVector controlPoint;

  BezierVertex()
  {
    this.position = new PVector(random(borderOffset, width - borderOffset), random(borderOffset, height - borderOffset));
    this.controlPoint = new PVector(random(2*borderOffset, width - 2*borderOffset), random(2*borderOffset, height - 2*borderOffset));
  }

  BezierVertex(PVector pos, PVector control)
  {
    position = pos;
    controlPoint = control;
  }
}
