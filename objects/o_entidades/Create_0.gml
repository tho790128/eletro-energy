atacado = false

velh = 0
velv = 0

max_vel=1

vida=1

temp_dano = 0

max_temp_dano = 30

perde_vida = function(dano=1)
{
    if temp_dano <= 0
    {
        vida -= dano
        temp_dano = max_temp_dano
    }
}