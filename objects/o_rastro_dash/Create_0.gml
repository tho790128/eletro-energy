image_blend = choose(c_yellow,c_orange,c_teal)
temp = 0.015
dono = noone

image_speed = 0

var _explosao = instance_create_depth(x,y,depth,o_explosao)
    
    _explosao.temp = random_range(0.03,0.5)
    _explosao.dono = dono