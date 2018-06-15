"use strict";
cc._RF.push(module, '24491erh8xLwYJQrq99OtsM', 'Movimentacao');
// Scripts/Geral/Movimentacao.js

"use strict";

cc.Class({
    extends: cc.Component,

    properties: {
        _direcao: cc.Vec2,
        velocidade: cc.Float,
        _deltaTime: 0
    },

    update: function update(deltaTime) {
        this._deltaTime = deltaTime;
    },
    andarPraFrente: function andarPraFrente() {
        this._andar(1);
    },
    andarPraTras: function andarPraTras() {
        this._andar(-1);
    },
    _andar: function _andar(sentido) {
        var deslocamento = this._direcao.mul(sentido * this._deltaTime * this.velocidade);
        this.node.position = this.node.position.add(deslocamento);
    },
    setDirecao: function setDirecao(direcao) {
        this._direcao = direcao.normalize();
    }
});

cc._RF.pop();