@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State isCheck: boolean = false;

  build() {
    Column() {
      Row() {
        // Text(this.message)
        //   .fontSize(50)
        //   .fontWeight(FontWeight.Bold)
        Checkbox().select($$this.isCheck)
        Text('我同意本应用的使用条款')
      }
   if(this.isCheck){
     Button('注册')
       .width('100%')
   }
      else{
        Text('请同意本应用的使用条款') .width('100%')
      }

    }
    .height('100%')
    .padding({left:16,right:16,top:100})
    .alignItems(HorizontalAlign.Start)
  }
}