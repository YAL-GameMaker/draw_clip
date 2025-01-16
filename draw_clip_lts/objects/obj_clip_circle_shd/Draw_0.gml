event_inherited();
if (mouse_check_button(mb_left)) {
    clip_x = mouse_x;
    clip_y = mouse_y;
}
var clip_r = 70;
//
event_user(0);
draw_circle(clip_x, clip_y, clip_r, true);
//
var sh = global.test_sprites ? shd_clip_circle_tex : shd_clip_circle;
shader_set(sh);
var u_circle = shader_get_uniform(sh, "u_circle");
shader_set_uniform_f(u_circle, clip_x, clip_y, clip_r);
//
event_user(1);
//
shader_reset();

