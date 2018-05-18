local function Colisao(obj)
    obj.Posicao.eixo_y = obj.Posicao.eixo_y + 
                        (Constantes.GRAVIDADE * obj.Constantes.Peso )
end

return Colisao