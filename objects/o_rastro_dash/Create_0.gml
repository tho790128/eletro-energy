image_blend = choose(c_yellow,c_orange,c_teal)
temp = 0.015
dono = o_player

explode = true

image_speed = 0
if explode
{
    var _explosao = instance_create_depth(x,y,depth,o_explosao)

    _explosao.temp = random_range(0.3,0.05)
    _explosao.vel = 7
    _explosao.dono = dono
}
