@Entry
@Component
struct Index {
  //按钮
  build() {
    Column() {
//进度条
      Progress({value:30, total:100}).height(30).width(360)
      Progress({value:50, total:100}).height(30).width(360)
        .color(Color.Red)
        .backgroundColor(Color.Yellow)

      // Progress({value:30, total:100, type: ProgressType.Eclipse})


      Progress({value:50, total:100, type:ProgressType.Linear})

       Progress({value:80,total:100,style:ProgressStyle.Ring})
      Progress({value:20,total:100,style:ProgressStyle.Capsule}).color(Color.Black)
        .backgroundColor(Color.Blue)
        .height(200).width(20)
      Progress({value:80,total:100,style:ProgressStyle.Ring})
        .color(Color.Green).backgroundColor(Color.Red)
        // .style(color)




      Progress({value:30,total:100,style:ProgressStyle.ScaleRing})
        .style({strokeWidth:15,scaleCount:20,scaleWidth:5})

    }

  }
}