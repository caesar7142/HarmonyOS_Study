import { loginComponentManager, LoginWithHuaweiIDButton } from '@kit.AccountKit';
import { abilityAccessCtrl } from '@kit.AbilityKit';
import { AutoAdComponent, identifier } from '@kit.AdsKit';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
   @State showAD :boolean=false
  @State OAID :string=""

  async aboutToAppear() {
    let mar=abilityAccessCtrl.createAtManager()
   let res= await mar.requestPermissionsFromUser(getContext(this),['ohos.permission.APP_TRACKING_CONSENT'])
if(res.authResults[0]===0){
 this.OAID= await identifier.getOAID()
  this.showAD=!this.showAD
}


  }
  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        if(this.showAD){
          AutoAdComponent({
            adParam:{
              adType:8,
              adId:'testw6vs28auh3',
              adWidth:360,
              adHeight:144,
              oaid:this.OAID
            },
            adOptions:{
              adContentClassification:'A'
            },
            displayOptions:{
              rfreshTime:30000

            },
            interactionListener:{
              onStatusChanged:(status)=>{
         if(status==='onAdClose'){
           this.showAD=!this.showAD
         }
              }
            }
          }).width(360)
            .height(144)
        }

      }
      .width('100%')
    }
    .height('100%')
  }
}