#version 150

out vec4 FragColor;

in vec2 vertexTexCoordsOut;
uniform float time;
uniform	sampler2D texture0;

void main()
{
  float u_angle=20.0;
  vec2 coord = vertexTexCoordsOut;
  float sin_factor = sin(time*u_angle);
  float cos_factor = cos(time*u_angle);
  //vertexTexCoordsOut =vertexTexCoordsOut* mat2(cos_factor, sin_factor, -sin_factor, cos_factor);
  coord = (coord - 0.5) * mat2(cos_factor, sin_factor, -sin_factor, cos_factor);
  coord += 0.5;
  FragColor = texture(texture0,coord);//vertexTexCoordsOut.xy
}
