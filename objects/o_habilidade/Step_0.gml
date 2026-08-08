if variable_global_get(variavel) =1 
{
    ativo = true
    comprado = true
}

if !ativo exit
var _por_cima = position_meeting(mouse_x,mouse_y,id)
var _click = mouse_check_button_pressed(mb_left)

if comprado = false image_alpha = 0.7
else image_alpha = 1

if _por_cima
{
    
    if _click
    {
        var _compra = false
        if custo <= global.coin && comprado == false
        {
            global.coin -= custo 
            comprado = true
            _compra = true
            variable_global_set(variavel,1)
            
            
        }
        xscale = lerp(xscale,2.5,0.4)
        yscale = lerp(yscale,2.5,0.4)
        var _qtd = array_length(alvos)
        if _qtd > 0 && _compra 
        {
            for(var i = 0;i < _qtd;i++)
            {
                var _atual = alvos[i]
                if _atual.ativo == false
                {
                    _atual.ativo = true
                }
            }
            
        }
        
    }
    else
    
    xscale = lerp(xscale,1.5,0.1)
    yscale = lerp(yscale,1.5,0.1)
}
else
{
    xscale = lerp(xscale,1,0.2)
    yscale = lerp(yscale,1,0.2)
}

var _qtd = array_length(alvos)
if _qtd > 0 && comprado
{
    for(var i = 0;i < _qtd;i++)
    {
        var _atual = alvos[i]
        if _atual.ativo == false
        {
            _atual.ativo = true
        }
    }
    
}