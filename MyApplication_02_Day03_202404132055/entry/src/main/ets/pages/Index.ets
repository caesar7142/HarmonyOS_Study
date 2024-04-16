@Entry
@Component
struct Index {
  //按钮

  build() {
    Row() {
      Column() {
        Button('登录')

        Button($r('app.string.login'))
        Button('Normal登录', { type: ButtonType.Normal }).borderRadius(10)
        Button('Capsule登录', { type: ButtonType.Capsule })
        Button('登', { type: ButtonType.Circle })
        Button('true登录', { type: ButtonType.Capsule, stateEffect: true })
          .backgroundColor($r('app.color.aaa'))
          .onClick(() => {
            console.log('true登录 被触发了')
          })
        Button('false登录', { type: ButtonType.Capsule, stateEffect: false })
          .backgroundColor($r('app.color.aaa'))
          .onClick(() => {
            console.log('false登录 被触发了')
          })

        Button(){
          Row(){
            Image($r('app.media.loading')).width('50')
          }
        }
      }

    }

  }
}