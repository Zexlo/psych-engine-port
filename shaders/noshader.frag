#pragma header
vec2 uv = openfl_TextureCoordv.xy;
vec2 fragCoord = openfl_TextureCoordv*openfl_TextureSize;
vec2 iResolution = openfl_TextureSize;
uniform float iTime;
#define iChannel0 bitmap
#define texture flixel_texture2D
#define fragColor gl_FragColor
#define mainImage main

void grayscale( inout vec3 color ) {
    // float avg = (color.r + color.g + color.b) / 3.0;
    float avg = 0.3 * color.r + 0.59 * color.g + 0.11 * color.b;
	color.rgb = vec3(avg);
}

void mainImage()
{
	vec2 uv = fragCoord.xy / iResolution.xy;
    vec3 color = texture(iChannel0, uv).rgb;
	fragColor = vec4(color, 1.0);
}
