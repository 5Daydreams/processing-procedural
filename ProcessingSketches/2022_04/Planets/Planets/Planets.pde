PVector mainPlanetPos;

Planet mainPlanet;
Planet[] planets;

int planetCount = 1500;

////////////////////

PVector centerPos;

float backgroundFade = 0.05f;

float deltaTime;
float lastTime;

//////////////////////

color colorFromVec3(PVector colorVector)
{
  return color(colorVector.x, colorVector.y, colorVector.z);
}

color randomColor()
{
  float r = random(0.1, 0.3);
  float g = random(0, 0);
  float b = 2*r + random(0.0, 0.2);

  return color (r, g, b);

  //return colorFromVec3(PVectorAbs(PVector.random3D().mult(random(0.4,1))));
}

/////////////////////////

PVector PVectorAbs(PVector vector)
{
  vector.x = abs(vector.x);
  vector.y = abs(vector.y);
  vector.z = abs(vector.z);
  return vector;
}

PVector getRandomPos()
{
  float x = random(0, width);
  float y = random(0, height);

  return new PVector(x, y);
}

////////////////////////////

void setup()
{
  size(512, 512);
  colorMode(RGB, 1.0f);
  noStroke();

  background(backgroundFade);
  centerPos = new PVector(width/2, height/2);

  mainPlanet = new Planet(getRandomPos(), PVector.random2D(), 0.05f, randomColor());
  mainPlanet.planetVel.mult(150.0f);
  mainPlanetPos = mainPlanet.planetPos;

  planets = new Planet[planetCount];

  for (int i = 0; i < planetCount; i++)
  {
    float mass = random(0.35, 1);
    mass *= random(0.35, 1);
    planets[i] = new Planet(getRandomPos(), PVector.random2D(), mass * 5, randomColor());
    planets[i].planetVel.mult(random(50, 100));
  }

  lastTime =0.0f;
}

///////////////////////////

void draw()
{
  float currentTime = millis()/1000.0f;
  deltaTime = currentTime - lastTime;

  mainPlanet.update();
  mainPlanet.drawPlanet();

  for (int i = 0; i < planetCount; i++)
  {
    planets[i].update();
    planets[i].drawPlanet();
  }

  print(floor(frameRate) + "\n");

  lastTime = currentTime;
  fill(backgroundFade, 0.1f);
  rect(0, 0, width, height);
}
