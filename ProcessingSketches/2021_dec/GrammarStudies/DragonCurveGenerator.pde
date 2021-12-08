
String IterateDragon(String target)
{
  String newSentence = "z";
  int iterationCounter = 0;

  for (int i = 0; i < target.length(); i++)
  {
    String currentChar = target.substring(i, i+1);

    if (currentChar.equals("F"))
    {
      if (iterationCounter%4 == 0)
      {
        newSentence += ">F<<F";
        // z>F<<F
        // z>z>F<<F<<z>F<<F
      } 
      else if (iterationCounter%4 == 1)
      {
        newSentence += "F>>F";
        // z<F>>F
      } 
      else if (iterationCounter%4 == 2)
      {
        newSentence += "F<<F";
      } 
      else if (iterationCounter%4 == 3)
      {
        newSentence += "F>>F<";
      }
      iterationCounter++;
    } 
    else
    {
      newSentence += currentChar;
    }
  }

  println(newSentence);

  return newSentence;
}

void GenerateDragon()
{
  direction = new PVector(width*sqrt(2)/3, 0);
  startingPosition = new PVector(width/3, height/3);
  push();
  translate(startingPosition.x, startingPosition.y);

  Dragon(sentence);
  pop();
}

void Dragon(String target)
{
  float stepPercentage = 1.0f/target.length();
  
  for (int i = 0; i < target.length(); i++)
  {
    String currentChar = target.substring(i, i+1);

    if (currentChar.equals("F"))
    {
      float increment = i;
      stroke(80 + stepPercentage * increment * 150);
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
