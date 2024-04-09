
import http from '@ohos.net.http';
import promptAction from '@ohos.promptAction';
import featureAbility from '@ohos.ability.featureAbility';
import dataPreferences from '@ohos.data.preferences';
export default {
    data: {
        title: "",
        uname: '',
        upwd: '',
        isChecked:false
    },
    onInit() {
        this.title = "Hello World";
        let context=featureAbility.getContext()
        dataPreferences.getPreferences(context,'myacc',(err,preferences)=>{
            preferences.get('userinfo','',(err,value)=>{
                if(!err){
                    console.log('userinfo read success ',value)
                    this.uname=value[0]
                    this.upwd=value[1]
                    this.isChecked=value[2]
                    // [this.uname,this.upwd]=value
                }
            })
        })

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
                   //luoji
                   if(this.isChecked){
                       let context=featureAbility.getContext()
                       dataPreferences.getPreferences(context,'myacc',(err,preferences)=>{
                           preferences.put('userinfo',[this.uname,this.upwd,JSON.stringify(this.isChecked)],err=>{
                               if(!err){
                                   console.log('写入成功')
                                   preferences.flush(err=>{
                                       if(!err){
                                           console.log('持久化成功')
                                       }
                                       else {
                                           console.log('持久化shibai')
                                       }
                                   })
                               }
                           })
                       }
                       )
                   }

               }else{
                   promptAction.showDialog({
                       title:'login faile',
                       message:'please check uname or ipwd',
                       buttons:[{text:'确定',color:'#333'},{text:'取消',color:'#333'}]
                   })
               }

            }
            else {
                console.log('err',JSON.stringify(err))
            }
        })


    },
    changeChecked() {
     this.isChecked=!this.isChecked

    },onShow(){
        setTimeout(()=>{
            let context=featureAbility.getContext()
            dataPreferences.deletePreferences(context,'myacc',err=>{
                if(!err){
                    console.log('删除成功')
                }
            })
        },1000)
    }
}
