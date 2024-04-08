import router from '@ohos.router';
export default {
    data: {
        title: ""
    },
    onInit() {
        this.title = this.$t('strings.world');
    },
    gotolist(){
        // router.push({
        //     url:"pages/list1/list1"
        // })

        router.replace({
            url:"pages/list1/list1"
        })
    }
}



