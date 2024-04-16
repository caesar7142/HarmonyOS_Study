@Entry
@Component
struct Index {
  //按钮
  build() {
    Column() {
    //多行
      TextArea()
      TextArea({placeholder:"多行"})
      TextArea({text:"123"})
        .type(TextAreaType.PHONE_NUMBER)
        .maxLines(2)
        // .showCounter(true)
        .maxLength(100)
    }

  }
}