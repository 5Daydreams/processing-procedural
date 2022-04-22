float clamp01(float value)
{
  if (value < 0)
  {
    return 0;
  } 
  else if (value > 1)
  {
    return 1;
  } 
  else
  {
    return value;
  }
}
