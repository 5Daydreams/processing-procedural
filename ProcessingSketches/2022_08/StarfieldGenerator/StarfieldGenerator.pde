float timeElapsed = 0.0f;

void MakePlusSign()
{
  rectMode(CENTER);
  noStroke();
  translate(width/2, height/2);

  float diameter = 450;
  float thickness = 100;
  float inlineThickness = 20;

  fill(128);
  rect(0, 0, diameter, thickness);
  rect(0, 0, thickness, diameter);

  fill(255);
  rect(0, 0, diameter - inlineThickness, thickness - inlineThickness);
  rect(0, 0, thickness - inlineThickness, diameter - inlineThickness);
}

String texName = "ExitArrowBase.png";

void setup()
{  
  size(1024, 1024, P2D);

  MakeTiledTex(texName);
}

void draw() {
  // keep draw() here to continue looping while waiting for keys
}

void keyPressed()
{
  if (key == 'S')
  {
    String sysTime = "";
    long value = System.currentTimeMillis();
    sysTime += value;

    save("GeneratedTextures/ExitArrowTiled_" + sysTime + ".png");
    print("Texture saved!");
  } else if (key == 'R')
  {
    setup();
  }
}
