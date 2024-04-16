@Extend(Row)
function box(bgc:ResourceColor) {
  .width("100%")
.height(180)
  .backgroundColor(bgc)
}


@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
GridRow({columns:12,gutter:{x:10,y:20}}){

  GridCol({span:{sm:12,xs:12,md:6,lg:3}}){Row().box(Color.Red)}
  GridCol({span:{sm:12,xs:12,md:6,lg:3}}){Row().box(Color.Yellow)}
  GridCol({span:{sm:12,xs:12,md:6,lg:3}}){Row().box(Color.Green)}
  GridCol({span:{sm:12,xs:12,md:6,lg:3}}){Row().box(Color.Pink)}
}
  }
}