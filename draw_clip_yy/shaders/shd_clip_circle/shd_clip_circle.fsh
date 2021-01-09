//
varying vec4 v_vColour;
varying vec3 v_vPosition;
//
uniform vec3 u_circle;
uniform sampler2D u_texture;
//
void main() {
    vec4 col = v_vColour;
    col.a *= float(length(v_vPosition.xy - u_circle.xy) < u_circle.z);
    gl_FragColor = col;
}

