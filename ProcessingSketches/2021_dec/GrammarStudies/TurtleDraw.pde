JSONArray rulesTurtle = new JSONArray();

PVector startingPosition;
PVector direction = new PVector(100, 0);
PVector zero = new PVector(0, 0);

void GenerateTurtle()
{
  direction = new PVector(width*sqrt(2)/3, 0);
  startingPosition = new PVector(width/3, height/3);
  push();
  translate(startingPosition.x, startingPosition.y);

  // rect(0,0,width*0.5f,width*0.5f);

  println("Starting with: " + sentence);

  Turtle(sentence);
  pop();
}

void Turtle(String target)
{
  for (int i = 0; i < target.length(); i++)
  {
    String currentChar = target.substring(i, i+1);

    if (currentChar.equals("F"))
    {
      line(zero, direction);
      translate(direction.x, direction.y);
    } else if (currentChar.equals("<"))
    {
      rotate(-radians(45));
    } else if (currentChar.equals(">"))
    {
      rotate(radians(45));
    } else if (currentChar.equals("z"))
    {
      direction.mult(1.0f/sqrt(2));
    }
  }
}

void line(PVector start, PVector finish)
{
  line(start.x, start.y, finish.x, finish.y);
}
