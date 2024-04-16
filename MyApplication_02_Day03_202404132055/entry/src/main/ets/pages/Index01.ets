@Entry
@Component
struct Index {
  //按钮

  build() {
    Row() {
      Column() {
        Row(){
          Radio({value:'男',group:'男'}).checked(true)
            .onChange(isCheck=>{
              console.log('选择男 ：',isCheck)
            })
          Text('男')
        }
        Row() {
          Radio({ value: '女', group: '男' })
            .onChange(data=>{
              console.log('选择女 ：',JSON.stringify(this))
            })
          Text('女')
        }
      }

    }

  }
}