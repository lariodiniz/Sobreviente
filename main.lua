Constantes = {
    PASTA_BASE = "bin/game/", 
    ALTURA_TELA = 600,
    LARGURA_TELA = 800,
    MAXIMIZAVEL = false,     
    TIPOS = {
        Jogador = "JOGADOR",
        Terreno = "TERRENO"
    },
    -- Pastas Bases
    PASTA_IMAGENS = "bin/game/imagens/", 
    PASTA_SONS = "bin/game/sons/",     

    --Pastas de Imagens    
    PASTA_IMAGEM_BACKGROUND = "bin/game/imagens/background/",
    PASTA_IMAGEM_TERRENOS = "bin/game/imagens/terrenos/",
    PASTA_IMAGEM_JOGADOR = "bin/game/imagens/jogador/",

    -- Pastas de Som
    PASTA_SONS_BACKGROUND = "bin/game/sons/background/",

    --Titulo
    TITULO = "Sobrevivente",       

    --Ações Globais
    ACAO = {
        PROXIMA_TELA = 'PROXIMA_TELA'
    }
}


jogo = require("bin.game.jogo")



criarBloco01 = require("bin.game.base.terreno.bloco01")
criarBloco02 = require("bin.game.base.terreno.bloco01")

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
    if key == 'space' then        
        jogo.Teclas_Space('key')
    end
end

-- Load some default values for our rectangle.
function love.load()
    Constantes.IMAGENS_TERRENO_FASE = {
        love.graphics.newImage(Constantes.PASTA_IMAGEM_TERRENOS..'jungle tileset.png')
    }

    Constantes.IMAGENS_JOGADOR = {
            {
                love.graphics.newImage(Constantes.PASTA_IMAGEM_JOGADOR..'parado00.png'),
                love.graphics.newImage(Constantes.PASTA_IMAGEM_JOGADOR..'parado01.png'),
                love.graphics.newImage(Constantes.PASTA_IMAGEM_JOGADOR..'parado02.png'),
                love.graphics.newImage(Constantes.PASTA_IMAGEM_JOGADOR..'parado03.png'),
                love.graphics.newImage(Constantes.PASTA_IMAGEM_JOGADOR..'parado04.png'),
                love.graphics.newImage(Constantes.PASTA_IMAGEM_JOGADOR..'parado05.png')
            }
    }    
    jogo.Inicializa()
end
 
-- Increase the size of the rectangle every frame.
function love.update(dt)
    jogo.Update()
end
 
-- Draw a coloured rectangle.
function love.draw()
    jogo.Desenha()
end