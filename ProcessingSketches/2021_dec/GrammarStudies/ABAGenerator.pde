int maxIterations = 5;
JSONArray rulesABA = new JSONArray();

void GenerateABA()
{
  SetupRulesABA();

  sentence = axiom;

  println("Starting with: " + sentence);

  int iterationNumber = 0;

  while (iterationNumber < maxIterations)
  {
    print("Iteration " + (iterationNumber + 1) + ": ");
    sentence = GenerateFromTarget(sentence);
    iterationNumber++;
  } 
}


String GenerateFromTarget(String target)
{
  String nextSentence = "";

  for (int i = 0; i < target.length(); i++)
  {
    String currentChar = target.substring(i, i+1);

    boolean foundRule = false;
    for (int j = 0; j < rulesABA.size(); j++)
    {
      if (currentChar.equals(rulesABA.getJSONObject(j).getString("a")))
      {
        nextSentence += (rulesABA.getJSONObject(j).getString("b"));
        foundRule = true;
        break;
      }
    }
    
    if (!foundRule)
    {
      nextSentence += currentChar;
    }
  }

  target = nextSentence;

  println(target);
  return nextSentence;
}

void SetupRulesABA()
{
  JSONObject rule0 = new JSONObject();

  rule0.setString("a", "A");
  rule0.setString("b", "AB");

  rulesABA.setJSONObject(0, rule0);

  JSONObject rule1 = new JSONObject();

  rule1.setString("a", "B");
  rule1.setString("b", "A");

  rulesABA.setJSONObject(1, rule1);
}
