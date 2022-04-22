color ColorFromVec01(PVector colorVector)
{
  return color(colorVector.x, colorVector.y, colorVector.z);
}

color ColorFromVec01(uvVector uv)
{
  return color(uv.x(), uv.y(), 0.0f );
}
