jogo = require("bin.game.jogo")
Base = require("bin.game.base")
telaInicial = require("bin.game.fases.00.inicio")

table.insert(jogo.Fases, telaInicial)

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