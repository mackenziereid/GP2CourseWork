#version 150

out vec4 FragColor;
in vec3 worldNormal;
in vec3 cameraDirectionOut;

//add
in vec2 vertexTexCoordsOut;
uniform vec3 lightDirection;

uniform vec4 ambientMaterialColour;
uniform vec4 diffuseMaterialColour;
uniform vec4 specularMaterialColour;
uniform float specularPower;

uniform vec4 ambientLightColour;
uniform vec4 diffuseLightColour;
uniform vec4 specularLightColour;
//add
uniform	sampler2D texture0;
uniform	sampler2D texture1;
void main()
{
	vec3 lightDirectionNormalized=normalize(lightDirection);
	float diffuseTerm = max(dot(worldNormal, lightDirectionNormalized),0.0f);
	vec3 halfWayVec = normalize(cameraDirectionOut + lightDirectionNormalized);
	float specularTerm = pow(max(dot(worldNormal, halfWayVec),0.0f), specularPower);
  //FragColor = texture(texture0,	vertexTexCoordsOut.xy);
  FragColor =(diffuseTerm*texture(texture0,vertexTexCoordsOut.yx)) +(specularTerm*texture(texture1,vertexTexCoordsOut.yx));
  //ambientMaterialColour*ambientLightColour) +
  //(diffuseMaterialColour*diffuseLightColour*
  //specularMaterialColour*specularLightColour*
}
