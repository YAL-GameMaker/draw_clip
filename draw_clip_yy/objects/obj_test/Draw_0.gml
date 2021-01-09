draw_set_color(make_color_rgb(94, 101, 124));
draw_set_font(fnt_test);
var _y = 0;
for (var i = 0; room_exists(i); i = room_next(i)) {
    var s = "[" + string(i + 1) + "]: " + room_get_name(i);
    draw_text(2, _y, s);
    if (keyboard_check_pressed(ord("1") + i)) room_goto(i);
    _y += 24;
}
draw_text(2, _y, "[Q] Toggle between sprite/primitives");
if (keyboard_check_pressed(ord("Q"))) global.test_sprites = !global.test_sprites;