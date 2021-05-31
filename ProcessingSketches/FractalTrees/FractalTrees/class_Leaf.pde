class Leaf
{
  PVector position;

  Leaf()
  {
    this.position = new PVector(random(width), random(height-150));
  }

  void Show()
  {
    fill(255);
    noStroke();

    ellipse(position.x, position.y, 5, 5);
  }
}
