import mediaquery from '@ohos.mediaquery';
import { MediaQuery } from '@ohos.arkui.UIContext';


@Entry
@Component
struct Index {
  @State  u1: string = 'u1'
  @State  u2: string = 'u2'

  build() {
    Column() {
  Text('u1'+this.u1)
      Text('u2'+this.u2)
      TextInput({text:this.u1})
      TextInput({text:$$this.u2})

    }
  }
}