import { UserRegister } from '../model/data';
import { promptAction } from '@kit.ArkUI';
import fs from '@ohos.file.fs';
import { buffer } from '@kit.ArkTS';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State phone: string = '';
  @State pwd: string = '';
  build() {
    Column(){

      Button('1     写').onClick(()=>{
       let ctx= getContext(this)
       let path= ctx.filesDir+'/mylog.txt'
     let f1=   fs.openSync(path,fs.OpenMode.CREATE|
     fs.OpenMode.APPEND|fs.OpenMode.WRITE_ONLY)
        let data='11111111111111111111111'+Date.now();
        fs.write(f1.fd,data)
        fs.closeSync(f1)
      })
      Button('2     读').onClick(()=>{
        let ctx= getContext(this)
        let path= ctx.filesDir+'/mylog.txt'
        let f1=   fs.openSync(path,fs.OpenMode.READ_ONLY)
        let data=new ArrayBuffer(1024)
    let len=  fs.readSync(f1.fd,data)
       let bf= buffer.from(data)

        fs.closeSync(f1)
      })



    }.width('100%').alignItems(HorizontalAlign.Center)
  }
}