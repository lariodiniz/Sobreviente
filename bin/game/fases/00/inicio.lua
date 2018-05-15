local Inicio = Base

Inicio.Background = {
    Inicio.Constantes.PASTA_BACKGROUND .. "bk-01.png",
    Inicio.Constantes.PASTA_BACKGROUND .. "bk-02.png",
    Inicio.Constantes.PASTA_BACKGROUND .. "bk-03.png",
    Inicio.Constantes.PASTA_BACKGROUND .. "bk-04.png",
    Inicio.Constantes.PASTA_BACKGROUND .. "bk-05.png",
}

Inicio.Logo = Inicio.Constantes.PASTA_BASE .. "fases/00/Logo/logo.png"    

Inicio.Titulo = Inicio.Constantes.TITULO .. " - Tela inicial"

local desenhaSelect = true

function DesenhaBackGround()
    for indice, valor in ipairs(Inicio.Background) do
        love.graphics.draw(love.graphics.newImage(valor))
    end
end

function DesenhaLogo()
    love.graphics.draw(love.graphics.newImage(Inicio.Logo), 140, 30)
end
function DesenhaSelect()
    if desenhaSelect then
        love.graphics.print("->", Constantes.LARGURA_TELA / 2 - 180, Constantes.ALTURA_TELA / 2  + 120, 0, 2);
        desenhaSelect = false
    else
        desenhaSelect = true
    end
end

function DesenhaOpcoes()
    love.graphics.print("Precione Enter para Iniciar", Constantes.LARGURA_TELA / 2 - 150, Constantes.ALTURA_TELA / 2 + 120, 0, 2);
    love.graphics.print("Feito por Lário Diniz", Constantes.LARGURA_TELA / 2 - 40, Constantes.ALTURA_TELA - 20, 0, 1);
end


function Inicio:Update()
    --background = 
end

-- Função que desenha a tela em cada interação
function Inicio:Desenha()
    DesenhaBackGround()
    DesenhaLogo()
    DesenhaOpcoes()
    DesenhaSelect()
end

return Inicio