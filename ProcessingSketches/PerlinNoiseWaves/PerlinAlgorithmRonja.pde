


///////////////////////////////////////////////// Random Noise //////////////////////////////////////////////////////////


//get a scalar random value from a 3d value
float rand3dTo1d(PVector value)
{
  PVector dotDir = new PVector(-1.0f*12.9898f, 1.0f*78.233f, -1.0f*37.719f);

  return rand3dTo1d(value, dotDir);
}

float rand3dTo1d(PVector value, PVector dotDir)
{
  //make value smaller to avoid artefacts
  PVector smallValue = sin(value);
  //get scalar value from 3d vector
  float random = PVector.dot(smallValue,dotDir);
  //make value more random by making it bigger and then taking the factional part
  random = frac(sin(1.0f * random) * 143758.5453f);
  return 1.0f * random;
}


float rand2dTo1d(PVector value)
{
  PVector dotDir = new PVector(12.9898, -78.233);
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
    rand3dTo1d(value, new PVector(1.0f*12.989, 1.0f*78.233, 1.0f*37.719)), 
    rand3dTo1d(value, new PVector(1.0f*39.346, 1.0f*11.135, 1.0f*83.155)), 
    rand3dTo1d(value, new PVector(1.0f*73.156, 1.0f*52.235, 1.0f*19.151))
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

  float interpolatorX = 1.0f*easeInOut(fraction.x);
  float interpolatorY = 1.0f*easeInOut(fraction.y);
  float interpolatorZ = 1.0f*easeInOut(fraction.z);
  
  //print(interpolatorX+"," +interpolatorY+","+ interpolatorZ+"," + "\n");

  float[] cellNoiseZ = new float[2];

  for (int z=0; z<=1; z++) 
  {
    float[] cellNoiseY = new float[2];

    for (int y=0; y<=1; y++) 
    {
      float[] cellNoiseX = new float[2];

      for (int x=0; x<=1; x++) 
      {
        PVector cell = PVector.add(PVector.mult(floor(value),1.001f), new PVector(x*1.0f, y*1.0f, z*1.0f));
        PVector cellDirection = PVector.add(PVector.mult(rand3dTo3d(cell),2.01f),new PVector(-1.0f,-1.0f,-1.0f));
        //print("cell dir =" + cellDirection + "\n");
        PVector compareVector = PVector.sub(fraction, new PVector(x*1.0f, y*1.0f, z*1.0f));
        cellNoiseX[x] = PVector.dot(cellDirection, compareVector);
      }
      cellNoiseY[y] = lerp(1.0f*cellNoiseX[0], 1.0f*cellNoiseX[1], 1.0f*interpolatorX);
    }
    cellNoiseZ[z] = lerp(1.0f*cellNoiseY[0], 1.0f*cellNoiseY[1], 1.0f*interpolatorY);
  }
  float noise = lerp(1.0f*cellNoiseZ[0], 1.0f*cellNoiseZ[1], 1.0f*interpolatorZ);
  //print(noise + "\n");
  return 1.0f*noise;
  
  // Something in this function is causing it to "cycle" every N points or so
  // (!) - Try writing through the loops by hand as opposed to using the "for" expression (a lot of copy pasting)
  // Also - try using floors and ceils as opposed to the +1 and -1 vectors;
  
  
  
}

float GetPerlinWave(PVector offset, float amplitude, float density)
{
  return amplitude * PerlinNoise3(offset.mult(density) );
}
