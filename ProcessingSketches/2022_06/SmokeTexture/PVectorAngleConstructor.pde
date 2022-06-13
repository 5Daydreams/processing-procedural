

PVector AngleVector(float angle, float length)
{
   PVector v = new PVector(length,0);
   v.rotate(angle * PI / 180.0f);
   return v;
}
