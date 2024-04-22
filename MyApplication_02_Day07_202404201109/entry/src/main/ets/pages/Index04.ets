
@Component
struct MyCo1{
  @State hreard:string='头部'
  @State fotter:string='尾部'
  @Require @BuilderParam butt:()=>void
  build() {

    Column(){
      Text(this.hreard)
      Divider().margin({top:8,bottom:8})
      // Text('中间')
      this.butt()
      Divider().margin({top:8,bottom:8})
       Text(this.fotter)

    }.padding(8)
    .margin(10)
    .border({width:1})
    .borderRadius(5)
    .alignItems(HorizontalAlign.Start)
    .shadow({radius:5})
  }
}



@Entry
@Component
struct F1{

  @State fhreard:string='f头部'
  @State ffotter:string='f尾部'
  @Builder bu(){
    Text('参数')
    Text('参数')
    Text('参数')
  }
  build() {
    Column(){
      // MyCo1()
      // MyCo1({hreard:"hreard"})
      // MyCo1({fotter:"fotter"})
      // MyCo1({hreard:"12",fotter:"fr"})
      //
      // MyCo1({hreard:this.fhreard,fotter:this.ffotter})
// MyCo1({butt:this.bu})
      MyCo1(){
        Text('参数')
        Text('参数')
        Text('参数')
      }
    }
  }
}