
@Component
struct F3{
  @LocalStorageLink('age') num3:number=0
  build() {
    Text("孙组件"+this.num3).onClick(_=>{this.num3++})
  }
}
@Component
struct F2{
  @LocalStorageLink('age') num2:number=0
  build() {
   Column(){
     Text("子组件"+this.num2).onClick(_=>{this.num2++})
     F3()
   }
  }
}
let data:Record<string,number>={'age':88}
@Entry({storage:new LocalStorage(data)})
@Component
struct F1{
  @LocalStorageLink('age') num:number=0
  build() {
    Column(){
      Text("顶组件"+this.num).onClick(_=>{this.num++})
      F2()
      F2()
    }
  }
}