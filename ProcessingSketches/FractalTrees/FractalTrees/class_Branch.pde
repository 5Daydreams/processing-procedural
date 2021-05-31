class Branch
{
  PVector position = new PVector();
  PVector direction = new PVector();
  Branch parent;

  Branch(Branch branch, PVector v, PVector dir)
  {
    parent = branch;
    position = v;
    direction = dir;
  }

  Branch Next()
  {
    PVector nextPos = PVector.add(this.position, this.direction);
    Branch newBranch = new Branch(this, nextPos, direction.copy()); 
    return newBranch;
  }

  void Show()
  {
    if (parent !=null)
    {
      strokeWeight(1.0f);
      stroke(255);
      line(this.position.x, this.position.y, this.parent.position.x, this.parent.position.y);
    }
  }
}
