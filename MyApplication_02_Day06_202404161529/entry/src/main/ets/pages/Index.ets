import { curves, router } from '@kit.ArkUI';

@Entry
@Component
struct Index {
@State o:number=1
  @State t:number=0



  build() {
    Column() {

      Button('一个按钮')
         .opacity(this.o)
        .translate({x:this.t})
        .animation({
          duration:500,
          iterations:1,
          delay:200
        })

        .onClick(_=>{
          this.o=this.o==1?0.5:1
                      this.t= this.t==0?50:0




//           animateTo({duration:500},()=>{
// this.o=this.o==1?0.5:1
//             this.t= this.t==0?50:0
//
//
//           })
        })

      Button('一个按钮')
        .opacity(this.o)
        .translate({x:this.t})
        .animation({
          duration:500,
          iterations:1,
          delay:600
        })

        .onClick(_=>{
          this.o=this.o==1?0.5:1
          this.t= this.t==0?50:0




          //           animateTo({duration:500},()=>{
          // this.o=this.o==1?0.5:1
          //             this.t= this.t==0?50:0
          //
          //
          //           })
        })

      Button('一个按钮')
        .opacity(this.o)
        .translate({x:this.t})
        .animation({
          duration:500,
          iterations:1,
          delay:1000,
          curve:curves.springMotion()
        })

        .onClick(_=>{
          this.o=this.o==1?0.5:1
          this.t= this.t==0?50:0




          //           animateTo({duration:500},()=>{
          // this.o=this.o==1?0.5:1
          //             this.t= this.t==0?50:0
          //
          //
          //           })
        })

    }.padding(50)


  }
}