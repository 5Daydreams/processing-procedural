ArrayList<OldBranch> treeOld = new ArrayList<OldBranch>();

float startingHeightOld = 100;
float angleOld = PI/8;
float sizeReductionOld = 0.67f;

void OldMousePressed()
{
  for (int i = treeOld.size() -1; i >= 0; i--)
  {
    if (!treeOld.get(i).sprouted)
    {
      treeOld.add(treeOld.get(i).Reiterate(sizeReductionOld, angleOld));
      treeOld.add(treeOld.get(i).Reiterate(sizeReductionOld, -angleOld));
    }
  }
}

void OldDraw()
{
  background(20);
  for (int i = 0; i < treeOld.size(); i++)
  {
    treeOld.get(i).DrawBranch();
    treeOld.get(i).Sway();
  }
}

void OldSetup()
{
  size(400, 400);
  background(20);
  stroke(255);

  PVector _bottomMiddle = new PVector(width/2, height, 0);
  PVector _trunkTop = new PVector(width/2, height-startingHeightOld, 0);
  OldBranch trunk = new OldBranch(_bottomMiddle, _trunkTop);

  treeOld.add(trunk);
}
