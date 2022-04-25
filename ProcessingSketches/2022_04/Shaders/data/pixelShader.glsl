#version 330
 
out vec4 outputF;
varying vec4 vertTexCoord;
uniform float time;
 
void main()
{
    float thing = (sin(time) + 1.0f) * 0.5f;

    outputF = vec4(vertTexCoord.x,vertTexCoord.y, thing, 1.0);
}