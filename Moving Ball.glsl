#define pi 3.14159265359

//vec2(smoothstep(0.));

vec2 offset(){
return vec2(1.2666*smoothstep(-0.5,0.5,sin(0.35*iTime-.5)),.599*smoothstep(-0.5,0.5,sin(0.35*iTime-.5-pi/2.)));
}

float circS(vec2 pos, float r){
return step(r,length(pos-vec2(.2)));}

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    
    vec2 uv = fragCoord/iResolution.xy;
    uv.x*=1.66667;
    vec3 col = vec3(0.);
    
    float circle=circS(uv-offset(),.2);
    col=vec3(circle);
    // Output to screen
    fragColor = vec4(col,1.0);
}