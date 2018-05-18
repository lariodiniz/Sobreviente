
local function CriaFase01()

    local Fase01 = {}
   
    function Fase01:Update()
             
    end

    function Fase01:Inicializa()
        local pers = require("bin.game.base.jogador")
        jog = pers(10, 10)
        DefinePersonagem(jog)
        AdicionaObjeto(jog)
        AdicionaObjeto(criarBloco01("0",Constantes.ALTURA_TELA-50))
        AdicionaObjeto(criarBloco02("50",Constantes.ALTURA_TELA-50))
  
        LimpaMusicas()         
        AdicionaMusica("01/00.wav")    
        AdicionaMusica("01/01.wav")      
        
        DefineTitulo(" - Fase 01")
    end

    
    -- Função que desenha a tela em cada interação
    function Fase01:Desenha()         
        
                 
    end

    function Fase01:Teclas_Space(tecla)
               --return Constantes.ACAO.PROXIMA_TELA        
    end

    return Fase01
end

return CriaFase01()