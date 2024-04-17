import { router } from '@kit.ArkUI'

@Entry
@Component
struct register{
  build() {
    Column(){
      Text('register page')
      Button('Return to login page').onClick(()=>{router.pushUrl({url:"pages/login"})})

    }
  }
}