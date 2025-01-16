/// @description Debug
if (global.test_sprites) {
    draw_circle(mouse_x, mouse_y, 32, true);
} else {
    var mouse_r = 40;
    draw_circle(mouse_x, mouse_y, mouse_r, true);
}