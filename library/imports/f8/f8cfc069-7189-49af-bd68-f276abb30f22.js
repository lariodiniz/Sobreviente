"use strict";
cc._RF.push(module, 'f8cfcBpcYlJr71o8narsw8i', 'Gravidade');
// Scripts/Geral/Gravidade.js

"use strict";

cc.Class({
    extends: cc.Component,

    properties: {
        peso: cc.Float,
        _tempo: cc.Float
    },

    // LIFE-CYCLE CALLBACKS:

    onLoad: function onLoad() {
        this._eventoCair = new cc.Event.EventCustom("Cair", true);
        this._tempo = 1;
    },
    update: function update(deltaTime) {

        this._eventoCair.setUserData({ peso: this.peso * deltaTime });
        this.node.dispatchEvent(this._eventoCair);
    }
});

cc._RF.pop();