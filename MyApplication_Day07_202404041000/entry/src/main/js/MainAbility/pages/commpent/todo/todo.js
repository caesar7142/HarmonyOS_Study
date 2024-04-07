export default {
    data: {
        item: '',
        items:[]
    },
    onInit() {
        this.title = "Hello World";
    },
    changeItem({value}){
        this.item=value
    },
    addTodo(){
        this.items.push(this.item)
            console.log(this.items)
    }

,
    del(e){
        this.items.splice(e.detail,1)
    }



}
