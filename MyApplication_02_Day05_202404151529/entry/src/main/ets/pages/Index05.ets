import mediaquery from '@ohos.mediaquery';
import { MediaQuery } from '@ohos.arkui.UIContext';


@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State rw: string = '100%'
  text1: number = 10
  @State  text2: number = 20

  build() {
    Column() {
      Text('text1:'+this.text1).onClick(_=>{this.text1++})

      Text('text2:'+this.text2).onClick(_=>{this.text2++})

    }
  }
}