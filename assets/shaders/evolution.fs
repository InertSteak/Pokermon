// === GLSL Fix Log ===
// 修复时间: Mon Jul 21 14:15:41 CST 2025
// 文件来源: evolution.fs
// 共修改 3 行
// 第 125 行："number new_b = sin(2.*(evolution.b - 0.75) * 3.14159265359 / 3.)/5;" → "number new_b = sin(2.*(evolution.b - 0.75) * 3.14159265359 / 3.)/5.0;"
// 第 126 行："new_b = new_b * (1+sin(angle*3.14159265359 * 5 + evolution.g)/30+cos(angle*3.14159265359 * 2 + evolution.g)/30);" → "new_b = new_b * (1.0+sin(angle*3.14159265359 * 5.0 + evolution.g)/30.0+cos(angle*3.14159265359 * 2.0 + evolution.g)/30.0);"
// 第 159 行："return transform_projection * vertex_position + vec4(0,0,0,scale);" → "return transform_projection * vertex_position + vec4(0.0,0.0,0.0,scale);"
// =====================

#if defined(VERTEX) || __VERSION__ > 100 || defined(GL_FRAGMENT_PRECISION_HIGH)
    #define MY_HIGHP_OR_MEDIUMP highp
#else
    #define MY_HIGHP_OR_MEDIUMP mediump
#endif


extern MY_HIGHP_OR_MEDIUMP vec3 evolution;
extern MY_HIGHP_OR_MEDIUMP number dissolve;
extern MY_HIGHP_OR_MEDIUMP number time;
extern MY_HIGHP_OR_MEDIUMP vec4 texture_details;
extern MY_HIGHP_OR_MEDIUMP vec2 image_details;
extern bool shadow;
extern MY_HIGHP_OR_MEDIUMP vec4 burn_colour_1;
extern MY_HIGHP_OR_MEDIUMP vec4 burn_colour_2;

vec4 dissolve_mask(vec4 tex, vec2 texture_coords, vec2 uv)
{
    if (dissolve < 0.001) {
        return vec4(shadow ? vec3(0.,0.,0.) : tex.xyz, shadow ? tex.a*0.3: tex.a);
    }

    float adjusted_dissolve = (dissolve*dissolve*(3.-2.*dissolve))*1.02 - 0.01; //Adjusting 0.0-1.0 to fall to -0.1 - 1.1 scale so the mask does not pause at extreme values

    float t = time * 10.0 + 2003.;
    vec2 floored_uv = (floor((uv*texture_details.ba)))/max(texture_details.b, texture_details.a);
    vec2 uv_scaled_centered = (floored_uv - 0.5) * 2.3 * max(texture_details.b, texture_details.a);
    
    vec2 field_part1 = uv_scaled_centered + 50.*vec2(sin(-t / 143.6340), cos(-t / 99.4324));
    vec2 field_part2 = uv_scaled_centered + 50.*vec2(cos( t / 53.1532),  cos( t / 61.4532));
    vec2 field_part3 = uv_scaled_centered + 50.*vec2(sin(-t / 87.53218), sin(-t / 49.0000));

    float field = (1.+ (
        cos(length(field_part1) / 19.483) + sin(length(field_part2) / 33.155) * cos(field_part2.y / 15.73) +
        cos(length(field_part3) / 27.193) * sin(field_part3.x / 21.92) ))/2.;
    vec2 borders = vec2(0.2, 0.8);

    float res = (.5 + .5* cos( (adjusted_dissolve) / 82.612 + ( field + -.5 ) *3.14))
    - (floored_uv.x > borders.y ? (floored_uv.x - borders.y)*(5. + 5.*dissolve) : 0.)*(dissolve)
    - (floored_uv.y > borders.y ? (floored_uv.y - borders.y)*(5. + 5.*dissolve) : 0.)*(dissolve)
    - (floored_uv.x < borders.x ? (borders.x - floored_uv.x)*(5. + 5.*dissolve) : 0.)*(dissolve)
    - (floored_uv.y < borders.x ? (borders.x - floored_uv.y)*(5. + 5.*dissolve) : 0.)*(dissolve);

    if (tex.a > 0.01 && burn_colour_1.a > 0.01 && !shadow && res < adjusted_dissolve + 0.8*(0.5-abs(adjusted_dissolve-0.5)) && res > adjusted_dissolve) {
        if (!shadow && res < adjusted_dissolve + 0.5*(0.5-abs(adjusted_dissolve-0.5)) && res > adjusted_dissolve) {
            tex.rgba = burn_colour_1.rgba;
        } else if (burn_colour_2.a > 0.01) {
            tex.rgba = burn_colour_2.rgba;
        }
    }

    return vec4(shadow ? vec3(0.,0.,0.) : tex.xyz, res > adjusted_dissolve ? (shadow ? tex.a*0.3: tex.a) : .0);
}

number hue(number s, number t, number h)
{
    number hs = mod(h, 1.)*6.;
    if (hs < 1.) return (t-s) * hs + s;
    if (hs < 3.) return t;
    if (hs < 4.) return (t-s) * (4.-hs) + s;
    return s;
}

