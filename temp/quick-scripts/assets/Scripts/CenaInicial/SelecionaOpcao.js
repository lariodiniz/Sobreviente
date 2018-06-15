(function() {"use strict";var __module = CC_EDITOR ? module : {exports:{}};var __filename = 'preview-scripts/assets/Scripts/CenaInicial/SelecionaOpcao.js';var __require = CC_EDITOR ? function (request) {return cc.require(request, require);} : function (request) {return cc.require(request, __filename);};function __define (exports, require, module) {"use strict";
cc._RF.push(module, 'a294aebea5Eeo9UOfuuRohe', 'SelecionaOpcao', __filename);
// Scripts/CenaInicial/SelecionaOpcao.js

"use strict";

var Teclado = require("Teclado");

cc.Class({
    extends: cc.Component,

    properties: {

        tempoPiscar: cc.Float,

        _tempoParaPiscar: cc.Float,
        _teclaPrecionada: cc.Boolean,
        _selecionado: cc.Integer
    },

    // LIFE-CYCLE CALLBACKS:

    onLoad: function onLoad() {

        this._selecionado = 0;
        this._tempoParaPiscar = this.tempoPiscar;
        this._teclaPrecionada = false;
    },
    start: function start() {},
    update: function update(deltaTime) {
        this._tempoParaPiscar -= deltaTime;

        if (!this._teclaPrecionada) {
            this.teclaPrecionada();
        }
        this.defineSelecionado();
        this.piscar();
    },
    teclaPrecionada: function teclaPrecionada() {
        if (Teclado.estaPressionada(cc.KEY.w) || Teclado.estaPressionada(cc.KEY.s)) {
            this._teclaPrecionada = true;
        } else if (Teclado.estaPressionada(cc.KEY.space)) {
            this.proximaFase();
        }
    },
    proximaFase: function proximaFase() {
        var label = this.node.children[this._selecionado].getComponent(cc.Label);
        if (label.string == "Créditos") {
            cc.director.loadScene("Creditos");
        } else if (label.string == "Iniciar Jogo") {
            cc.director.loadScene("Fase01");
        }
    },
    defineSelecionado: function defineSelecionado() {
        if (this._teclaPrecionada) {
            this.node.children[this._selecionado].active = true;

            if (this._selecionado == 0) {
                this._selecionado = 1;
            } else if (this._selecionado == 1) {
                this._selecionado = 0;
            }

            this._teclaPrecionada = false;
        }
    },
    piscar: function piscar() {
        if (this._tempoParaPiscar < 0) {

            this._tempoParaPiscar = this.tempoPiscar;
            var selecionado = this.node.children[this._selecionado];
            selecionado.active = !selecionado.active;
        }
    }
});

cc._RF.pop();
        }
        if (CC_EDITOR) {
            __define(__module.exports, __require, __module);
        }
        else {
            cc.registerModuleFunc(__filename, function () {
                __define(__module.exports, __require, __module);
            });
        }
        })();
        //# sourceMappingURL=SelecionaOpcao.js.map
        