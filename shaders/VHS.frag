#pragma header
vec2 uv = openfl_TextureCoordv.xy;
vec2 fragCoord = openfl_TextureCoordv*openfl_TextureSize;
vec2 iResolution = openfl_TextureSize;
uniform float iTime;
#define iChannel0 bitmap
#define texture flixel_texture2D
#define fragColor gl_FragColor
#define mainImage main


const float PI = 3.14159265;

float wobble_intensity = 0.002;
float grade_intensity = 0.5;
float line_intensity = 2.;
float vignette_intensity = 0.2;

float rand(vec2 co){
    return fract(sin(dot(co.xy ,vec2(12.9898,78.233))) * 43758.5453);
}

float sample_noise(vec2 fragCoord)
{
    vec2 uv = mod(fragCoord + vec2(0, 100. * iTime), iChannelResolution[1].xy);
    float value = texture(iChannel1, uv / iResolution.xy).r;
    return pow(value, 7.); //  sharper ramp
}

void mainImage()
{
    vec2 uv = fragCoord / iResolution.xy;
    
    //  wobble
    vec2 wobbl = vec2(wobble_intensity * rand(vec2(iTime, fragCoord.y)), 0.);
    
    //  band distortion
    float t_val = tan(0.25 * iTime + uv.y * PI * .67);
    vec2 tan_off = vec2(wobbl.x * min(0., t_val), 0.);
    
    //  chromab
    vec4 color1 = texture(iChannel0, uv + wobbl + tan_off);
    vec4 color2 = texture(iChannel0, (uv + (wobbl * 1.5) + (tan_off * 1.3)) * 1.005);
    //  combine + grade
    vec4 color = vec4(color2.rg, pow(color1.b, .67), 1.);
    color.rgb = mix(texture(iChannel0, uv + tan_off).rgb, color.rgb, grade_intensity);
    
    //  scanline sim
    float s_val = ((sin(2. * PI * uv.y + iTime * 20.) + sin(2. * PI * uv.y)) / 2.) * .015 * sin(iTime);
    color += s_val;
    
    //  noise lines
    float ival = iResolution.y / 4.;
    float r = rand(vec2(iTime, fragCoord.y));
    //  dirty hack to avoid conditional
    float on = floor(float(int(fragCoord.y + (iTime * r * 1000.)) % int(ival + line_intensity)) / ival);
    float wh = sample_noise(fragCoord) * on;
    color = vec4(min(1., color.r + wh), 
                 min(1., color.g + wh),
                 min(1., color.b + wh), 1.);
    
    float vig = 1. - sin(PI * uv.x) * sin(PI * uv.y);
    
    fragColor = color - (vig * vignette_intensity);
}