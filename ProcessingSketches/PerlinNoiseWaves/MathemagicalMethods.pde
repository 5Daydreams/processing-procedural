// Expanding Mathemagics

float frac(float value)
{
  return value % 1.0f;
}

PVector sin(PVector vector)
{
  vector.x = sin(vector.x);
  vector.y = sin(vector.y);
  vector.z = sin(vector.z);
  return vector;
}

PVector frac(PVector vector)
{
  vector.x = frac(vector.x);
  vector.y = frac(vector.y);
  vector.z = frac(vector.z);
  return vector;
}

PVector floor(PVector vector)
{
  vector.x = 1.0f * floor(vector.x);
  vector.y = 1.0f * floor(vector.y);
  vector.z = 1.0f * floor(vector.z);
  return vector;
}
