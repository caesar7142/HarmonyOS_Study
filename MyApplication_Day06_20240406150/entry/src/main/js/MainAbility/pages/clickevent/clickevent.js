export default {
    data: {
        title: "",
        int:0,
        name:'',
        passwd:''
    },


    onlick(){
        this.int++;
        console.log("hewwo wor")
    },
    changename({value}){
        // val 可以被当做记录相关信息的事件对象
        console.log('触发', value)
        this.name = value
    },
    changgeps({value}){
        // val 可以被当做记录相关信息的事件对象
        console.log('触发', value)
        this.passwd = value
    }




}
