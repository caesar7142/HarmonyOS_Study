import { router } from '@kit.ArkUI';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State isCheck: boolean = false;
  @State arrayn: Array<number> = [10, 20, 30, 40, 50, 60];

  build() {
    Column() {
      Button('Leave the jump to the login page').onClick(() => {
        router.pushUrl({ url: "pages/login"
        ,params:{nid:123,uid:789}



        }, router.RouterMode.Standard)
        console.log('Leave.getLength(): ', router.getLength())
      })
      // Button('Destroy page to login page').onClick(()=>{
      //   router.replaceUrl({url:"pages/login"})
      //   console.log('Destroy.getLength(): ',router.getLength())
      // })

    }

  }
}