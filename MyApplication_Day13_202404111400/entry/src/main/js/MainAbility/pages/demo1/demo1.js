export default {
    data: {
        value:''
    },
    onInit() {
        this.title = "Hello World";
    }
    ,onchnsge(end){

        // console.log('1112',JSON.stringify(end))
        console.log('1113',end.value)

    }
}
