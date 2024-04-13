@Entry
@Component
struct Login{
  msg:string='注册新用户'
  build() {
    Row(){
      Column(){
        Text(this.msg)
        Text(this.msg)
        Text(this.msg)
      }
      Column(){
        Text(this.msg)
        Text(this.msg)
        Text(this.msg)
      }
      Column(){
        Text(this.msg)
        Text(this.msg)
        Text(this.msg)
      }
    }
  }
}
