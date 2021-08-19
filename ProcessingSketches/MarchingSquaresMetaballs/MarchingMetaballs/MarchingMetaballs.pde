int PX_SIZE = 5;
int SUM_THRESHOLD = 3;
int NUM_CIRCLES = 25;

Circle[] circles ;
Circle mything;

void setup()
{
  size(600, 600);

  circles = new Circle[NUM_CIRCLES];

  mything = new Circle();
  
  print(mything.x);

  for (var i = 0; i < NUM_CIRCLES; i++)
  {
    circles[i] = new Circle();
    
    circles[i].x = random(0, width);
    circles[i].y = random(0, height);
    circles[i].r = random(40, 80);
    circles[i].vx = random(-5, 5);
    circles[i].vy = random(-5, 5);
    circles[i].red = random(50, 255);
    circles[i].green = random(50, 255);
    circles[i].blue = random(50, 255);
  }
}

public class Circle
{

  Circle()
  {
    x=0;
    y=0;
    r=0;
    vx=0;
    vy=0;
    red=0;
    green=0;
    blue=0;
  }

  float x=0;
  float y=0;
  float r=0;
  float vx=0;
  float vy=0;
  float red=0;
  float green=0;
  float blue=0;
}


void draw()
{
  background(0, 0, 0);
  for (var i = 0; i < circles.length; i++)
  {
    var c = circles[i];

    c.x += c.vx;
    c.y += c.vy;

    if (c.x - c.r < 0) {
      c.vx = +abs(c.vx);
    }
    if (c.x + c.r > width) {
      c.vx = -abs(c.vx);
    }
    if (c.y - c.r < 0) {
      c.vy = +abs(c.vy);
    }
    if (c.y + c.r > height) {
      c.vy = -abs(c.vy);
    }
  }

  for (var x = 0; x < width; x += PX_SIZE) {
    for (var y = 0; y < width; y += PX_SIZE) {
      var sum = 0;
      float closestD2 = 99999999999999999.f;
      PVector closestColor = new PVector();
      for (var i = 0; i < circles.length; i++) {
        var c = circles[i];
        var dx = x - c.x;
        var dy = y - c.y;
        var d2 = dx * dx + dy * dy;
        sum += c.r * c.r / d2;

        if (d2 < closestD2) {
          closestD2 = d2;
          closestColor = new PVector(c.red, c.green, c.blue);
        }
      }
      if (sum > SUM_THRESHOLD) {
        noStroke();
        fill(closestColor.x, closestColor.y, closestColor.z);
        rect(x, y, PX_SIZE, PX_SIZE);
      }
    }
  }
}
