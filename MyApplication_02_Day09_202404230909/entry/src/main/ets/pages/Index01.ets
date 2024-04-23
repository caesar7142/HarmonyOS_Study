import { preferences } from '@kit.ArkData';
import { promptAction } from '@kit.ArkUI';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column({ space: 20 }) {
      Button('保存').onClick(() => {
        let p = preferences.getPreferencesSync(getContext(this), { name: 'mystore01' })
        p.putSync('user1', "w")
      })
      Button('读取').onClick(() => {
        let p = preferences.getPreferencesSync(getContext(this), { name: 'mystore01' })
        let user1info = p.getSync('user1', "读取错误")
        console.log("user1info： ", user1info)

      })
      Button('删除').onClick(() => {
        let p = preferences.getPreferencesSync(getContext(this), { name: 'mystore01' })
        p.deleteSync('user1')
      })
      Button('持久化').onClick(() => {
        let p = preferences.getPreferencesSync(getContext(this), { name: 'mystore01' })
        p.putSync('user1', "w")
        p.flush((err) => {
          if (!err) {
            promptAction.showToast({ message: "持久化成功", duration: 3000 })
          }
        })
      })
      Button('移除所有持久化数据').onClick(() => {
        let p = preferences.deletePreferences(getContext(this), { name: 'mystore01' })

      })
      Button('移除所有非持久化数据').onClick(() => {
        let p = preferences.removePreferencesFromCacheSync(getContext(this), { name: 'mystore01' })

      })
    }.alignItems(HorizontalAlign.Center)
    .height('100%')
    .width("100%")
  }
}