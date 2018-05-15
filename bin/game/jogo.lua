local Jogo = {
    Fases = { },
    FaseAtual = 0
}

local InicializaFase = true;
-- Função que Inicializa o Jogo
function Jogo:Inicializa()
    math.randomseed(os.time())
    love.window.setMode(Constantes.LARGURA_TELA,
                        Constantes.ALTURA_TELA, 
                        {resizable = Constantes.MAXIMIZAVEL})
    ProximaFase()
end

-- Função que Realiza o Update a tela em cada interação
function Jogo:Update()
    if InicializaFase then
        Jogo.Fase.Inicializa() 
        InicializaFase = false;
    end
    Jogo.Fase.Update()    
    love.window.setTitle(Jogo.Fase.Titulo)    
end

function ProximaFase()
    Jogo.FaseAtual = Jogo.FaseAtual + 1
    Jogo.Fase = Jogo.Fases[Jogo.FaseAtual]       
end

-- Função que desenha a tela em cada interação
function Jogo:Desenha()    
    Jogo.Fase.Desenha()
end


function Jogo:Teclas_Space()              
    acao = Jogo.Fase.Teclas_Space()
    if acao == Constantes.ACAO.PROXIMA_TELA then
        ProximaFase()
    end
end


return Jogo

