import mediaquery from '@ohos.mediaquery';
import { MediaQuery } from '@ohos.arkui.UIContext';
import { LoginPanel } from '@hms.core.account.LoginComponent';


@Entry
@Component
struct Index {
  @State  u1: string = ''
  @State  u2: string = 'u2'

  build() {
    Column() {


      TextInput({placeholder:'please inpute name',text:$$this.u1})
      Button('login/cereate').onClick(()=>{
        console.log('this.u1',this.u1)
        // AppStorage.setOrCreate('uname',this.u1)
        // console.log('setOrCreate')
        // console.log('AppStorage.get("uname")',AppStorage.get('uname') as string)
        PersistentStorage.persistProp('uname',this.u1)
        console.log('AppStorage.get("uname")',AppStorage.get('uname') as string)
        AppStorage.setOrCreate('uname','changge')
        console.log('AppStorage.get("uname")',AppStorage.get('uname') as string)

      })

    }
  }
}