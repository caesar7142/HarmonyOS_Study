@Component
struct up {
  build() {
    Column() {
      Row() {
        Text('绑定推荐人')
        Text('                           未绑定').fontColor(Color.Blue)
        Text('>')
      }

      Divider()
      Row() {
        Text('清除缓存')
        Text('                                  已使用7.7MB')
      }
    }

  }
}


@Component
struct down {
  build() {
    Column() {
      Row() {
        Text('帮助中心')
        Text('                     >')
      }

      Divider()
      Row() {
        Text('关于我们')
        Text('                         >')
      }
    }
  }
}


@Entry
struct Settung {
  build() {
    Row() {
      Column() {
        up().margin(10)
        down().margin(10)
        Button('登录').width('100%').margin(10)
      }
    }
  }
}