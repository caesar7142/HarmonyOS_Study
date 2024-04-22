import { MyCo3, MyCo4 } from '../component/common'

let data:Record<string,number>={'age':88}
@Entry({storage:new LocalStorage(data)})
@Component
struct F1{
  @LocalStorageLink('age') num:number=0
  @State on:boolean=false
  build() {
    Column(){
     Toggle({type:ToggleType.Switch,isOn:$$this.on})
      if(this.on){
        MyCo3()
      }else {
       MyCo4()
      }

    }
  }
}