vec4 RGB(vec4 c)
{
    if (c.y == 0.)
        return vec4(vec3(c.z), c.a);

    number t = (c.z < .5) ? c.y*c.z + c.z : -c.y*c.z + (c.y+c.z);
    number s = 2.0 * c.z - t;
    return vec4(hue(s,t,c.x + 1./3.), hue(s,t,c.x), hue(s,t,c.x - 1./3.), c.w);
}

vec4 HSL(vec4 c)
{
    number low = min(c.r, min(c.g, c.b));
    number high = max(c.r, max(c.g, c.b));
    number delta = high - low;
    number sum = high+low;

    vec4 hsl = vec4(.0, .0, .5 * sum, c.a);
    if (delta == .0)
        return hsl;

    hsl.y = (hsl.z < .5) ? delta / sum : delta / (2.0 - sum);

    if (high == c.r)
        hsl.x = (c.g - c.b) / delta;
    else if (high == c.g)
        hsl.x = (c.b - c.r) / delta + 2.0;
    else
        hsl.x = (c.r - c.g) / delta + 4.0;

    hsl.x = mod(hsl.x / 6., 1.);
    return hsl;
}

vec4 effect( vec4 colour, Image texture, vec2 texture_coords, vec2 screen_coords )
{
    vec4 tex = Texel(texture, texture_coords);
    vec2 uv = (((texture_coords)*(image_details)) - texture_details.xy*texture_details.ba)/texture_details.ba;
    vec2 adjusted_uv = uv - vec2(0.5, 0.5);
    adjusted_uv.x = adjusted_uv.x*texture_details.b/texture_details.a;

    vec2 rotater = vec2(0.,1.);
    number angle = acos(dot(rotater, adjusted_uv)/(length(rotater)*length(adjusted_uv)));
    number add_mod = abs(0.39269908169 - mod(angle, 0.78539816339));

    number bg_color = evolution.g * 0.1 + 2.*length(adjusted_uv) - (add_mod / 5.) - 0.5*(1.5 - evolution.b);
    bg_color = abs(bg_color - floor(bg_color + 0.5)) + 0.515;
    bg_color = floor(bg_color * 15.) / 15.;
    number mid_hid = (1.-length(adjusted_uv)) - evolution.b * 5. * length(adjusted_uv);
    mid_hid = 13. * (evolution.b + 0.5) * length(adjusted_uv) - 2./(0.5+evolution.b);
    if (evolution.b > 1.5)
        mid_hid = min(1.,mid_hid) - (evolution.b - 1.75) * 2. - 10. * (evolution.b - 1.5) * length(adjusted_uv);
    else
        mid_hid = mid_hid - 0.1/length(adjusted_uv);

    vec4 hsl_evo = HSL(vec4(0.,0.,0.,1.));
    hsl_evo.r = evolution.g / 3.;
    hsl_evo.g = 0.4;
    hsl_evo.b = sqrt(min(1., max(0., bg_color)));
    if (evolution.b > 0.75)
    {
        number new_b = sin(2.*(evolution.b - 0.75) * 3.14159265359 / 3.)/5.0;
        new_b = new_b * (1.0+sin(angle*3.14159265359 * 5.0 + evolution.g)/30.0+cos(angle*3.14159265359 * 2.0 + evolution.g)/30.0);
        new_b = new_b / length(adjusted_uv);
        new_b = new_b * new_b * new_b * new_b - 0.2;
        new_b = new_b * min(1., max(0., evolution.b * 2. - 1.5));
        hsl_evo.g = min(1., hsl_evo.g + new_b);
        hsl_evo.b = min(1., hsl_evo.b + new_b);
        mid_hid = min(1., max(0., max(mid_hid, new_b)));
        if (evolution.b > 1.75)
            mid_hid = mid_hid * min(1., max(0., 4.5 - evolution.b*2.));
    }
    hsl_evo = RGB(hsl_evo);
    hsl_evo.a = min(tex.a, mid_hid);
    tex = hsl_evo;


    return dissolve_mask(tex*colour, texture_coords, uv);
}

extern MY_HIGHP_OR_MEDIUMP vec2 mouse_screen_pos;
extern MY_HIGHP_OR_MEDIUMP float hovering;
extern MY_HIGHP_OR_MEDIUMP float screen_scale;

#ifdef VERTEX
vec4 position( mat4 transform_projection, vec4 vertex_position )
{
    if (hovering <= 0.){
        return transform_projection * vertex_position;
    }
    float mid_dist = length(vertex_position.xy - 0.5*love_ScreenSize.xy)/length(love_ScreenSize.xy);
    vec2 mouse_offset = (vertex_position.xy - mouse_screen_pos.xy)/screen_scale;
    float scale = 0.2*(-0.03 - 0.3*max(0., 0.3-mid_dist))
                *hovering*(length(mouse_offset)*length(mouse_offset))/(2. -mid_dist);

    return transform_projection * vertex_position + vec4(0.0,0.0,0.0,scale);
}
#endif
