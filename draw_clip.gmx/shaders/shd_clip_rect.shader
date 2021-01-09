//
attribute vec3 in_Position;
attribute vec4 in_Colour;
attribute vec2 in_TextureCoord;
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec3 v_vPosition;
//
void main() {
    v_vPosition = in_Position;
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION]
        * vec4(in_Position.x, in_Position.y, in_Position.z, 1.0);
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~


//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec3 v_vPosition;
//
uniform vec4 u_bounds;
//
void main() {
    vec4 col = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
    col.a *= float(v_vPosition.x >= u_bounds[0] && v_vPosition.y >= u_bounds[1]
        && v_vPosition.x < u_bounds[2] && v_vPosition.y < u_bounds[3]);
    gl_FragColor = col;
}

