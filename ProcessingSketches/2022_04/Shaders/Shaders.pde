PShader shader;

void setup()
{
  size(256, 256, P2D);
  colorMode(RGB, 1);
  background(0.2f);

  shader = loadShader("pixelShader.glsl");
  shader(shader);

  noStroke();
}

void draw()
{
  shader.set("time", millis()/500.0f);
  rect(0, 0, width, height);
  // print(floor(frameRate) + "\n");
}

String digitFix(int old)
{
  if (old/10 > 0)
  {
    return "" + old;
  } else
  {
    return "0" + old;
  }
}

void keyPressed()
{
  if (key == 'S'|| key == 's')
  {
    String dateTime = year() + "-";
    dateTime += digitFix(month()) + "-";
    dateTime += digitFix(day()) + "_";
    dateTime += digitFix(hour()) + "-";
    dateTime += digitFix(minute()) + "-";
    dateTime += digitFix(second());

    print("saved as: output_" + dateTime + "\n");
    //save("output_" + dateTime);
  }
}
