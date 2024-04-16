@Entry
@Component
struct Index {
  //按钮
  build() {
    Column() {
      //text
      //       Text('登鹳雀楼')
      //       Text($r('app.string.pemo_title'))
      //       Text(){
      //         Span('新版那')
      //         Span('隐私条约').fontColor(Color.Red).decoration({type:TextDecorationType.Overline })
      //         Span('已更新')
      //       }

      Text('左对齐的文本').textAlign(TextAlign.Start).width(360)
      Text('中央对齐的文本').textAlign(TextAlign.Center).width(360)
      Text('右对齐的文本').textAlign(TextAlign.End).width(360)
      Text('lineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeightlineHeight')
        .maxLines(1)
        .textOverflow({ overflow: TextOverflow.MARQUEE })

      Text('lineHeightlineHeight').copyOption(CopyOptions.InApp)

    }

  }
}