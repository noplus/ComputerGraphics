#version 300 es

precision mediump float;

in vec3 fsNormal;
out vec4 outColor;

uniform vec3 mDiffColor;
uniform vec3 lightDirection;
uniform vec3 lightColor;

void main() {

  vec3 nNormal = normalize(fsNormal);
  vec3 lDir = (lightDirection);
  vec3 lambertColor = mDiffColor * lightColor * dot(-lDir,nNormal);
  vec4 diffTerm = vec4(clamp(lambertColor, 0.0, 1.0), 1.0);
  outColor = diffTerm;
}