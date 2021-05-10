// Expanding Mathemagics

class float3 
{
  float3(float t, float s, float v)
  {
    x=t;
    y=s;
    z=v;
  }

  float x;
  float y;
  float z;
}

class float2
{
  float2(float t, float s)
  {
    x=t;
    y=s;
  }
  
  float2 Normalize()
  {
    float size = Size(this);
    x /= size;
    y /= size;
    
    return this;
  }

  float x;
  float y;
}

class int2
{
  int2(int a, int b)
  { 
    x = a;
    y = b;
  }
  int x;
  int y;
}


float dot(float3 a, float3 b)
{
  return (a.x * b.x) + (a.y * b.y) + (a.z * b.z);
}

float2 UseSecondVectorAsOrigin(float2 B, float2 A)
{
  return new float2(B.x - A.x, B.y - A.y);
}

int2 UseSecondVectorAsOrigin(int2 B, int2 A)
{
  return new int2(B.x - A.x, B.y - A.y);
}

int2 GetIntVectorByFloatSubtraction(float2 B, float2 A)
{
  return new int2(int (B.x - A.x), int (B.y - A.y) );
}

float2 GetFloatVectorByIntSubtraction(int2 B, int2 A)
{
    return new float2(B.x - A.x, B.y - A.y);
}

float2 Add(float2 a, float2 b)
{
  return new float2(a.x + b.x, a.y + b.y);
}

int2 Add(int2 a, int2 b)
{
  return new int2(a.x + b.x, a.y + b.y);
}


float2 Scale(float2 vector, float value)
{
  return new float2 (vector.x*value, vector.y * value);
}

int2 Scale(int2 vector, int value)
{
  return new int2 (vector.x*value, vector.y * value);
}

float Size(float2 vector)
{
  return sqrt(vector.x * vector.x + vector.y * vector.y);
}

float dot(float2 a, float2 b)
{
  return (a.x * b.x) + (a.y * b.y);
}

float frac(float value)
{
  return value%1;
}

float2 sin(float2 vector)
{
  vector.x = sin(vector.x);
  vector.y = sin(vector.y);

  return vector;
}

float3 sin(float3 vector)
{
  vector.x = sin(vector.x);
  vector.y = sin(vector.y);
  vector.z = sin(vector.z);
  return vector;
}


//to 1d functions

//get a scalar random value from a 3d value
float rand3dTo1d(float3 value) {
  float3 dotDir = new float3(12.9898, 78.233, 37.719);
  //make value smaller to avoid artefacts
  float3 smallValue = sin(value);
  //get scalar value from 3d vector
  float random = dot(smallValue, dotDir);
  //make value more random by making it bigger and then taking the factional part
  random = frac(sin(random) * 143758.5453);
  return random;
}

float rand2dTo1d(float2 value) {
  float2 dotDir = new float2(12.9898, 78.233);
  float2 smallValue = sin(value);
  float random = dot(smallValue, dotDir);
  random = frac(sin(random) * 143758.5453);
  return random;
}

float rand1dTo1d(float value) {
  float mutator = 0.546;
  float random = frac(sin(value + mutator) * 143758.5453);
  return random;
}

//to 2d functions

float2 rand3dTo2d(float3 value) {
  return new float2(
    rand3dTo1d(value), 
    rand3dTo1d(value)
    );
}

float2 rand2dTo2d(float2 value) {
  return new float2(
    rand2dTo1d(value), 
    rand2dTo1d(value)
    );
}

float2 rand1dTo2d(float value) {
  return new float2(
    rand2dTo1d(new float2(value, 3.9812)), 
    rand2dTo1d(new float2(value, 7.1536))
    );
}

//to 3d functions

float3 rand3dTo3d(float3 value) {
  return new float3(
    rand3dTo1d(value), 
    rand3dTo1d(value), 
    rand3dTo1d(value)
    );
}

float3 rand2dTo3d(float2 value) {
  return new float3(
    rand2dTo1d(value), 
    rand2dTo1d(value), 
    rand2dTo1d(value)
    );
}

float3 rand1dTo3d(float value) {
  return new float3(
    rand1dTo1d(value), 
    rand1dTo1d(value), 
    rand1dTo1d(value)
    );
}

float easeIn(float interpolator) {
  return interpolator * interpolator * interpolator * interpolator * interpolator;
}

float easeOut(float interpolator) {
  return 1 - easeIn(1 - interpolator);
}

float easeInOut(float interpolator) {
  float easeInValue = easeIn(interpolator);
  float easeOutValue = easeOut(interpolator);
  return lerp(easeInValue, easeOutValue, interpolator);
}

float gradientNoise(float value) {
  float fraction = frac(value);
  float interpolator = easeInOut(fraction);

  float previousCellInclination = rand1dTo1d(floor(value)) * 2 - 1;
  float previousCellLinePoint = previousCellInclination * fraction;

  float nextCellInclination = rand1dTo1d(ceil(value)) * 2 - 1;
  float nextCellLinePoint = nextCellInclination * (fraction - 1);

  return lerp(previousCellLinePoint, nextCellLinePoint, interpolator);
}
