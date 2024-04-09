
import http from '@ohos.net.http';
import promptAction from '@ohos.promptAction';
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
                let data=JSON.parse(res.result);

                console.log('data',data)
                console.log('data.code',data.code)
               if(data.code=='200'){
                   promptAction.showToast({
                       message:'login success',
                       duration:3000
                   })
               }else{
                   promptAction.showDialog({
                       title:'login faile',
                       message:'please check uname or ipwd',
                       buttons:[{text:'确定',color:'#333'},{text:'取消',color:'#333'}]
                   })
               }
                this.upwd='',
                this.uname=''
            }
            else {
                console.log('err',JSON.stringify(err))
            }
        })


    },
    changeChecked() {

    }
}
