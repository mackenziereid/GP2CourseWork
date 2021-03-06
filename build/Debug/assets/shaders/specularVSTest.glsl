#version 150

in vec3 vertexPosition;
in vec3 vertexNormal;

in vec2 vertexTexCoords;

out vec3 worldNormal;
out vec3 cameraDirectionOut;

out vec2 vertexTexCoordsOut;
uniform mat4 MVP;
uniform mat4 Model;

uniform vec3 cameraPosition;

void main()
{
  vertexTexCoordsOut=vertexTexCoords;
	worldNormal = normalize(Model*vec4(vertexNormal, 0.0f)).xyz;
	vec3 worldPos = (Model*vec4(vertexPosition, 1.0)).xyz;
	cameraDirectionOut = normalize(cameraPosition - worldPos);

	gl_Position = MVP * vec4(vertexPosition, 1.0);
}
