export default {
    data: {
        title: "",
        num:0,
    },
    onInit() {
        this.title = "Hello World";
    },
    onIncr(){
    this.num++;
}
,
    onDicr(){
        this.num--;
    }
}
