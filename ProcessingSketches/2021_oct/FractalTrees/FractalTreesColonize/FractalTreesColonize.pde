Tree tree;
float maxDist = 50;
float minDist = 8;
boolean start = true;


void setup()
{
  size(600, 600);
  tree = new Tree();
}

void mousePressed()
{
  tree = new Tree();
}

void draw()
{
  if (!start)
    return;

  background(50);
  tree.Show();
  tree.Grow();
}
