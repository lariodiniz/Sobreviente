local function CriaFase01()

    local Fase01 = {}

    local function DesenhaBackGround()
        for indice, valor in ipairs(Fase01.ImagemBackground) do
            love.graphics.draw(love.graphics.newImage(valor))
        end    
        Fase01.Terreno:Desenha()        
    end

    local function TrilhaSonora()
        
        Fase01.musica_ambiente01 = love.audio.newSource(Fase01.SomBackground[1], "static")
        Fase01.musica_ambiente01:setLooping(true)
        Fase01.musica_ambiente01:play()

        Fase01.musica_ambiente02 = love.audio.newSource(Fase01.SomBackground[2], "static")
        Fase01.musica_ambiente02:setLooping(true)
        Fase01.musica_ambiente02:play()   
    end
    function Fase01:Update()
        
    end

    function Fase01:Inicializa()

        Fase01.Terreno = Terreno(100,100,10,10)    

        Fase01.ImagemBackground = {
            Constantes.PASTA_IMAGEM_BACKGROUND .. "bk-01.png",
            Constantes.PASTA_IMAGEM_BACKGROUND .. "bk-02.png",
            Constantes.PASTA_IMAGEM_BACKGROUND .. "bk-03.png",
            Constantes.PASTA_IMAGEM_BACKGROUND .. "bk-04.png",
            Constantes.PASTA_IMAGEM_BACKGROUND .. "bk-05.png",
        }
        
        Fase01.SomBackground = {
            Constantes.PASTA_SONS .. "01/00.wav",
            Constantes.PASTA_SONS .. "01/01.wav" }  
        
        Fase01.Titulo = Constantes.TITULO .. " - Fase 01"    
        TrilhaSonora() 
    end

    -- Função que desenha a tela em cada interação
    function Fase01:Desenha() 
        DesenhaBackGround()
        jogo.Personagem:Desenha()
    end

    function Fase01:Teclas_Space(tecla)
        Fase01.musica_ambiente01:stop() 
        Fase01.musica_ambiente02:stop() 
        --return Constantes.ACAO.PROXIMA_TELA        
    end

    return Fase01
end

return CriaFase01()