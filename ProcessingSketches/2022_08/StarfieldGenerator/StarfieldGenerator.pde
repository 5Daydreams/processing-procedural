

class star
{
  PVector position;
  PImage starTexture;
}

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

void setup()
{
  size(512, 512, P2D);

  PImage singleStar = loadImage("starTexBase.png");


  for (int i = 0; i < 10; i++)
  {
    push();

    float scaleSize = random(0.2f, 0.5f);

    scale(scaleSize);

    float x = random(0, 1) * 512;
    float y = random(0, 1) * 512;
    tint(255, scaleSize*255);

    image(singleStar, x, y);
    pop();
  }
}
