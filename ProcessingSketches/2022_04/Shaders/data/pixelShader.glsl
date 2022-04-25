#version 330

out vec4 outputF;
in vec4 vertTexCoord;
uniform float time;

float easeIn(float interpolator)
{
	return interpolator * interpolator;
}

float easeOut(float interpolator)
{
	return 1 - easeIn(1 - interpolator);
}

float easeInOut(float interpolator)
{
	float easeInValue = easeIn(interpolator);
	float easeOutValue = easeOut(interpolator);
	return mix(easeInValue, easeOutValue, interpolator);
}

float rand3dTo1d(vec3 value, vec3 dotDir = vec3(12.9898, 78.233, 37.719))
{
	vec3 smallValue = sin(value);
	float random = dot(smallValue, dotDir);
	random = fract(sin(random) * 143758.5453);
	return random;
}

vec3 rand3dTo3d(vec3 value)
{
	return vec3(rand3dTo1d(value, vec3(12.989, 78.233, 37.719)), rand3dTo1d(value, vec3(39.346, 11.135, 83.155)), rand3dTo1d(value, vec3(73.156, 52.235, 09.151)));
}

float perlinNoise(vec3 value)
{
	vec3 fraction = fract(value);

	float interpolatorX = easeInOut(fraction.x);
	float interpolatorY = easeInOut(fraction.y);
	float interpolatorZ = easeInOut(fraction.z);

	float cellNoiseZ[2];
	for(int z = 0; z <= 1; z++)
	{
		float cellNoiseY[2];
		for(int y = 0; y <= 1; y++)
		{
			float cellNoiseX[2];
			for(int x = 0; x <= 1; x++)
			{
				vec3 cell = floor(value) + vec3(x, y, z);
				vec3 cellDirection = rand3dTo3d(cell) * 2 - 1;
				vec3 compareVector = fraction - vec3(x, y, z);
				cellNoiseX[x] = dot(cellDirection, compareVector);
			}
			cellNoiseY[y] = mix(cellNoiseX[0], cellNoiseX[1], interpolatorX);
		}
		cellNoiseZ[z] = mix(cellNoiseY[0], cellNoiseY[1], interpolatorY);
	}
	float noise = mix(cellNoiseZ[0], cellNoiseZ[1], interpolatorZ);
	return noise;
}

float perlinNoise01(vec3 value)
{
	return (perlinNoise(value) + 1) * 0.5f;
}

void main()
{
	vec3 frequency = vec3(5.5f,4.5f,3.5f);
	vec3 speed = vec3(0.1f,0.2f,0.3f);

	

	float r = perlinNoise01(frequency.x * vec3(vertTexCoord.x + speed.x * time, vertTexCoord.y, speed.x * time));
	float g = perlinNoise01(frequency.y * vec3(vertTexCoord.x, vertTexCoord.y + speed.y * time, speed.y * time));
	float b = perlinNoise01(frequency.z * vec3(vertTexCoord.x, vertTexCoord.y, speed.z * time));

	outputF = vec4(r, g, b, 1.0);
}