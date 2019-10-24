var i = 0;
repeat (credits) {
	draw_set_font(Title_Credits);
	draw_set_halign(fa_left);
	draw_set_color(c_black);	
	draw_text(credits_x, credits_y + credits_h * i, credit[i]); 
	i++;	
}