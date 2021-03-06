#ifdef GL_ES
precision highp float;
#endif

attribute vec3 position;
attribute vec3 normal;
attribute vec2 texCoord;
attribute vec2 lightCoord;
attribute vec4 color;

varying vec2 vTexCoord;
varying vec2 vLightmapCoord;
varying vec4 vColor;

uniform mat4 modelViewMat;
uniform mat4 projectionMat;

void main(void) {
  vec4 worldPosition = modelViewMat * vec4(position, 1.0);
  vTexCoord = texCoord;
  vColor = color;
  vLightmapCoord = lightCoord;
  gl_Position = projectionMat * worldPosition;
}
