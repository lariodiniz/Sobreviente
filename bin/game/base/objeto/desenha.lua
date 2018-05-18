local function Desenha(self)
    if self.Constantes.Tipo == Constantes.TIPOS.Jogador then
        self:DefineImagem(self)
    end
    
    if self.Constantes.Tipo == Constantes.TIPOS.Terreno then
        
        love.graphics.draw(self.imagem, self.quadrante, self.posicao.x, self.posicao.y)
    else
        love.graphics.draw(self.imagem, self.posicao.x, self.posicao.y)
    end    
    
end

return Desenha