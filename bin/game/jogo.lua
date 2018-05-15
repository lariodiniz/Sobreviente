local Jogo = {
    Fases = { },

    Constantes = {
        ALTURA_TELA = 480,
        LARGURA_TELA = 320,
        MAXIMIZAVEL = false,
    }
}

-- Função que Inicializa o Jogo
function Jogo:Inicializa()
    math.randomseed(os.time())
    love.window.setMode(Jogo.Constantes.ALTURA_TELA,
                        Jogo.Constantes.LARGURA_TELA, 
                        {resizable = Jogo.Constantes.MAXIMIZAVEL})
    
    Jogo.Fase = Jogo.Fases[1]
end

-- Função que Realiza o Update a tela em cada interação
function Jogo:Update()
    Jogo.Fase.Update()    
    love.window.setTitle(Jogo.Fase.Titulo)
    background = love.graphics.newImage(Jogo.Fase.Background)
end

-- Função que desenha a tela em cada interação
function Jogo:Desenha()
    love.graphics.draw(background, 0,0)
    Jogo.Fase.Desenha()
end

return Jogo

