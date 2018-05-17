local function CriaTerreno(_posicaoX, _posicaoY,_altura,_largura)    
    local t = {
        Posicao = {
            x = _posicaoX,
            y = _posicaoY
        },
        Dimensao = {
            altura = _altura,
            largura = _largura
        },      
        imagem = love.graphics.newImage(Constantes.PASTA_IMAGEM_TERRENOS..'jungle tileset.png'),
        Desenha = require("bin.game.base.objeto.desenha")
    }    
    
    return t
end   

return CriaTerreno




