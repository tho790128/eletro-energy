if !ativo exit

draw_sprite_ext(sprite_index,image_index,x,y,xscale,yscale,angle,image_blend,image_alpha)

draw_set_halign(1)
draw_set_valign(1)
draw_set_font(fn_pixel)
draw_text_transformed(x,y+24,"custo: " + string(custo),0.5,0.5,0)
var _por_cima = position_meeting(mouse_x,mouse_y,id)
if _por_cima
{
    draw_set_colour(c_black)
    draw_text_transformed(x+6,y-14,nome,0.5,0.5,0)
    draw_set_colour(-1)
}

draw_set_font(-1)
draw_set_halign(-1)
draw_set_valign(-1)