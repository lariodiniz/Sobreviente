local Jogo = {
    Fases = { },

}

Constantes = {
    ALTURA_TELA = 600,
    LARGURA_TELA = 800,
    MAXIMIZAVEL = false,
}

-- Função que Inicializa o Jogo
function Jogo:Inicializa()
    math.randomseed(os.time())
    love.window.setMode(Constantes.LARGURA_TELA,
                        Constantes.ALTURA_TELA, 
                        {resizable = Constantes.MAXIMIZAVEL})
    
    Jogo.Fase = Jogo.Fases[1]
end

-- Função que Realiza o Update a tela em cada interação
function Jogo:Update()
    Jogo.Fase.Update()    
    love.window.setTitle(Jogo.Fase.Titulo)    
end

-- Função que desenha a tela em cada interação
function Jogo:Desenha()    
    Jogo.Fase.Desenha()
end

return Jogo

