local Inicio = Base

Inicio.Background = Inicio.Constantes.BACKGROUND .. "bk-01.png"
Inicio.Titulo = Inicio.Constantes.TITULO .. " - Tela inicial"

function Inicio:Update()
    print("TEste")
end

-- Função que desenha a tela em cada interação
function Inicio:Desenha()
    print("TEste 2")
end

return Inicio