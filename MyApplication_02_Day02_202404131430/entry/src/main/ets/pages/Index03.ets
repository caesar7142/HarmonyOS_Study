@Component
struct OneColumn {
  msg: string = '一段文本     '

  build() {

    Column() {
      Text(this.msg)
      Text(this.msg)
      Text(this.msg)
        .fontColor(Color.Red)
        .backgroundColor(Color.Yellow).fontSize(25)
    }
  }
}


@Entry
@Component
struct Login {
  msg: string = '注册新用户  '

  build() {
    Row() {
      OneColumn()
    }
  }
}
