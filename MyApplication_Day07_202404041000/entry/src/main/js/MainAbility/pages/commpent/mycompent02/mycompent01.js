export default {
    data: {
        title: "",
        num:0,
    },
    props:{
    msg :'',
        say:''
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
    },

    onChangge(){
      this.say='被修改'
        this.$emit('event_click',this.say)
    }
}
