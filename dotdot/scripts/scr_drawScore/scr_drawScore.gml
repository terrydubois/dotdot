draw_set_font(fnt_score);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed_color(room_width / 2, room_height / 2, string(obj_control.playerScore), scoreSize, scoreSize, -camera_get_view_angle(view_camera[0]), scoreColor1, scoreColor2, scoreColor3, scoreColor4, 0.5);