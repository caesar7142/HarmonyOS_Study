@Entry
@Component
struct Index {
  //按钮
  build() {
    Column() {
Video({
  src:$rawfile('letgo.mp3'),
  previewUri:$r('app.media.queen')

})


    }.width('100%')
    .height('100%')

  }
}