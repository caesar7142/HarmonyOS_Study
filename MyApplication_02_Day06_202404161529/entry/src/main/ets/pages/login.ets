import { router } from '@kit.ArkUI'
interface RouteParameters {
  nid: number
  uid: number
}
@Entry
@Component
struct login{
  @State nid:number=0
  @State uid:number =0
  onPageShow(): void {
    console.log('onPageShow ',JSON.stringify(router.getParams()))
  }
  aboutToAppear(): void {

    this.nid=(router.getParams() as RouteParameters).nid
    this.uid=(router.getParams() as RouteParameters).uid
  }
  build() {
    Column(){
      Text('login page')
      Button('Return to previous page').onClick(()=>{router.back()})

    }
  }
}