global.colisores = [o_entidades]

global.vida = 5

global.qtd_enemy = 0

function troca_sprite(spr)
{
    if sprite_index != spr
    {
        image_index = 0
        sprite_index = spr
    }
}

global.combo = 0

global.temp_combo = 60 * 5
global.maxtemp_combo = 60 * 5
global.maxcombo = 0
global.maxwavecombo = 0

global.dash_combo = 1


global.coin = 20


global.ctg_vida=
{
    vida1: 0,
    vida2: 0,
    vida3: 0,
    regen: 0
}

global.ctg_dash=
{
    dash:0,
    tempdash2: 0,
    dano_dash2: 0,
    vel_dash2: 0
}

global.ctg_coin=
{
    multicoin1:0,
    multicoin2:0,
    multicoin3:0,
    multicoin4:0,
    multicoin5:0
}
