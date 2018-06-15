(function() {"use strict";var __module = CC_EDITOR ? module : {exports:{}};var __filename = 'preview-scripts/assets/Scripts/Geral/SofreGravidade.js';var __require = CC_EDITOR ? function (request) {return cc.require(request, require);} : function (request) {return cc.require(request, __filename);};function __define (exports, require, module) {"use strict";
cc._RF.push(module, '5ef8dRrrBhOh6r4BTsiu2IH', 'SofreGravidade', __filename);
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
        //# sourceMappingURL=SofreGravidade.js.map
        