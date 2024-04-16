import mediaquery from '@ohos.mediaquery';
import { MediaQuery } from '@ohos.arkui.UIContext';


@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
@State rw:string='100%'



  smListener:mediaquery.MediaQueryListener=
    mediaquery.matchMediaSync('screen and  (width>=320vp) and (width<600vp)')
  mdListener:mediaquery.MediaQueryListener=
    mediaquery.matchMediaSync('screen and  (width>=600vp) and (width<840vp)')
  aboutToAppear(): void {
    console.log("组件自动调用")
    this.smListener.on('change',(res)=>{
      if(res.matches){
        console.log("媒体发生改变符合SM",JSON.stringify(res.media))
      }
      else{
        console.log("媒体发生改变不符合SM",JSON.stringify(res))
      }
    })


    this.mdListener.on('change',(res)=>{
      if(res.matches){
        console.log("媒体发生改变符合SM",JSON.stringify(res.media))
      }
      else{
        console.log("媒体发生改变不符合SM",JSON.stringify(res))
      }
    })
  }
  build() {
Row(){
  Button('button1').width('100%')
}.padding(10).width(this.rw)
  }
}