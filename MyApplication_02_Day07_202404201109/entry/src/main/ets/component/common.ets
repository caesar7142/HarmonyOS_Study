
@Component
export struct MyCo3{

  aboutToAppear(): void {
    console.log('MyCo3 将要显示')
  }
  aboutToDisappear(): void {
    console.log('MyCo3 将要销毁')
  }
  build() {
    TextInput({placeholder:"MyCo3-TextInput"})
      .backgroundColor(Color.Pink)
  }
}
@Reusable
@Component
export struct MyCo4{
  aboutToRecycle() {
    console.log('MyCo4 将要被回收')
  }
  aboutToReuse() {
    console.log('MyCo4 将要被重新使用')
  }

  aboutToAppear(): void {
    console.log('MyCo4 将要显示')
  }
  aboutToDisappear(): void {
    console.log('MyCo4 将要销毁')
  }
  build() {
    TextInput({placeholder:"MyCo4-TextInput"})
      .backgroundColor(Color.Gray)
  }
}