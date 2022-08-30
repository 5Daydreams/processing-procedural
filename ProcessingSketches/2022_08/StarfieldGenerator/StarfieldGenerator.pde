


float getStarValue(float x, float y)
{
  // Desmos reference: https://www.desmos.com/calculator/o5hmsufmmc

  float r = 0.47f;
  float k = 0.48f;
  float A = 0.19f;


  float yVal = (r*r)/(k*k + (y*y)/A);
  float xVal = (r*r)/(k*k + (x*x)/A);

  float sum = xVal + yVal;

  if (sum >= 1.0f)
  {
    return 1.0f;
  }

  return 0.0f;
}

void drawStar()
{

  // third argument must match the render type used in size()
  PGraphics pic = createGraphics(512, 512, P2D, "starTex");

  pic.beginDraw();

  pic.loadPixels();

  for (int j = 0; j < 512; j++)
  {
    for (int i = 0; i < 512; i++)
    {
      float x = (i - 256) * 1.0f/512.0f;
      float y = (j - 256) * 1.0f/512.0f;

      int colVal = int(255 * getStarValue(x*2, y*2));

      pic.pixels[i + j * 512] = color(colVal, colVal, colVal, colVal);
    }
  }

  pic.updatePixels();

  pic.save("starTex.png");

  pic.endDraw();

  image(pic, 0, 0);
}

void DrawTiled(PImage starTexture, float x, float y, float bwValue, float alpha, float scaleSize)
{
  push();

  translate(x, y);

  push();
  scale(scaleSize);
  tint(255 * bwValue, alpha*255);
  image(starTexture, 0, 0);
  pop();

  push();
  translate(width, 0);
  scale(scaleSize);
  tint(255 * bwValue, alpha*255);
  image(starTexture, 0, 0);
  pop();

  push();
  translate(  -width, 0);
  scale(scaleSize);
  tint(255 * bwValue, alpha*255);
  image(starTexture, 0, 0);
  pop();

  push();
  translate(0, height);
  scale(scaleSize);
  tint(255 * bwValue, alpha*255);
  image(starTexture, 0, 0);
  pop();

  push();
  translate(0, -height);
  scale(scaleSize);
  tint(255 * bwValue, alpha*255);
  image(starTexture, 0, 0);
  pop();

  pop();
}

void setup()
{
  size(512, 512, P2D);

  background(0);

  PImage starTexture = loadImage("starTexBase.png");

  imageMode(CENTER);

  float timeElapsed = millis()/1000.0f;

  float startTime = timeElapsed;

  // Darkest Layer (maybe R channel)
  for (int i = 0; i < 600; i++)
  {
    float x = random(0, 512) * 1.0f;
    float y = random(0, 512) * 1.0f;
    float bw = random(0.01f, 0.1f);
    float alpha = random(0.8f, 0.9f);
    float size = random(0.05f, 0.15f);

    DrawTiled(starTexture, x, y, bw, alpha, size);

    timeElapsed = millis()/1000.0f;
    print(timeElapsed + "\n");
  }

  // Medium Layer (maybe G channel)
  for (int i = 0; i < 150; i++)
  {
    float x = random(0, 512) * 1.0f;
    float y = random(0, 512) * 1.0f;
    float bw = random(0.1f, 0.4f);
    float alpha = random(0.4f, 0.7f);
    float size = random(0.15f, 0.35f);

    DrawTiled(starTexture, x, y, bw, alpha, size);

    timeElapsed = millis()/1000.0f;
    print(timeElapsed + "\n");
  }

  // Brightest Layer (maybe B channel)
  for (int i = 0; i < 80; i++)
  {
    float x = random(0, 512) * 1.0f;
    float y = random(0, 512) * 1.0f;
    float bw = random(0.7f, 0.9f);
    float alpha = random(0.8f, 0.9f);
    float size = random(0.05f, 0.15f);

    DrawTiled(starTexture, x, y, bw, alpha, size);

    timeElapsed = millis()/1000.0f;
    print(timeElapsed + "\n");
  }

  print("Started at: " + startTime + "\n");
  print("Finished at:" + timeElapsed);
}

void draw() { 
  // keep draw() here to continue looping while waiting for keys
}

void keyPressed()
{
  if (key == 'S')
  {
    save("starfieldTex.png");
    print("Texture saved!");
  }
}
