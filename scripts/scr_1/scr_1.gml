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


global.up_dash = 0
global.up_tempo_dash2 = 0
global.up_dano_dash2 = 0
global.up_vel_dash2 = 0

global.up_vida1 = 0
global.up_vida2 = 0
global.up_vida3 = 0
global.up_regen = 0

global.next_room = rm_game


