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


//to 1d functions

//get a scalar random value from a 3d value
float rand3dTo1d(PVector value) {
  PVector dotDir = new PVector(12.9898, 78.233, 37.719);
  //make value smaller to avoid artefacts
  PVector smallValue = sin(value);
  //get scalar value from 3d vector
  float random = smallValue.dot(dotDir);
  //make value more random by making it bigger and then taking the factional part
  random = frac(sin(random) * 143758.5453);
  return random;
}

float rand2dTo1d(PVector value) {
  PVector dotDir = new PVector(12.9898, 78.233);
  PVector smallValue = sin(value);
  float random = smallValue.dot(dotDir);
  random = frac(sin(random) * 143758.5453);
  return random;
}

float rand1dTo1d(float value) {
  float mutator = 0.546;
  float random = frac(sin((value + mutator)) * 143758.5453);
  return random;
}

//to 2d functions

PVector rand3dTo2d(PVector value) {
  return new PVector(
    rand3dTo1d(value), 
    rand3dTo1d(value)
    );
}

PVector rand2dTo2d(PVector value) {
  return new PVector(
    rand2dTo1d(value), 
    rand2dTo1d(value)
    );
}

PVector rand1dTo2d(float value) {
  return new PVector(
    rand2dTo1d(new PVector(value, 3.9812)), 
    rand2dTo1d(new PVector(value, 7.1536))
    );
}

//to 3d functions

PVector rand3dTo3d(PVector value) {
  return new PVector(
    rand3dTo1d(value), 
    rand3dTo1d(value), 
    rand3dTo1d(value)
    );
}

PVector rand2dTo3d(PVector value) {
  return new PVector(
    rand2dTo1d(value), 
    rand2dTo1d(value), 
    rand2dTo1d(value)
    );
}

PVector rand1dTo3d(float value) {
  return new PVector(
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

float SmoothRandom1d(float low, float high, float offset)
{
  float value = gradientNoise(( millis() + offset)/1000.0f);
  
  float delta = high - low;
  
  float amplitude = value * delta;
  
  return amplitude + low;
  
}
