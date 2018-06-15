(function() {"use strict";var __module = CC_EDITOR ? module : {exports:{}};var __filename = 'preview-scripts/assets/Scripts/Geral/Gravidade.js';var __require = CC_EDITOR ? function (request) {return cc.require(request, require);} : function (request) {return cc.require(request, __filename);};function __define (exports, require, module) {"use strict";
cc._RF.push(module, 'f8cfcBpcYlJr71o8narsw8i', 'Gravidade', __filename);
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
        //# sourceMappingURL=Gravidade.js.map
        