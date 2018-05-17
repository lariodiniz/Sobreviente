local function CriaFase00()
    local Inicio = {}

    Inicio.desenhaSelect = true

    local function DesenhaBackGround()
        for indice, valor in ipairs(Inicio.ImagemBackground) do
            love.graphics.draw(love.graphics.newImage(valor))
        end
    end

    local function TrilhaSonora()
        Inicio.musica_ambiente = love.audio.newSource(Inicio.SomBackground, "static")
        Inicio.musica_ambiente:setLooping(true)
        Inicio.musica_ambiente:play()
    end

    local function DesenhaLogo()
        love.graphics.draw(Inicio.logo, 140, 30)
    end
    local function DesenhaSelect()
        if Inicio.desenhaSelect then
            love.graphics.print("->", Constantes.LARGURA_TELA / 2 - 180, Constantes.ALTURA_TELA / 2  + 120, 0, 2);
            Inicio.desenhaSelect = false
        else
            Inicio.desenhaSelect = true
        end
    end

    local function DesenhaOpcoes()
        love.graphics.print("Precione Espaço para Iniciar", Constantes.LARGURA_TELA / 2 - 150, Constantes.ALTURA_TELA / 2 + 120, 0, 2);
        love.graphics.print("Feito por Lário Diniz", Constantes.LARGURA_TELA / 2 - 40, Constantes.ALTURA_TELA - 20, 0, 1);
    end


    function Inicio:Update()
        
    end

    function Inicio:Inicializa()
        Inicio.ImagemBackground = {
            Constantes.PASTA_IMAGEM_BACKGROUND .. "bk-01.png",
            Constantes.PASTA_IMAGEM_BACKGROUND .. "bk-02.png",
            Constantes.PASTA_IMAGEM_BACKGROUND .. "bk-03.png",
            Constantes.PASTA_IMAGEM_BACKGROUND .. "bk-04.png",
            Constantes.PASTA_IMAGEM_BACKGROUND .. "bk-05.png",
        }
        
        Inicio.SomBackground = Constantes.PASTA_SONS_BACKGROUND .. "00.wav"        
        
        Inicio.Logo_src = Constantes.PASTA_BASE .. "fases/00/Logo/logo.png"
        Inicio.Titulo = Constantes.TITULO .. " - Tela inicial"    
        Inicio.logo = love.graphics.newImage(Inicio.Logo_src)   

        
        TrilhaSonora() 
    end

    -- Função que desenha a tela em cada interação
    function Inicio:Desenha() 
        DesenhaBackGround()
        DesenhaLogo()
        DesenhaOpcoes()       
        DesenhaSelect()
    end


    function Inicio:Teclas_Space()
        Inicio.musica_ambiente:stop() 
        return Constantes.ACAO.PROXIMA_TELA        
    end

    return Inicio
end

return CriaFase00()