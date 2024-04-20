import { MyCo3, MyCo4 } from '../component/common';
import { router } from '@kit.ArkUI';

@Component
struct MyCo1{
  build() {
    Button('MyCo1-b1')
  }
}

AppStorage.setOrCreate('ClickCount',100);


@Entry({routeName:'mail'})
@Component({freezeWhenInactive:true})
struct Index {
  @State message: string = 'Hello World';
@StorageLink('ClickCount') @Watch('countChang') count:number=0
  countChang(){
    console.log('count 发生改变 ',this.count)
}

  build() {
    Row() {
      Column() {
        Text(this.message+this.count)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        MyCo2()
        MyCo3()
        MyCo4()
        Button('跳转')
          .onClick(()=>{
            router.pushUrl({
              url:"pages/Page2"
            })
          })
        Button('修改全局变量').onClick(_=>{
          this.count++
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}
@Component
struct MyCo2{
  build() {
    Column(){
      MyCo1()
      Button('MyCo2-b1')
      Button('MyCo2-b1')
    }

  }
}