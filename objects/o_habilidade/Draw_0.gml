if !ativo exit

if instance_exists(pai)
{
    var _dir = point_direction(x,y,pai.x,pai.y)
    draw_set_alpha(0.5)
    draw_line_width(x + lengthdir_x(16,_dir), y + lengthdir_y(16,_dir),pai.x,pai.y,4)
    draw_set_alpha(1)
   
}
draw_sprite_ext(sprite_index,image_index,x,y,xscale,yscale,angle,image_blend,image_alpha)

draw_set_halign(1)
draw_set_valign(1)
draw_set_font(fn_pixel)
draw_set_colour(c_black)
draw_text_transformed(x,y+24,"custo: " + string(custo),0.5,0.5,0)
var _por_cima = position_meeting(mouse_x,mouse_y,id)
if _por_cima
{
    
    draw_text_transformed(x,y-14,nome,0.5,0.5,0)
    draw_set_colour(-1)
}
draw_set_colour(-1)
draw_set_font(-1)
draw_set_halign(-1)
draw_set_valign(-1)
