event_inherited();
var clip_w = 256;
var clip_h = 256;
var clip_ox = 128;
var clip_oy = 128;
if (mouse_check_button(mb_left)) {
    clip_x = mouse_x;
    clip_y = mouse_y;
}
var clip_r = 70;
var clip_r2 = 40;
if (!surface_exists(clip_mask)) {
    clip_mask = surface_create(clip_w, clip_h);
    var _color = draw_get_color();
    //
    surface_set_target(clip_mask);
    draw_clear_alpha(c_white, 0);
    draw_set_color(c_white);
    //
    draw_circle(clip_w / 2, clip_h / 2, clip_r, false);
    draw_set_blend_mode(bm_subtract);
    draw_circle(clip_w / 2, clip_h / 2, clip_r2, false);
    draw_set_blend_mode(bm_normal);
    //
    surface_reset_target();
    draw_set_color(_color);
}
var clip_r = 70;
//
event_user(0);
draw_circle(clip_x, clip_y, clip_r, true);
draw_circle(clip_x, clip_y, clip_r2, true);
//
var sh = global.test_sprites ? shd_clip_mask_tex : shd_clip_mask;
shader_set(sh);
var u_mask = shader_get_sampler_index(sh, "u_mask");
texture_set_stage(u_mask, surface_get_texture(clip_mask));
var u_rect = shader_get_uniform(sh, "u_rect");
shader_set_uniform_f(u_rect, clip_x - clip_ox, clip_y - clip_oy, clip_w, clip_h);
//
event_user(1);
//
shader_reset();

