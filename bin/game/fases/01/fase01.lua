local Fase01 = {}


function DesenhaBackGround()
    for indice, valor in ipairs(Fase01.ImagemBackground) do
        love.graphics.draw(love.graphics.newImage(valor))
    end
end

function TrilhaSonora()
    
    Fase01.musica_ambiente01 = love.audio.newSource(Fase01.SomBackground[1], "static")
    Fase01.musica_ambiente01:setLooping(true)
    Fase01.musica_ambiente01:play()

    Fase01.musica_ambiente02 = love.audio.newSource(Fase01.SomBackground[2], "static")
    Fase01.musica_ambiente02:setLooping(true)
    Fase01.musica_ambiente02:play()   
end

function DesenhaLogo()
    love.graphics.draw(Fase01.logo, 140, 30)
end


function Fase01:Update()
    
end

function Fase01:Inicializa()
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
end


function Fase01:Teclas_Space()
    Fase01.musica_ambiente:stop() 
    return Constantes.ACAO.PROXIMA_TELA        
end

return Fase01