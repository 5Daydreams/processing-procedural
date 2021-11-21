// Random
import java.util.Random;
Random generator;

float maxH = 0;

void setup()
{
  size(400, 400);
  generator = new Random();
  background(255);
}

void draw()
{
  float h = (float) generator.nextGaussian();
  h = randomGaussian();

  h *= 50;
  h += 50;

  fill (0, 255);
  ellipse(width*0.5, height*0.5f, h, h);

  if (h > maxH)
  {
    maxH = h;

    fill(255, 0, 0, 255);
    ellipse(width*0.5, height*0.5f, maxH, maxH);
    println(maxH);
  }

  fill(255, 5);
  noStroke();
  rect(0, 0, width, height);
}
