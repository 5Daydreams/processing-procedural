// Expanding Mathemagics

float frac(float value)
{
  return value % 1.0f;
}

PVector sin(PVector vector)
{
  PVector temp = new PVector();
  temp.x = sin(vector.x);
  temp.y = sin(vector.y);
  temp.z = sin(vector.z);
  return temp;
}

PVector frac(PVector vector)
{
  PVector temp = new PVector();
  temp.x = frac(vector.x);
  temp.y = frac(vector.y);
  temp.z = frac(vector.z);
  return temp;
}

PVector floor(PVector vector)
{
  PVector temp = new PVector();
  temp.x = floor(vector.x);
  temp.y = floor(vector.y);
  temp.z = floor(vector.z);
  return temp;
}
