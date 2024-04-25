import { loginComponentManager, LoginWithHuaweiIDButton } from '@kit.AccountKit';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
   controller:loginComponentManager.LoginWithHuaweiIDButtonController=
  new loginComponentManager.LoginWithHuaweiIDButtonController()
    .onClickLoginWithHuaweiIDButton((err,response)=>{
     if(err){
       console.log('err   :',err)
     }
      else {
        console.log('response   :',response)
      }
    })
  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        LoginWithHuaweiIDButton({
          params:{
            style:loginComponentManager.Style.BUTTON_RED,
            borderRadius:6,
            loginType:loginComponentManager.LoginType.ID


          },controller:this.controller
        })
          .width(360)
          .height(60)
      }
      .width('100%')
    }
    .height('100%')
  }
}