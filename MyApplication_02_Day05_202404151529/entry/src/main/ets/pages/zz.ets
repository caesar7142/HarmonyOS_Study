import mediaquery from '@ohos.mediaquery';
import { MediaQuery } from '@ohos.arkui.UIContext';


@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State rx: number = 0;
  @State ry: number = 0;

  build() {
    Column() {
      // TextInput({placeholder:'第一'})
      // TextInput({placeholder:'第二'}).onKeyEvent((key)=>{
      //   console.log('12',key.keyText)
      // })
      // TextInput({placeholder:'第三'})
      Image($rawfile('go.jpg'))
        .objectFit(ImageFit.Cover)
        .width('500px')
        .aspectRatio(1)
        // .margin(20)
        .borderRadius(90)// .onDragStart(()=>{console.log('拖拉onDragStart')})
          // .onDragEnter(()=>{console.log('拖拉onDragEnter')})
          // .onDragLeave(()=>{console.log('拖拉onDragLeave')})
          // .onDragEnd(()=>{console.log('拖拉onDragEnd')})
          // .onDragMove(()=>{console.log('拖拉onDragMove')})
          // .onClick(()=>{console.log('dianji')})
        .onTouch((e) => {
          if (e.type == TouchType.Down) {
            console.log('down')
          }
        else  if (e.type == TouchType.Up) {
            console.log('Up')
          }
          else if (e.type == TouchType.Move) {
            console.log('Move',this.rx)
          }
          else {
            console.log('Cancel')
          }
          this.rx=e.touches[0].windowX
         this.ry= e.touches[0].windowY
        })
        .offset({x:this.rx,y:this.ry})
    }
  }
}