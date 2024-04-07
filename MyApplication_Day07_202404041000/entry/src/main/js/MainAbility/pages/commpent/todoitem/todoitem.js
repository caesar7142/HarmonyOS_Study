export default {
    data: {
        items: [
            {
                id:1, item:'吃饭'
            },
            {
                id:2, item:'睡觉'
            },
            {
                id:3, item:'打豆豆'
            },
        ]
    },
    props: {
        item: '',
        idx: ''
    },
    onInit() {
        this.title = "Hello World";
    },
    del(){
    this.$emit('del')
}
}
