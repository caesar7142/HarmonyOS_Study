
import http from '@ohos.net.http';
export default {
    data: {
        title: "",
        uname: '',
        upwd: ''
    },
    onInit() {
        this.title = "Hello World";
    },
    changeName(val) {
        this.uname=val.value
    },
    changePwd({value}) {
        this.upwd=value
    },
    handleLogin() {
        // 创建请求对象
       let httpRequest= http.createHttp();
        // 发送请求
        // 接口地址
        let url="https:/www.codeboy.com/xuezi/data/user/login.php"
        httpRequest.request(url,{
            method:http.RequestMethod.POST,
            header:{
                'Content-type': 'application/x-www-form-urlencoded'
            },
            extraData: `uname=${this.uname}&upwd=${this.upwd}`
        },(err,res)=>{
            if(!err){
                console.log('res',res.result)
            }
            else {
                console.log('err',JSON.stringify(err))
            }
        })


    },
    changeChecked() {

    }
}
