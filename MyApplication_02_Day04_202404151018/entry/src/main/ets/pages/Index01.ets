
@Styles function  box1(){
  .height(20)

}
@Styles function  box2(){

  .backgroundColor(Color.Red)

}
@Styles function  box3(){

  .width('1080px')
}
@Styles function  box4(){

  .backgroundColor(Color.Green)

}



@Extend(Row) function  box5(sp:number,wb:number,cb?:()=>void){

  .backgroundColor(Color.Green)
  .width(sp)
  .height(wb)
  .onClick(cb)

}

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
Column({space:10}){
  Row(){}.box1().box2().box3()
Row().box5(100,20,()=>{
  console.log('1111111111')
})


}.height('100%')
  }
}