import router from '@ohos.router';
export default {
    data: {
        title: ""
    },
    onInit() {
        this.title = "Hello World";
    },
    gotoIndex(){
        router.replace({
            url:'pages/index/index',
            params:{
                "uname":"DC"
            }
        })
        // router.back()
        let num= router.getLength();
        console.log("reg num",num)
    }
}
