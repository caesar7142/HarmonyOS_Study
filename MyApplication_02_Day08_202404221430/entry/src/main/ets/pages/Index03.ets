import { UserRegister } from '../model/data';
import { promptAction } from '@kit.ArkUI';
import fs from '@ohos.file.fs';
import { buffer } from '@kit.ArkTS';
import { picker } from '@kit.CoreFileKit';
import {AxiosRequestConfig, AxiosResponse, FormData } from '@ohos/axios';
import axios from '@ohos/axios';
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State phone: string = '';
  @State pwd: string = '';
  build() {
    Column(){

    Button('DOWNLOAD').onClick(async ()=>{
      let config:AxiosRequestConfig={
        "method":"GET",
        "url":""
      }
    let res:AxiosResponse= await axios(config)

     let pvp= new picker.PhotoViewPicker()
     let result= await pvp.save({newFileNames:[Date.now()+'.png']})
      let path=result[0]
      let f=fs.openSync(path,fs.OpenMode.CREATE|fs.OpenMode.WRITE_ONLY)
      fs.write(f.fd,res.data)
    })



    }.width('100%').alignItems(HorizontalAlign.Center)
  }
}