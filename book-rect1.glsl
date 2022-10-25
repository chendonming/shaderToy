void main() {
  vec2 uv = gl_FragCoord.xy / iResolution.xy;

  vec3 color = vec3(.153, .871, .925);

  float color1 = step(.1,(uv.x - .5));

  gl_FragColor = vec4(vec3(color1), 1.);
}