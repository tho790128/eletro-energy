atacado = false

velh = 0
velv = 0

max_vel=1

vida=1

temp_dano = 0

max_temp_dano = 30

xscale = 1
yscale = 1

dir = 0
force = 10

dire = 1

perde_vida = function(dano=1,perde=1)
{
    if temp_dano <= 0
    {
        if perde == 1
        {
            vida -= dano
        }
        if perde = 2
        {
           global.vida -= dano 
        }
        temp_dano = max_temp_dano
        
    }
}

