class Leaf
{
  PVector position;
  boolean reached;

  Leaf()
  {
    this.position = new PVector(random(width), random(height));
    // Replace();
    reached = false;
  }

  void Show()
  {
    fill(0,255,0);
    noStroke();

    ellipse(position.x, position.y, 5, 5);
  }
  
  void Replace()
  {
    while ( (position.x > width*0.3 && position.x < width*0.7f) && 
      (position.y > height*0.3 && position.y < height*0.7f))
    {
      this.position = new PVector(random(width), random(height));
    } 
  }
}
