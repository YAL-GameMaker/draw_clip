/// @description Draw
if (global.test_sprites) {
    draw_sprite(spr_test, 0, mouse_x, mouse_y);
} else {
    var mouse_r = 40;
    draw_circle(mouse_x, mouse_y, mouse_r, false);
}