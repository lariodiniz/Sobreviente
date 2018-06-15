"use strict";
cc._RF.push(module, '5ef8dRrrBhOh6r4BTsiu2IH', 'SofreGravidade');
// Scripts/Geral/SofreGravidade.js

"use strict";

cc.Class({
    extends: cc.Component,

    onLoad: function onLoad() {
        cc.director.getScene().on("Cair", this.cair, this);
    },
    cair: function cair(evento) {

        var dados = evento.getUserData();
        this.node.y -= dados.peso;
    }
});

cc._RF.pop();