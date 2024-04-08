import router from '@ohos.router';
export default {
    data: {
        title: ""
    },
    onInit() {
        this.title = "Hello World";
    },
    gotoindex(){
        router.back({
            url :"pages/index/index"
        })

    }
}
