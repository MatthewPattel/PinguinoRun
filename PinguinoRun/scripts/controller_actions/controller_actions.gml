if keyboard_check_released(ord("R")) {
    game_restart();
}
if keyboard_check_released(vk_escape) {
    game_end();
}
if keyboard_check_released(vk_f11) or keyboard_check_released(ord("F")) {
    window_set_fullscreen(!window_get_fullscreen());
}

