export default {
    data: {
        title: ""
    },
    props: {
        items: []
    },
    onInit() {
        this.title = "Hello World";
    },
    del(){
        this.$emit('del')
    }
}
