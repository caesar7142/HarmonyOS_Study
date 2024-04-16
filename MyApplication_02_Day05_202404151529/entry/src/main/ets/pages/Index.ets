@Extend(Text)
function line() {
  .fontSize(50)
  .margin(50)
}


@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Stack({alignContent:Alignment.BottomEnd}) {

      Scroll() {
        Column() {
          Text("0一行文本").line()
          Text("1一行文本").line()
          Text("2一行文本").line()
          Text("3一行文本").line()
          Text("4一行文本").line()
          Text("一行5文本").line()
          Text("6一行文本").line()
          Text("一行7文本").line()
          Text("一行8文本").line()
          Text("9一行文本").line()
        }
      }.width('100%')
      // Row() {
      // }.width(180).aspectRatio(1).backgroundColor(Color.Red).borderRadius(40)
      Row() {
      }.width(80).aspectRatio(1).backgroundColor(Color.Green).borderRadius(40).offset({x:-20,y:-40})
    }

  }
}