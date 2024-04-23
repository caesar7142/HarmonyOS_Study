import { distributedKVStore, preferences, relationalStore } from '@kit.ArkData';
import { promptAction } from '@kit.ArkUI';


let rdb:relationalStore.RdbStore
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  async aboutToAppear(){
    let config:relationalStore.StoreConfig={
      name:'mystore.db',
      securityLevel:relationalStore.SecurityLevel.S1
    }
    rdb= await relationalStore.getRdbStore(getContext(this),config)
    if(rdb.version===0){
      let sql='CREATE TABLE emp(eid INT PRIMARY KEY      NOT NULL,ename           CHAR(50) NOT NULL,EMP_ID         INT      NOT NULL)'
      rdb.executeSql(sql)
      rdb.version++
    }
}
  build() {
    Column({ space: 20 }) {
      Button('保存').onClick(() => {
        // kvdb.put()
      })
      Button('读取').onClick(async () => {
        let qw= new relationalStore.RdbPredicates('emp')

        rdb.query(qw)


       let res=await rdb.querySql('')
       if( res.goToNextRow()){
         res.getLong(0)
       }
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
    .height('100%')  .width("100%")
  }
}