cc.Class({
    extends: cc.Component,

    onLoad () {
        cc.director.getScene().on("Cair", this.cair, this);
    },

    cair (evento) {
        
        let dados = evento.getUserData();
        this.node.y -= dados.peso;
    },

});
