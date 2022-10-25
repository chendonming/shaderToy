vec3 drawCircle(vec2 pos, float radius, float width, float power, vec4 color) {
    // [0, 1.41421356237]
    float dist1 = length(pos);

    dist1 = fract((dist1 * 5.0) - fract(iTime));

    float dist2 = dist1 - radius;

    float intensity = pow(radius / abs(dist2), width);

    vec3 col = color.rgb * intensity * power * max((0.8 - abs(dist2)), 0.0);

    return col;
}

void main() {
    // // -1.0 ~ 1.0
    // 将坐标转换到[-1,1] 屏幕中央为原点
    vec2 pos = (gl_FragCoord.xy * 2.0 - iResolution.xy) / min(iResolution.x, iResolution.y);

    // float h = mix(0.5, 0.65, length(pos));
    // vec4 color = vec4(hsv2rgb(h, 1.0, 1.0), 1.0);
    vec4 color = vec4(0., 1., 0.84, 1.);

    float radius = 0.5;

    float width = 0.8;

    float power = 0.2;

    vec3 finalColor = drawCircle(pos, radius, width, power, color);

    // pos = abs(pos);
    // vec3 finalColor = vec3(pos.x, 0.0, pos.y);

    gl_FragColor = vec4(finalColor, 1.0);
}