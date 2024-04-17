@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State isCheck: boolean = false;
  @State arrayn: Array<number> = [10,20,30,40,50,60];

  build() {
    Column() {
      ForEach(this.arrayn,(item:number,i:number)=>{
        Text(i+'-'+item).backgroundColor(Color.Green).margin({top:20})
      })


    }
    .height('100%')
   
    .alignItems(HorizontalAlign.Start)
  }
}