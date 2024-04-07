export default {
    data: {
        title: "",
        username:"dqqwww",
        password:"dqqwww",
        isTrue:true,
        className:'qw',

        // 列表渲染 简单的渲染
        classList:['php','c++','python'],
        // 列表渲染 复杂渲染
        carList:[
            {id:10,cname:'奔驰',price:'30'},
            {id:11,cname:'奥迪',price:'31'},
            {id:12,cname:'宝马',price:'29'},
        ],
        // 条件渲染
        isShow:false,
        orderType:1
    },
    onInit() {
        this.title = this.$t('strings.world');
    }
}



