// === GLSL Fix Log ===
// 修复时间: Mon Jul 21 14:15:41 CST 2025
// 文件来源: shiny.fs
// 共修改 23 行
// 第 41 行："return 1 / (1 + exp(6-8*x)) - 0.005;" → "return 1.0 / (1.0 + exp(6.0-8.0*x)) - 0.005;"
// 第 46 行："return 1 - pow(sin(M_PI/2 * x),20);" → "return 1.0 - pow(sin(M_PI/2.0 * x),20.0);"
// 第 68 行："number time_val = shiny.g + time + 7777;" → "number time_val = shiny.g + time + 7777.0;"
// 第 69 行："vec2 newCenter = vec2(0,0);" → "vec2 newCenter = vec2(0.0,0.0);"
// 第 70 行："for (int i = 4; i < 8; i += 1)" → "for (float i = 4.0; i < 8.0; i += 1.0)"
// 第 76 行："number angle = 2 * M_PI * stackoverflow_hash(hash, 1);" → "number angle = 2.0 * M_PI * stackoverflow_hash(hash, 1.0);"
// 第 77 行："number dist = 0.1 + 0.3 * stackoverflow_hash(hash, 2);" → "number dist = 0.1 + 0.3 * stackoverflow_hash(hash, 2.0);"
// 第 81 行："number size = sin(iter * M_PI) * (sqrt(i) / 3) * (0.05 + 0.2 * stackoverflow_hash(hash, 3));" → "number size = sin(iter * M_PI) * (sqrt(i) / 3.0) * (0.05 + 0.2 * stackoverflow_hash(hash, 3.0));"
// 第 83 行："float star_angle = atan(adjusted_uv.x, adjusted_uv.y) + sin(shiny.r + time + M_PI * stackoverflow_hash(hash, 4));" → "float star_angle = atan(adjusted_uv.x, adjusted_uv.y) + sin(shiny.r + time + M_PI * stackoverflow_hash(hash, 4.0));"
// 第 84 行："float star = size * 0.2 / cos(asin(cos(5*star_angle))/10 + 0.942477796077);" → "float star = size * 0.2 / cos(asin(cos(5.0*star_angle))/10.0 + 0.942477796077);"
// 第 88 行："hsl.a = opacity + prev_opacity * (1 - opacity);" → "hsl.a = opacity + prev_opacity * (1.0 - opacity);"
// 第 89 行："hsl.b = (0.3 * stackoverflow_hash(hash, 9) + 0.6) * (opacity / hsl.a) + (hsl.b * prev_opacity / hsl.a);" → "hsl.b = (0.3 * stackoverflow_hash(hash, 9.0) + 0.6) * (opacity / hsl.a) + (hsl.b * prev_opacity / hsl.a);"
// 第 93 行："for (int i = 1; i < 8; i += 1)" → "for (float i = 1.0; i < 8.0; i += 1.0)"
// 第 99 行："number angle = 2 * M_PI * stackoverflow_hash(hash, 5);" → "number angle = 2.0 * M_PI * stackoverflow_hash(hash, 5.0);"
// 第 100 行："number dist = 0.1 + 0.3 * stackoverflow_hash(hash, 6);" → "number dist = 0.1 + 0.3 * stackoverflow_hash(hash, 6.0);"
// 第 104 行："number size = sin(iter * M_PI) * (sqrt(i) / 3) * (0.05 + 0.2 * stackoverflow_hash(hash, 7));" → "number size = sin(iter * M_PI) * (sqrt(i) / 3.0) * (0.05 + 0.2 * stackoverflow_hash(hash, 7.0));"
// 第 106 行："float star_angle = atan(adjusted_uv.x, adjusted_uv.y) + sin(shiny.r*10 + time + M_PI * stackoverflow_hash(hash, 8));" → "float star_angle = atan(adjusted_uv.x, adjusted_uv.y) + sin(shiny.r*10.0 + time + M_PI * stackoverflow_hash(hash, 8.0));"
// 第 107 行："float star = size * 0.05 / cos(asin(cos(4*star_angle))/3 + 0.942477796077);" → "float star = size * 0.05 / cos(asin(cos(4.0*star_angle))/3.0 + 0.942477796077);"
// 第 111 行："hsl.a = opacity + prev_opacity * (1 - opacity);" → "hsl.a = opacity + prev_opacity * (1.0 - opacity);"
// 第 112 行："hsl.b = (opacity / hsl.a) + (hsl.b * prev_opacity * (1 - opacity) / hsl.a);" → "hsl.b = (opacity / hsl.a) + (hsl.b * prev_opacity * (1.0 - opacity) / hsl.a);"
// 第 119 行："float ratio = 1;" → "float ratio = 1.0;"
// 第 120 行："tex = ratio*RGB(hsl) + (1-ratio)*RGB(bhsl);" → "tex = ratio*RGB(hsl) + (1.0-ratio)*RGB(bhsl);"
// 第 223 行："return transform_projection * vertex_position + vec4(0,0,0,scale);" → "return transform_projection * vertex_position + vec4(0.0,0.0,0.0,scale);"
// =====================

#if defined(VERTEX) || __VERSION__ > 100 || defined(GL_FRAGMENT_PRECISION_HIGH)
	#define PRECISION highp
#else
	#define PRECISION mediump
#endif

#define M_PI 3.1415926535897932384626433832795

// Look ionized.fs for explanation
extern PRECISION vec2 shiny;

