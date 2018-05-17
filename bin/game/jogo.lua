Terreno = require("bin.game.base.terreno")

local Jogo = {
    Fases = { },
    FaseAtual = 0,
    Personagem = require("bin.game.base.jogador")
}

local function Fase01()
    local fase = require("bin.game.fases.01.fase01")
    return fase
          
end

local function TelaInicial()
    local fase = require("bin.game.fases.00.inicio")
    return fase
end

table.insert(Jogo.Fases, TelaInicial)
table.insert(Jogo.Fases, Fase01)
    

-- Função que Inicializa o Jogo
function Jogo:Inicializa()
    -- Adicina a fase no nogo
    

    math.randomseed(os.time())
    love.window.setMode(Constantes.LARGURA_TELA,
                        Constantes.ALTURA_TELA, 
                        {resizable = Constantes.MAXIMIZAVEL})
    ProximaFase()
end

-- Função que Realiza o Update a tela em cada interação
function Jogo:Update()
    if Jogo.InicializaFase then
        love.graphics.print("ola", 250, 250,0,0,10)
        Jogo.Fase.Inicializa() 
        Jogo.InicializaFase = false;
    end
    Jogo.Fase.Update()    
    love.window.setTitle(Jogo.Fase.Titulo)    
end

function ProximaFase()
    Jogo.FaseAtual = Jogo.FaseAtual + 1
    Jogo.Fase = Jogo.Fases[Jogo.FaseAtual]()  
    Jogo.InicializaFase = true     
end

-- Função que desenha a tela em cada interação
function Jogo:Desenha()    
    Jogo.Fase.Desenha()
end


function Jogo:Teclas_Space()                  
    local acao = Jogo.Fase.Teclas_Space(tecla)
    if acao == Constantes.ACAO.PROXIMA_TELA then
        ProximaFase()
    end
end


return Jogo

