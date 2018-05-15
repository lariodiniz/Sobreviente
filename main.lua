jogo = require("bin.game.jogo")
Base = require("bin.game.base")
telaInicial = require("bin.game.fases.00.inicio")
fase01 = require("bin.game.fases.01.fase01")

Constantes = {
    ALTURA_TELA = 600,
    LARGURA_TELA = 800,
    MAXIMIZAVEL = false,    

    ACAO = {
        PROXIMA_TELA = 'PROXIMA_TELA'
    }
}
-- Adicina a fase no nogo
table.insert(jogo.Fases, telaInicial)
--table.insert(jogo.Fases, fase01)


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