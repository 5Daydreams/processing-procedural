PGraphics texture;
String texName = "ice_surface_thres_blur.png";

int circleRadius = 3;
int textureSize = 512;


void setup()
{
  // Double check for canvas size matching texture size!!!!!!!!
  size(512, 512, P2D);

  texture = createGraphics(512, 512, P2D, texName);
  //background(0, 0, 0, 0);
  
  PImage textureTemp = loadImage(texName);
    image(textureTemp, 0, 0, width, height);

    
  texture.beginDraw();


  

  texture.loadPixels();

  for (int i = 0; i < width; i++)
  {
    for (int j = 0; j < height; j++)
    {
      MinFromCircle(i, j, circleRadius);
    }
  }

  texture.updatePixels();

  texture.endDraw();

  // image(texture, 0, 0, width, height);

  // SaveTexture();
}

void draw()
{
  // required for checking key press
}

void SaveTexture()
{
  String sysTime = "";
  long value = System.currentTimeMillis();
  sysTime += value;

  save("GeneratedTextures/Ice_" + sysTime + ".png");
  print("Texture saved!");
}

void keyPressed()
{
  if (key == 'S')
  {
    SaveTexture();
  }
}
