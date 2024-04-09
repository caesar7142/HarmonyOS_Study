import router from '@ohos.router';
export default {
    data: {
        title: "",
        uname:''
    },
    onInit() {
        this.title = this.$t('strings.world');
    },
    gotoReg(){
        router.push({
            url:'pages/reg/reg'
        })
       let num= router.getLength();
        console.log("inderx num",num)
    },
    onShow(){

        this.uname=router.getParams().uname
    }
}



