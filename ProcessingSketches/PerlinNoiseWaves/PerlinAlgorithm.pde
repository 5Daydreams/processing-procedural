


///////////////////////////////////////////////// Random Noise //////////////////////////////////////////////////////////


//get a scalar random value from a 3d value
float rand3dTo1d(PVector value)
{
  PVector dotDir = new PVector(12.9898, 78.233, 37.719);

  return rand3dTo1d(value, dotDir);
}

float rand3dTo1d(PVector value, PVector dotDir)
{
  //make value smaller to avoid artefacts
  PVector smallValue = sin(value);
  //get scalar value from 3d vector
  float random = smallValue.dot(dotDir);
  //make value more random by making it bigger and then taking the factional part
  random = frac(sin(random) * 143758.5453);
  return random;
}


float rand2dTo1d(PVector value)
{
  PVector dotDir = new PVector(12.9898, 78.233);
  return rand2dTo1d(value, dotDir);
}

float rand2dTo1d(PVector value, PVector dotDir) {
  PVector smallValue = sin(value);
  float random = smallValue.dot(dotDir);
  random = frac(sin(random) * 143758.5453);
  return random;
}

float rand1dTo1d(float value)
{
  float mutator = 0.546;
  return rand1dTo1d(value, mutator);
}

float rand1dTo1d(float value, float mutator)
{
  float random = frac(sin(value + mutator) * 143758.5453);
  return random;
}

//to 2d functions

PVector rand3dTo2d(PVector value) {
  return new PVector(
    rand3dTo1d(value, new PVector(12.989, 78.233, 37.719)), 
    rand3dTo1d(value, new PVector(39.346, 11.135, 83.155))
    );
}

PVector rand2dTo2d(PVector value) {
  return new PVector(
    rand2dTo1d(value, new PVector(12.989, 78.233)), 
    rand2dTo1d(value, new PVector(39.346, 11.135))
    );
}

PVector rand1dTo2d(float value) {
  return new PVector(
    rand1dTo1d(value, 3.9812), 
    rand1dTo1d(value, 7.1536)
    );
}

//to 3d functions

PVector rand3dTo3d(PVector value) {
  
  PVector randomized = new PVector(
    rand3dTo1d(value, new PVector(12.989, 78.233, 37.719)), 
    rand3dTo1d(value, new PVector(39.346, 11.135, 83.155)), 
    rand3dTo1d(value, new PVector(73.156, 52.235, 09.151))
    ); 
    // print(randomized + "\n"); // for debugging
  return randomized; 
}

PVector rand2dTo3d(PVector value) {
  return new PVector(
    rand2dTo1d(value, new PVector(12.989, 78.233)), 
    rand2dTo1d(value, new PVector(39.346, 11.135)), 
    rand2dTo1d(value, new PVector(73.156, 52.235))
    );
}

PVector rand1dTo3d(float value) {
  return new PVector(
    rand1dTo1d(value, 3.9812), 
    rand1dTo1d(value, 7.1536), 
    rand1dTo1d(value, 5.7241)
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

/////////////////////////////////////// SmoothNoise ////////////////////////////////////////////

float gradientNoise(float value) {
  float fraction = frac(value);
  float interpolator = easeInOut(fraction);

  float previousCellInclination = rand1dTo1d(floor(value)) * 2 - 1;
  float previousCellLinePoint = previousCellInclination * fraction;

  float nextCellInclination = rand1dTo1d(ceil(value)) * 2 - 1;
  float nextCellLinePoint = nextCellInclination * (fraction - 1);

  return lerp(previousCellLinePoint, nextCellLinePoint, interpolator);
}

float PerlinNoise(float value) {
  float fraction = frac(value);
  float interpolator = easeInOut(fraction);

  float previousCellInclination = rand1dTo1d(floor(value)) * 2 - 1;
  float previousCellLinePoint = previousCellInclination * fraction;

  float nextCellInclination = rand1dTo1d(ceil(value)) * 2 - 1;
  float nextCellLinePoint = nextCellInclination * (fraction - 1);

  return lerp(previousCellLinePoint, nextCellLinePoint, interpolator);
}

float PerlinNoise2(PVector value) {
  float upperLeftCell = rand2dTo1d(new PVector(floor(value.x), ceil(value.y)));
  float upperRightCell = rand2dTo1d(new PVector(ceil(value.x), ceil(value.y)));
  float lowerLeftCell = rand2dTo1d(new PVector(floor(value.x), floor(value.y)));
  float lowerRightCell = rand2dTo1d(new PVector(ceil(value.x), floor(value.y)));

  float interpolatorX = easeInOut(frac(value.x));
  float interpolatorY = easeInOut(frac(value.y));

  float upperCells = lerp(upperLeftCell, upperRightCell, interpolatorX);
  float lowerCells = lerp(lowerLeftCell, lowerRightCell, interpolatorX);

  float noise = lerp(lowerCells, upperCells, interpolatorY);
  return noise;
}

float PerlinNoise3(PVector value) 
{
  PVector fraction = frac(value);

  float interpolatorX = easeInOut(fraction.x);
  float interpolatorY = easeInOut(fraction.y);
  float interpolatorZ = easeInOut(fraction.z);
  
  print(interpolatorX+"," +interpolatorY+","+ interpolatorZ+"," + "\n");

  float[] cellNoiseZ = new float[2];

  for (int z=0; z<=1; z++) 
  {
    float[] cellNoiseY = new float[2];

    for (int y=0; y<=1; y++) 
    {
      float[] cellNoiseX = new float[2];

      for (int x=0; x<=1; x++) 
      {
        PVector cell = PVector.add(floor(value), new PVector(x*1.0f, y*1.0f, z*1.0f));
        PVector cellDirection = rand3dTo3d(cell);
        PVector compareVector = PVector.sub(fraction, new PVector(x*1.0f, y*1.0f, z*1.0f));
        cellNoiseX[x] = PVector.dot(cellDirection, compareVector);
      }
      cellNoiseY[y] = lerp(cellNoiseX[0], cellNoiseX[1], interpolatorX);
    }
    cellNoiseZ[z] = lerp(cellNoiseY[0], cellNoiseY[1], interpolatorY);
  }
  float noise = lerp(cellNoiseZ[0], cellNoiseZ[1], interpolatorZ);
  return noise;
}

float GetPerlinWave(PVector offset, float amplitude, float density)
{
  return amplitude * PerlinNoise3(offset.mult(density) );
}
