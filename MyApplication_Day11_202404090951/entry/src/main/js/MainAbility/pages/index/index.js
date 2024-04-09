import router from '@ohos.router';
export default {
    data: {
        title: ""
    },
    onInit() {
        this.title = this.$t('strings.world');
    }
    ,linkLogin(){
        router.push({
            'url':'pages/login/login'
        })
    }

,linkDemo1(){
        router.push({
            'url':'pages/demo01/demo01'
        })
    },
    linkFs(){
        router.push({
            'url':'pages/fs/fs'
        })
    }
}



