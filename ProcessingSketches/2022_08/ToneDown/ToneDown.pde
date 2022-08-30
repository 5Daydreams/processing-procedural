

void setup()
{
  size(900, 600);
  pixelDensity(1);

  PImage img;
  img = loadImage("NoMansSky.png");
  img.resize(900, 600);

  tint(230, 255);
  image(img, 0, 0);
}
