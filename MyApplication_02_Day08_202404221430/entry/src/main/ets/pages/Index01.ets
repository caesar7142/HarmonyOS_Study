import { UserRegister } from '../model/data';
import { promptAction } from '@kit.ArkUI';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State phone: string = '';
  @State pwd: string = '';
  build() {
    Column(){
TextInput({placeholder:"请输入手机号码",text:$$this.phone,})
      TextInput({placeholder:"请输入密码",text:$$this.pwd})
      Button('注册').onClick(async ()=>{
     if(this.message.length<1||this.pwd.length<1){
       promptAction.showToast({message: '不能为空',
         duration: 3000})
     }
     let data=   await UserRegister(this.phone,this.pwd)
        console.log('',JSON.stringify(data))
      })
    }
  }
}