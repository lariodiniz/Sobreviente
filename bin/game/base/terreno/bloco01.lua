
local function CriaBloco01(_posicaoX, _posicaoY)    
    local _altura = 50
    local _largura = 50    
    local bloco01 = require("bin.game.base.terreno.terreno")(_posicaoX, _posicaoY,_altura,_largura)
    bloco01.quadrante = love.graphics.newQuad(0,0,bloco01.dimensao.altura,bloco01.dimensao.largura, bloco01.imagem:getWidth(), bloco01.imagem:getHeight())    
    return bloco01
end   

return CriaBloco01