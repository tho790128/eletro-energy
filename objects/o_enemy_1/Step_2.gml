temp_dano--



move_and_collide(velh,velv,global.colisores)

if vida <= 0
{
    estado = explode_estado
}
if velh > 0 dire = 1
if velh < 0 dire = -1



depth = -y

x = clamp(x,sprite_get_width(sprite_index)/2,room_width - sprite_get_width(sprite_index)/2)
y = clamp(y,sprite_get_height(sprite_index)/2,room_height - sprite_get_height(sprite_index)/2)

if temp_dano > 0 image_alpha = 0.5
else image_alpha = 1