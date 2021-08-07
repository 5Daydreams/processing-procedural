int iterationNumber = 35;
int paralelNumber = 7;
float displacementParalel = 150;

void setup()
{
  background(20);
  size(600, 600);
  rectMode(CENTER);

  for (int j = 0; j < paralelNumber; j++)
  {
    push();
    translate(0, 450-j*displacementParalel);

    for (int i = 0; i< iterationNumber; i++)
    {
      float value = noise(millis()/5.0f); 

      float newVal = (i+1)*value;
      fill(255*value);
      translate(newVal*value * width/80.0f, newVal*value * width/80.0f);
      push();
      translate(+40.0f*value, -40.0f*value);
      rotate(millis()/5.0f);
      rect(0, 0, 10+newVal*value *width/150.0f, 10+newVal*value *height/150.0f);
      pop();
      delay(2);
    }

    pop();
  }
}

void draw()
{
}
