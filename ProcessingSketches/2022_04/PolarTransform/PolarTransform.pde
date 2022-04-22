PImage uvMango;

void setup()
{
  size(512, 512);
  colorMode(RGB, 1.0);
  background(0.1f);

  DrawCircleSDF();
}

void draw()
{
  print(floor(frameRate) + "\n");
}

void keyPressed()
{
  if (keyCode == 'S') {
    save("testMango.png");
  }
}

void DrawCircleSDF()
{
  loadPixels();

  PVector circleCentre = new PVector(0.5f, 0.5f);

  for (int j = 0; j < height; j++)
  {
    for (int i = 0; i < width; i++)
    {
      // edge-case correction here - the 1.0f value will be incorrectly floored when passing through the uv's frac method
      uvVector uv = new uvVector(i * (1.0f/width), 1.0-(j+1) * (1.0f/height));
      float circleMask = uv.getCircleSDF(circleCentre, 1.0f);
      
      circleMask = circleMask * circleMask * circleMask * circleMask * circleMask;
      circleMask = clamp01(circleMask);

      pixels[j*width + i] = color(circleMask);
    }
  }

  updatePixels();
}

void DrawBasicMango()
{
  loadPixels();

  for (int j = 0; j < height; j++)
  {
    for (int i = 0; i < width; i++)
    {
      // edge-case correction here - the 1.0f value will be incorrectly floored when passing through the uv's frac method
      uvVector uv = new uvVector(i * (1.0f/width), 1.0-(j+1) * (1.0f/height));

      pixels[j*width + i] = ColorFromVec01(uv);
    }
  }

  updatePixels();
}

void DrawCircleMango()
{
  loadPixels();

  for (int j = 0; j < height; j++)
  {
    for (int i = 0; i < width; i++)
    {
      uvVector uv = new uvVector(i * (1.0f/(width-1)), j * (1.0f/(height-1)));
      uv.TransformToPolar();

      pixels[j*width + i] = ColorFromVec01(uv);
    }
  }

  updatePixels();
}

void DrawMangoFromTex()
{
  uvMango = loadImage("uvMango.png");
  image(uvMango, width*0.25f, height*0.25f, width*0.5f, height*0.5f);
}
