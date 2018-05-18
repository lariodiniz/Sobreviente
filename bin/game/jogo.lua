
local Jogo = {
    Relogio = {
        Hor = 0,
        Min = 0,
        Seg = 0
    },
    Fases = { },
    FaseAtual = 0,
    objetos = {},
    Personagem = {},   

    musicasCarregadas = false,
    musicaAmbiente = {},
    somBackground = {},
    
    backGroundImagens = {},   
    Gravidade = require("bin.game.base.objeto.gravidade") 
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
        Jogo.Fase.Inicializa() 
        TrilhaSonora()           
        Jogo.InicializaFase = false;
        love.window.setTitle(Jogo.Fase.Titulo)
    end
    
    Jogo.Fase.Update()  
    AplicaGravidade()    
end


function DefineTitulo(titulo)
    Jogo.Fase.Titulo = Constantes.TITULO .. titulo    
end

function ProximaFase()
    Jogo.FaseAtual = Jogo.FaseAtual + 1
    Jogo.Fase = Jogo.Fases[Jogo.FaseAtual]()  
    Jogo.InicializaFase = true     
end

-- Função que desenha a tela em cada interação
function Jogo:Desenha()
    DesenhaBackGround()    
    Jogo.Fase.Desenha()    
    DesenhaObjetos() 
end


-- FUNÇÕES DE TECLAS
function Jogo:Teclas_Space()                  
    local acao = Jogo.Fase.Teclas_Space(tecla)
    if acao == Constantes.ACAO.PROXIMA_TELA then
        ProximaFase()
    end
end

function DefinePersonagem(obj)
    Jogo.Personagem = obj
end

-- FUNÇÕES OBJETO
function DesenhaObjetos()
    for indice, valor in ipairs(Jogo.objetos) do
        valor:Desenha()
    end    
end

function AplicaGravidade()
    for indice, valor in ipairs(Jogo.objetos) do
        Jogo.Gravidade(valor)
    end    
end

function LimpaObjetos() 
    Jogo.objetos = {}
end

function AdicionaObjeto(objeto)     
    table.insert(jogo.objetos, objeto)               
end

-- FUNÇÕES BACKGROUND
function DesenhaBackGround() 
     for indice, valor in ipairs(Jogo.backGroundImagens) do
        love.graphics.draw(love.graphics.newImage(valor))
    end
 end

function LimpaBackGrounds() 
    Jogo.backGroundImagens = {}
end

function AdicionaBackGround(imagem)     
    table.insert(jogo.backGroundImagens, Constantes.PASTA_IMAGEM_BACKGROUND.. imagem)               
end

-- FUNÇÕES MUSICA 
local function CarregaMusicas()
    for indice, valor in ipairs(Jogo.somBackground) do
        table.insert(Jogo.musicaAmbiente, love.audio.newSource(valor, "static"))
    end
    Jogo.musicasCarregadas = true;
end

function TrilhaSonora()    
   if Jogo.musicasCarregadas == false then
        CarregaMusicas()
    end

    for indice, valor in ipairs(Jogo.musicaAmbiente) do
        valor:setLooping(true)
        valor:play()
    end
end

function LimpaMusicas() 
    for indice, valor in ipairs(Jogo.musicaAmbiente) do        
        valor:stop()
    end    
    Jogo.somBackground = {}
    Jogo.musicaAmbiente = {}        
end

function AdicionaMusica(musica) 
    Jogo.musicasCarregadas = false
    table.insert(jogo.somBackground, Constantes.PASTA_SONS.. musica)               
end

return Jogo

