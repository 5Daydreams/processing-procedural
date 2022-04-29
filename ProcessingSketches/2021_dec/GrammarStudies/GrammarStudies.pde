String axiom = ">F";

String sentence;

void setup()
{
  size(800, 800);
  background(50);

  stroke(250);
  sentence = axiom;

  int iterationCount = 15;

  while (iterationCount > 0)
  {
    sentence = IterateDragon(sentence);
    iterationCount--;
  }
  
  
  GenerateDragon();
}
