PImage uvMango;


void setup()
{
  size(512, 512);
  uvMango = loadImage("uvMango.png");

  background(30);

  DrawMango();
  image(uvMango, width*0.25f, height*0.25f, width*0.5f, height*0.5f);
}

void draw()
{
  print(floor(frameRate));
}

void keyPressed() 
{
  if (keyCode == 'S') {
    save("testMango.png");
  }
}

void DrawMango()
{
  loadPixels();

  for (int j = 0; j < height; j++)
  {
    for (int i = 0; i < width; i++)
    {
      color pixelColor = color(i * (255.0f/width), 255 - j * (255.0f/height), 0);
      pixels[j*width + i] = pixelColor;
    }
  }

  updatePixels();
}
