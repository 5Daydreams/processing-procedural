class Tree
{
  ArrayList<Leaf> leaves;
  ArrayList<Branch> branches;
  int leafNumber;
  Branch root;

  Tree()
  {
    leaves = new ArrayList<Leaf>();
    branches  = new ArrayList<Branch>();

    leafNumber = 50;

    for (int i=0; i< leafNumber; i++)
    {
      this.leaves.add(new Leaf());
    }

    PVector startingPos = new PVector(width/2, height);
    PVector direction = new PVector(0, -1);
    
    root = new Branch(null, startingPos, direction);

    branches.add(root);

    Branch currentBranch = root;

    boolean found = false;

    while (!found)
    {      
      for (int i=leaves.size() -1; i >= 0; i--)
      {
        float distance = PVector.dist(currentBranch.position, leaves.get(i).position);
        if (distance < maxDist)
        {
          found = true;
        }
      }

      if (!found)
      {
        Branch NextBranch = currentBranch.Next();
        currentBranch = NextBranch;
        this.branches.add(currentBranch);
      }
    }
  }

  void Show()
  {
    for (int i=0; i < this.leaves.size(); i ++)
    {
      this.leaves.get(i).Show();
    }

    for (int i = 0; i < this.branches.size(); i++)
    {
      this.branches.get(i).Show();
    }
  }
}
