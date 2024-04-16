@Builder function  vm(){
  Row(){
    Text('text1')
    Text('text2')
    Text('text3')
    Text('text4')
  }
}
@Entry
@Component
struct Index {
  @Builder   vm2(){
  Row(){
    Text('text1')
    Text('text2')
    Text('text3')
    Text('text4')
  }
}

  build() {
    Column() {
    this.vm2();
    }
  }
}