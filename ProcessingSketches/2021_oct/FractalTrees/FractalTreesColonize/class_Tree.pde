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

    leafNumber = 500;

    for (int i=0; i< leafNumber; i++)
    {
      this.leaves.add(new Leaf());
    }

    PVector startingPos = new PVector(width/3, height);
    PVector direction = new PVector(random(-1,1), random(-1,1));

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

  void Grow()
  {
    for (int i = 0; i < this.leaves.size(); i ++)
    {
      Leaf leaf = this.leaves.get(i);

      Branch closestBranch = null;
      float record = 10000;

      for (int j = 0; j < this.branches.size(); j++)
      {
        Branch branch = this.branches.get(j);
        float distance = PVector.dist(leaf.position, branch.position);

        if (distance < minDist)
        {
          leaf.reached = true;
          closestBranch = null;
          break;
        } else if (distance > maxDist)
        {
        } else if (closestBranch == null || distance < record)
        {
          closestBranch = branch;
          record = distance;
        }
      }

      if (closestBranch != null)
      {
        PVector newDir = PVector.sub(leaf.position, closestBranch.position);
        newDir.normalize();
        closestBranch.direction.add(newDir);
        closestBranch.count++;
      }
    }

    for (int i = this.leaves.size()-1; i >= 0; i--)
    {
      if (leaves.get(i).reached)
      {
        leaves.remove(i);
      }
    }
    
    for(int i = this.branches.size()-1; i >= 0; i--)
    {
      Branch branch = this.branches.get(i);
      
      if(branch.count > 0 )
      {
        branch.direction.div(branch.count + 1);
        this.branches.add(branch.Next());
      }
      branch.Reset();
      
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
