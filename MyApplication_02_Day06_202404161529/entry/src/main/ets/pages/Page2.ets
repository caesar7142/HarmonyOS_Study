import { router } from '@kit.ArkUI';

@Entry
@Component
struct Page2 {
  @State message: string = 'Hello World';
pageTransition() {
  PageTransitionEnter({ duration:150 }).slide(SlideEffect.Top)

  PageTransitionExit({ duration:150}).slide(SlideEffect.Bottom)

}

  build() {
    Column() {
      Text('第二个页面')
      Button('返回').onClick(()=>{
        router.back()
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Gray)
    .alignItems(HorizontalAlign.Center)

  }
}