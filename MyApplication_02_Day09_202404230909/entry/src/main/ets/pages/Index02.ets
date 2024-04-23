import { distributedKVStore, preferences } from '@kit.ArkData';
import { promptAction } from '@kit.ArkUI';
let kvdb:distributedKVStore.SingleKVStore
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  async aboutToAppear(){
  let config:distributedKVStore.KVManagerConfig={
    bundleName:"com.example.myapplication_02_day09_202404230909",
    context: getContext(this)
}
    let kvm=distributedKVStore.createKVManager(config)
   let option:distributedKVStore.Options={
     securityLevel:distributedKVStore.SecurityLevel.S1
   }
    kvdb=await kvm.getKVStore('mysto',option)
}
  build() {
    Column({ space: 20 }) {
      Button('保存').onClick(() => {
        // kvdb.put()
      })
      Button('读取').onClick(() => {
// kvdb.g

      })
      Button('删除').onClick(() => {

      })
      Button('持久化').onClick(() => {

      })
      Button('移除所有持久化数据').onClick(() => {

      })
      Button('移除所有非持久化数据').onClick(() => {

      })
    }.alignItems(HorizontalAlign.Center)
    .height('100%')
    .width("100%")
  }
}