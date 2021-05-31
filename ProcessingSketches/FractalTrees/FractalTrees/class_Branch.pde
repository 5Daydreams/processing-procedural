class Branch
{
  PVector position = new PVector();
  PVector direction = new PVector();
  PVector origDir = new PVector();
  Branch parent;
  float len;
  int count;

  Branch(Branch branch, PVector v, PVector dir)
  {
    parent = branch;
    position = v;
    direction = dir;
    origDir = dir;
    count = 0;
    len = 6;
  }
  
  void Reset()
  {
    direction = origDir.copy();
    count = 0;
  }

  Branch Next()
  {
    PVector nextDir = PVector.mult(this.direction, this.len);
    PVector nextPos = PVector.add(this.position, nextDir);
    Branch newBranch = new Branch(this, nextPos, direction.copy()); 
    return newBranch;
  }

  void Show()
  {
    if (parent !=null)
    {
      strokeWeight(1.0f);
      stroke(200,128,30);
      line(this.position.x, this.position.y, this.parent.position.x, this.parent.position.y);
    }
  }
}
