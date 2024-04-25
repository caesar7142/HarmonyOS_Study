import { common, Want } from '@kit.AbilityKit';

@Entry
@Component
struct IndexLive {
  @State message: string = '直播';
aboutToAppear(): void {
}
  onPageShow(): void {
  }

  build() {
    Row() {
      Column({space:20}) {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
    Button('显式').onClick(()=>{
      let ctx=getContext() as common.UIAbilityContext

      let want:Want={
        bundleName:'com.example.myapplication_02_day11_202404251400',
        abilityName:'Myability1'
      }
      ctx.startAbility(want)
    })

        Button('隐式').onClick(()=>{

        })

      }
      .width('100%')
    }
    .height('100%')
  }
}