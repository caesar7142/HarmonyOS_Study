




@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
Column(){
  Row().backgroundColor(Color.Blue).height(20).width('1080px')
  Row().backgroundColor(Color.Yellow).height(20).width('360vp')
  Row().backgroundColor(Color.Red).height(20).width('720lpx')

Blank()
  Row().backgroundColor(Color.Blue).height(20).width('1080px')
  Row().backgroundColor(Color.Yellow).height(20).width('360vp')
  Row().backgroundColor(Color.Red).height(20).width('720lpx')
  Blank()
}.height('100%')
  }
}