
@Entry
@Component
struct F1{

  @State fhreard:string='f头部'
  @State ffotter:string='f尾部'
  @Provide num:number=20
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
      // MyCo1({numberCount:50})

      MyCo1()
      Text('num : '+this.num)
      Button('incr').onClick(_=>{this.num++})
    }
  }
}
@Component
struct MyCo1{
  @State hreard:string='头部'
  @State fotter:string='尾部'
  @State numberCount:number=0
  // @Require @BuilderParam butt:()=>void
  build() {

    Column(){
      Text(this.hreard)
      Divider().margin({top:8,bottom:8})
      Text('中间')
      // this.butt()
      Divider().margin({top:8,bottom:8})
      Text('浏览次数'+this.numberCount)

      Button('incr').onClick(_=>{this.numberCount++})
      MyCo2()
    }.padding(8)
    .margin(10)
    .border({width:1})
    .borderRadius(5)
    .alignItems(HorizontalAlign.Start)
    .shadow({radius:5})
  }
}
@Component
struct MyCo2{
  @State hreard:string='头部3'
  @State fotter:string='尾部3'
  @Consume('num') numberCount3:number
  // @Require @BuilderParam butt:()=>void
  build() {

    Column(){
      Text(this.hreard)
      Divider().margin({top:8,bottom:8})
      Text('中间')
      // this.butt()
      Divider().margin({top:8,bottom:8})
      Text('浏览次数3'+this.numberCount3)

      Button('incr').onClick(_=>{this.numberCount3++})

    }.padding(8)
    .margin(10)
    .border({width:1})
    .borderRadius(5)
    .alignItems(HorizontalAlign.Start)
    .shadow({radius:5})
  }
}

