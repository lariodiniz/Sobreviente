local function Desenha(self)
    if self.Constantes.Tipo == Constantes.TIPOS.Jogador then
        self:DefineImagem()
    end
    
    if self.Constantes.Tipo == Constantes.TIPOS.Terreno then        
        love.graphics.draw(self.imagem, self.quadrante, self.Posicao.eixo_x, self.Posicao.eixo_y)
    else
        love.graphics.draw(self.imagem, self.Posicao.eixo_x, self.Posicao.eixo_y)
    end        
end

return Desenha