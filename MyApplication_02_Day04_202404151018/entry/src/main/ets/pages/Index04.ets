@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Row(){
        Column().width('100px').height(20).backgroundColor(Color.Red)
        Column().width('100px').height(40).backgroundColor(Color.Yellow)
        Column().width('100px').height(80).backgroundColor(Color.Blue)
      }.backgroundColor(Color.Pink)
      .height(500)
      .width('100%')
      .alignItems(VerticalAlign.Top).alignItems(VerticalAlign.Bottom)
      .justifyContent(FlexAlign.SpaceAround)

    }
  }
}