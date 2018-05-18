local function CriaFase00()
    local Inicio = {}

    Inicio.desenhaSelect = true

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
        local ImagemBackground = {
            "bk-01.png",
            "bk-02.png",
            "bk-03.png",
            "bk-04.png",
            "bk-05.png",
        }

        for indice, valor in ipairs(ImagemBackground) do
            AdicionaBackGround(valor)
        end

        AdicionaMusica("background/00.wav")               
        
        Inicio.Logo_src = Constantes.PASTA_BASE .. "fases/00/Logo/logo.png"
        DefineTitulo(" - Tela inicial")
        Inicio.logo = love.graphics.newImage(Inicio.Logo_src)   
        
    end

    -- Função que desenha a tela em cada interação
    function Inicio:Desenha()         
        DesenhaBackGround()
        DesenhaLogo()
        DesenhaOpcoes()       
        DesenhaSelect()
    end


    function Inicio:Teclas_Space()
        return Constantes.ACAO.PROXIMA_TELA        
    end

    return Inicio
end

return CriaFase00()