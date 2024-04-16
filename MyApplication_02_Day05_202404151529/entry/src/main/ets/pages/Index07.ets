import mediaquery from '@ohos.mediaquery';
import { MediaQuery } from '@ohos.arkui.UIContext';


@Entry
@Component
struct Index {

  @State @Watch('oncountchang') count: number = 0
  @State  text2: number = 20
  oncountchang(property:string){
    console.log('发生改变',property,this.count)

  }
  build() {
    Column() {
      Button('button: '+this.count).onClick(() => {
        this.count++
      })

    }
  }
}