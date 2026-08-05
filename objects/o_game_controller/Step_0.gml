temp_img_index--

if temp_img_index<= 0
{
    img_index ++
    temp_img_index = 6
}

temp_invoca--
temp_orda--

if temp_invoca<= 0 && qtd_enemy_orda > 0 && temp_orda <= 0 && !instance_exists(o_caixa)
{
    instance_create_depth(irandom_range(40,room_width-40),irandom_range(40,room_height-40),depth,choose(o_enemy_1,o_enemy_2))
    qtd_enemy_orda --
    temp_invoca = 10
    global.qtd_enemy ++
}

if qtd_enemy_orda <= 0 && global.qtd_enemy <= 0
{
    orda ++
    
    qtd_enemy_orda += qtd_enemy_orda_ult + 2
    qtd_enemy_orda_ult = qtd_enemy_orda
    temp_orda = 60 * 3
    
    instance_create_depth(room_width/2,room_height/2,depth,o_caixa)
}


if global.combo > 0
{
    global.temp_combo --
    if global.temp_combo <= 0
    {
        global.combo = 0
        global.temp_combo = global.maxtemp_combo
        global.dash_combo = 1
    }
}