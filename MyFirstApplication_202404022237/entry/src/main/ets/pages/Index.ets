@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(60)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.Red)
      }
      .width('100%')
    }
    .height('100%')
  }
}