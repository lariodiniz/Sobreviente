cc.Class({
    extends: cc.Component,

    properties: {
        peso: cc.Float,
        _tempo: cc.Float
    },

    // LIFE-CYCLE CALLBACKS:

    onLoad () { 
        this._eventoCair = new cc.Event.EventCustom("Cair", true);
        this._tempo = 1;
    },



    update (deltaTime) {  
        
        this._eventoCair.setUserData({peso : this.peso * deltaTime});
        this.node.dispatchEvent(this._eventoCair);
    },
});
