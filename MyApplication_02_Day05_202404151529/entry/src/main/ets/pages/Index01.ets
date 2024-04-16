@Extend(Row)
function line(bgc:ResourceColor) {
  .width(100)
 .aspectRatio(2)
  .backgroundColor(bgc)
}


@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer(){
  Row().line(Color.Blue).id('c1')
  Row().line(Color.Red).id('c2').alignRules({
    left:{anchor:'c1',align:HorizontalAlign.End}

  }).offset({x:50,y:60})
  Row().line(Color.Yellow).id('c3').alignRules({
    top:{anchor:'c1',align:VerticalAlign.Bottom}

  }).offset({x:50,y:60})


}.id('contaioner')

  }
}