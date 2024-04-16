
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
Column({space:10}){
Button('button0')
  Button('button1').enabled(false)
  Button('button2').stateStyles(
    {
      normal:{},
      pressed:{},
      selected:{},
      focused:{},
      disabled:{}

    }
  )
  Button('button3')
  Button('button4')
  Button('button5')
  Button('button6')
  }
}}