// Expanding Mathemagics

float frac(float value)
{
  return value%1.0;
}

PVector sin(PVector vector)
{
  vector.x = sin(vector.x);
  vector.y = sin(vector.y);
  vector.z = sin(vector.z);
  return vector;
}
