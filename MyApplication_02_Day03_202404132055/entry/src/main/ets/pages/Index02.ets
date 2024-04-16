@Entry
@Component
struct Index {
  //按钮
  build() {
    Column() {
      //复选框
      Row() {
        Toggle({type:ToggleType.Checkbox })
        Text('洗衣')
      }
      Row() {
        Toggle({type:ToggleType.Checkbox,isOn:true })
          .onChange(data=>{
            console.log('复选框 做法 选中状态改变了：', data)
          })
        Text('做饭')
      }
//开关
      Toggle({type:ToggleType.Switch,isOn:true })
      Toggle({type:ToggleType.Switch })
      //双态
      Toggle({type:ToggleType.Button,isOn:true }){
        Text('running')
      }
      Toggle({type:ToggleType.Button }){
        Text('stoping')
      }


    }

  }
}