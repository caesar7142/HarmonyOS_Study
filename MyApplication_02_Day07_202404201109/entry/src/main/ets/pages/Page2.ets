import { router } from '@kit.ArkUI';

@Entry
@Component
struct Page2 {
  @State message: string = 'this is page2';
  @StorageLink('ClickCount')  count2:number=0

  build() {
    Row() {
      Column() {
        Text(this.message+this.count2)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('click back')
          .onClick(()=>{
          router.back()
        })
        Button('click count')
          .onClick(()=>{
            this.count2++
          })

      }
      .width('100%')
    }
    .height('100%')
  }
}