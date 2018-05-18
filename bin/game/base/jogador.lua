local function defineImagem(self)
    self.sprit = self.sprit + 1
    if self.sprit > 6 then
        self.sprit = 1
    end
    self.imagem = self.imagens[self.Constantes.Acoes.PARADO][self.sprit]
end

local function CriaJogador(_posicaoX, _posicaoY,_altura,_largura)    
    local t = {        
        sprit = 1,
        Constantes = {
            Tipo = Constantes.TIPOS.Jogador,
            Acoes = {
                PARADO = 1
            }
        },
        posicao = {
            x = _posicaoX,
            y = _posicaoY
        },
        dimensao = {
            altura = _altura,
            largura = _largura
        },              

        Desenha = require("bin.game.base.objeto.desenha")

    }    
    t.imagens = {
        {
            love.graphics.newImage(Constantes.PASTA_IMAGEM_JOGADOR..'parado00.png'),
            love.graphics.newImage(Constantes.PASTA_IMAGEM_JOGADOR..'parado01.png'),
            love.graphics.newImage(Constantes.PASTA_IMAGEM_JOGADOR..'parado02.png'),
            love.graphics.newImage(Constantes.PASTA_IMAGEM_JOGADOR..'parado03.png'),
            love.graphics.newImage(Constantes.PASTA_IMAGEM_JOGADOR..'parado04.png'),
            love.graphics.newImage(Constantes.PASTA_IMAGEM_JOGADOR..'parado05.png')
        }
}
    t.DefineImagem = defineImagem

    return t
end   

return CriaJogador()