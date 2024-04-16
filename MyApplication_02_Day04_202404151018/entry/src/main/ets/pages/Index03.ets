
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
Column({space:10}){
Text('与段文字').backgroundColor(Color.Yellow).width(150).textAlign(TextAlign.End)
  }.backgroundColor(Color.Pink)
}}