#version 120

varying vec2 texCoord;
uniform sampler2D gcolor;

void main() {
    vec4 color = texture2D(gcolor, texCoord);
    
    vec2 uv = texCoord - 0.5;
    float distance = length(uv);
    
    float vignette = smoothstep(0.8, 0.4, distance);
    
    gl_FragColor = vec4(color.rgb * vignette, color.a);
}
