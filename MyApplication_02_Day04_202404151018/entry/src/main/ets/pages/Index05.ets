@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Scroll(){
  //Flex({direction:FlexDirection.Row,alignItems:ItemAlign.Center,wrap :FlexWrap.NoWrap}) {
    Stack(){
        Button('button0').width(150)
    Button('button1').width(150).flexShrink(0).zIndex(9)
    Button('button2').width(150).flexShrink(0)
    Button('button3').width(150).flexShrink(0)
    Button('button4').width(150).flexShrink(0)
      }.backgroundColor(Color.Pink)
      .height(500)
      .width('100%')
    //  .alignItems(VerticalAlign.Top)
      //.justifyContent(FlexAlign.SpaceAround)

    }
  }
}