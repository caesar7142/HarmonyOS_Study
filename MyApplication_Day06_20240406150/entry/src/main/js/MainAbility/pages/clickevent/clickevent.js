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

    changename(value){
        this.name=value;
    }, changgeps(value){
        this.passwd=value;
    }


}
