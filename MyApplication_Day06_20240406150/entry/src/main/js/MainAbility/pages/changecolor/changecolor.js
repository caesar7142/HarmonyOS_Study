export default {
    data: {
        title: "",
        isChange:true
    },
    onInit() {
        this.title = "Hello World";
    },
    clorchang(){
        this.isChange=!this.isChange;
    }
}
