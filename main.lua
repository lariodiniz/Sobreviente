Constantes = {
    PASTA_BASE = "bin/game/", 
    ALTURA_TELA = 600,
    LARGURA_TELA = 800,
    MAXIMIZAVEL = false, 
    PASTA_IMAGENS = "bin/game/imagens/", 
    PASTA_SONS = "bin/game/sons/",     
    PASTA_IMAGEM_BACKGROUND = "bin/game/imagens/background/",
    PASTA_SONS_BACKGROUND = "bin/game/sons/background/",
    TITULO = "Sobrevivente",       

    ACAO = {
        PROXIMA_TELA = 'PROXIMA_TELA'
    }
}


jogo = require("bin.game.jogo")

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
    if key == 'space' then        
        jogo.Teclas_Space()
    end
end

-- Load some default values for our rectangle.
function love.load()
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