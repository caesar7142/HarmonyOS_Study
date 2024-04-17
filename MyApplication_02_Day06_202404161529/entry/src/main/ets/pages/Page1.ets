import { router } from '@kit.ArkUI';

@Entry
@Component
struct Index {

  pageTransition() {
    PageTransitionEnter({ duration:150 }).slide(SlideEffect.Top)

    PageTransitionExit({ duration:150}).slide(SlideEffect.Bottom)

  }

  build() {
    Column() {
Text('第一个页面')
      Button('跳转到第二个页面').onClick(()=>{
        router.pushUrl({url:"pages/Page2"})
      })

    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Pink)

  }
}