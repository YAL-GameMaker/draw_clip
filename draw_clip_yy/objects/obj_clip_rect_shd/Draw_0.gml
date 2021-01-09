event_inherited();
if (mouse_check_button(mb_left)) {
    if (mouse_x < (clip_x1 + clip_x2) / 2) {
        clip_x1 = mouse_x;
    } else {
        clip_x2 = mouse_x;
    }
    if (mouse_y < (clip_y1 + clip_y2) / 2) {
        clip_y1 = mouse_y;
    } else {
        clip_y2 = mouse_y;
    }
}
// debug:
event_user(0);
draw_rectangle(clip_x1, clip_y1, clip_x2, clip_y2, true);
// set up shader:
var sh = global.test_sprites ? shd_clip_rect_tex : shd_clip_rect;
shader_set(sh);
var u_bounds = shader_get_uniform(sh, "u_bounds");
shader_set_uniform_f(u_bounds, clip_x1, clip_y1, clip_x2, clip_y2);
// draw things:
event_user(1);
// finish:
shader_reset();