extern PRECISION number dissolve;
extern PRECISION number time;
// (sprite_pos_x, sprite_pos_y, sprite_width, sprite_height) [not normalized]
extern PRECISION vec4 texture_details;
// (width, height) for atlas texture [not normalized]
extern PRECISION vec2 image_details;
extern bool shadow;
extern PRECISION vec4 burn_colour_1;
extern PRECISION vec4 burn_colour_2;

// [Util]
// Transform color from HSL to RGB
vec4 RGB(vec4 c);

// [Util]
// Transform color from RGB to HSL
vec4 HSL(vec4 c);

// [Required]
// Apply dissolve effect (when card is being "burnt", e.g. when consumable is used)
vec4 dissolve_mask(vec4 tex, vec2 texture_coords, vec2 uv);

float stackoverflow_hash(number value, number index)
{
    return fract(sin(dot(vec2(index/value, value/index), vec2(12.9898,78.233))) * 43758.5453);
}

number logisticCurve(number x)
{
    return 1.0 / (1.0 + exp(6.0-8.0*x)) - 0.005;
}

number hideFormula(number x)
{
    return 1.0 - pow(sin(M_PI/2.0 * x),20.0);
}

// This is what actually changes the look of card
vec4 effect( vec4 colour, Image texture, vec2 texture_coords, vec2 screen_coords )
{
    // Take pixel color (rgba) from `texture` at `texture_coords`, equivalent of texture2D in GLSL
    vec4 tex = Texel(texture, texture_coords);
    // Position of a pixel within the sprite
	vec2 uv = (((texture_coords)*(image_details)) - texture_details.xy*texture_details.ba)/texture_details.ba;

    float adjust_value = 0.5;
    //adjust_value += 0.1 * sin(shiny.g + time);
    vec2 adjusted_uv = uv - vec2(adjust_value, adjust_value);

    vec4 hsl = HSL(tex); // convert texture to HSL values
    vec4 bhsl = HSL(tex); // make a base copy of HSL values
    hsl.r = 0.14;
    hsl.g = 1.;
    hsl.b = 0.7;
    hsl.a = 0.0;

    number time_val = shiny.g + time + 7777.0;
    vec2 newCenter = vec2(0.0,0.0);
    for (float i = 4.0; i < 8.0; i += 1.0)
    {
        number i_val = sqrt(i);
        number iter = fract(time_val / i_val);
        number hash = floor(time_val / i_val);

        number angle = 2.0 * M_PI * stackoverflow_hash(hash, 1.0);
        number dist = 0.1 + 0.3 * stackoverflow_hash(hash, 2.0);
        newCenter.x = dist * cos(angle);
        newCenter.y = dist * sin(angle);
        adjusted_uv += newCenter;
        number size = sin(iter * M_PI) * (sqrt(i) / 3.0) * (0.05 + 0.2 * stackoverflow_hash(hash, 3.0));

        float star_angle = atan(adjusted_uv.x, adjusted_uv.y) + sin(shiny.r + time + M_PI * stackoverflow_hash(hash, 4.0));
        float star = size * 0.2 / cos(asin(cos(5.0*star_angle))/10.0 + 0.942477796077);
        number star_color = 1.2 - 15. * abs(length(adjusted_uv) - star) - 0.0075 / length(adjusted_uv);
        number opacity = hideFormula(iter) * logisticCurve(star_color);
        number prev_opacity = hsl.a;
        hsl.a = opacity + prev_opacity * (1.0 - opacity);
        hsl.b = (0.3 * stackoverflow_hash(hash, 9.0) + 0.6) * (opacity / hsl.a) + (hsl.b * prev_opacity / hsl.a);

        adjusted_uv -= newCenter;
    }
    for (float i = 1.0; i < 8.0; i += 1.0)
    {
        number i_val = sqrt(i);
        number iter = fract(time_val / i_val);
        number hash = floor(time_val / i_val);

        number angle = 2.0 * M_PI * stackoverflow_hash(hash, 5.0);
        number dist = 0.1 + 0.3 * stackoverflow_hash(hash, 6.0);
        newCenter.x = dist * cos(angle);
        newCenter.y = dist * sin(angle);
        adjusted_uv += newCenter;
        number size = sin(iter * M_PI) * (sqrt(i) / 3.0) * (0.05 + 0.2 * stackoverflow_hash(hash, 7.0));

        float star_angle = atan(adjusted_uv.x, adjusted_uv.y) + sin(shiny.r*10.0 + time + M_PI * stackoverflow_hash(hash, 8.0));
        float star = size * 0.05 / cos(asin(cos(4.0*star_angle))/3.0 + 0.942477796077);
        number star_color = star / length(adjusted_uv);
        number opacity = min(1., max(0., hideFormula(iter) * logisticCurve(star_color)));
        number prev_opacity = hsl.a;
        hsl.a = opacity + prev_opacity * (1.0 - opacity);
        hsl.b = (opacity / hsl.a) + (hsl.b * prev_opacity * (1.0 - opacity) / hsl.a);

        adjusted_uv -= newCenter;
    }


    // Mix with base texture
    float ratio = 1.0;
    tex = ratio*RGB(hsl) + (1.0-ratio)*RGB(bhsl);

    // required
	return dissolve_mask(tex*colour, texture_coords, uv);
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
	if (c.y < 0.0001)
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

// for transforming the card while your mouse is on it
extern PRECISION vec2 mouse_screen_pos;
extern PRECISION float hovering;
extern PRECISION float screen_scale;

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
