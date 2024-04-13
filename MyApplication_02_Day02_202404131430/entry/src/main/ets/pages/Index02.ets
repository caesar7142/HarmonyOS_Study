@Component
struct  OneColumn{
  msg:string='一段文本     '
  build() {

    Column(){
      Text(this.msg)
      Text(this.msg)
      Text(this.msg)
    }
  }

}







@Entry
@Component
struct Login{
  msg:string='注册新用户  '
  build() {
    Row(){
      OneColumn()
      OneColumn()
      OneColumn()
    }
  }
}
