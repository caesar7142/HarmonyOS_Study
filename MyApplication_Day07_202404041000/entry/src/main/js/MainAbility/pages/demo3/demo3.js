export default {
    data: {
        title: "",
        say:'你好'
    },
    onInit() {
        this.title = "Hello World";
    },
    onChangge(e){

        console.log(e),
      this.say=e.detail
    }
}
