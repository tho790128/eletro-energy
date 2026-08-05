var _dist = 20

repeat (global.vida)
{
    draw_sprite(s_vida,img_index,20 + _dist,20)
    
    _dist += 28
}
draw_set_font(fn_pixel)
draw_text(window_get_width()/2,20,orda)

draw_set_colour(c_red)
draw_text(window_get_width()-300,20,"inimigos restantes: " + string(global.qtd_enemy))
draw_set_colour(-1)
var _marg = 2
if global.combo > 0
{
    draw_text(150,window_get_height() -100,string(global.combo) + "X combo")
    draw_text(180,window_get_height() -40,string(global.dash_combo) + " dash")
    draw_set_colour(c_black)
    draw_rectangle(150 - _marg,window_get_height() -70 - _marg,300 + _marg,window_get_height() -60 + _marg,false)
    draw_set_colour(c_orange)
    draw_rectangle(150 ,window_get_height() -70 ,150 + global.temp_combo/2 ,window_get_height() -60 ,false)
    
}
draw_set_colour(-1)
draw_set_font(-1)