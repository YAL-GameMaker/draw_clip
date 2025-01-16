//
varying vec4 v_vColour;
varying vec3 v_vPosition;
//
uniform vec4 u_rect;
uniform sampler2D u_mask;
//
void main() {
    gl_FragColor = v_vColour
        * texture2D(u_mask, (v_vPosition.xy - u_rect.xy) / u_rect.zw);
}

