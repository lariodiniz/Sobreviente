local function CriaTerreno(_posicaoX, _posicaoY,_altura,_largura)    
    local t = {
        Constantes = {
            Tipo = Constantes.TIPOS.Terreno
        },
        posicao = {
            x = _posicaoX,
            y = _posicaoY
        },
        dimensao = {
            altura = _altura,
            largura = _largura
        },      
        imagem = Constantes.IMAGENS_TERRENO_FASE[1],
        
        Desenha = require("bin.game.base.objeto.desenha")
    } 
    
    t.quadrante = love.graphics.newQuad(0,0,t.dimensao.altura,t.dimensao.largura, t.imagem:getWidth(), t.imagem:getHeight())
    
    return t
end   

return CriaTerreno




