@Entry
@Component
struct Index {
  //按钮
  build() {
    Column() {
      //单杠文本输入框
      TextInput()
      TextInput({placeholder:'请输入手机号'})
        .backgroundColor(Color.Transparent)
      TextInput({text:'请输入手机号text'})
      TextInput({placeholder:'NEW_PASSWORD'}).type(InputType.USER_NAME)
        .onChange(()=>{
          console.log('onChange')
        })  .onFocus(()=>{
        console.log('onFocus')
      })  .onClick(()=>{
        console.log('onClick')
      })
        .onBlur(()=>{
          console.log('onBlur')
        })
        .maxLength(12)

    }

  }
}