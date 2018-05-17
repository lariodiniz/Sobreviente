local function CriaJogador(_posicaoX, _posicaoY,_altura,_largura)    
    local t = {
        Posicao = {
            x = _posicaoX,
            y = _posicaoY
        },
        Dimensao = {
            altura = _altura,
            largura = _largura
        },      
        imagem = love.graphics.newImage(Constantes.PASTA_IMAGEM_JOGADOR..'parado00.png'),
        Desenha = require("bin.game.base.objeto.desenha")
    }    
    
    return t
end   

return CriaJogador()