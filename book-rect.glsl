// https://thebookofshaders.com/07/?lan=ch

void main() {
  vec2 uv = gl_FragCoord.xy / iResolution.xy;

  float edge = .2;

  float x = smoothstep (.1, edge, uv.x);
  float y = smoothstep (.1, edge, uv.y);

  // 相当于是AND，x,y的值只会是0或1，0乘以任何数会是0
  vec3 color = vec3(x * y);

  float t = smoothstep (.1, edge, (1. - uv.x));
  float p = smoothstep (.1, edge, (1. - uv.y));

  color *= vec3(t * p);

  gl_FragColor = vec4(color, 1.);
}