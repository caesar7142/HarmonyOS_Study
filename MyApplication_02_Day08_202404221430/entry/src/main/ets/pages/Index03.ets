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

      Button("Button").onClick(async ()=>{
        let photoViewPicker=new picker.PhotoViewPicker
     let re=  await photoViewPicker.select({maxSelectNumber:1})
  let f= fs.openSync(re.photoUris[0],fs.OpenMode.READ_ONLY)
       let stat= fs.statSync(f.fd)
        let buf=new ArrayBuffer(stat.size)
        fs.readSync(f.fd,buf)
        fs.closeSync(f)



        let data=new FormData()
        data.append("avatar",buf)
        let cofig:AxiosRequestConfig={
          url:'',
          method:"POST",
          headers:{
            'Content-Type':'multipart/form-data',
            'token': ''
          },
          data:data
        }
        let res:AxiosResponse= await  axios(cofig)
      })



    }.width('100%').alignItems(HorizontalAlign.Center)
  }
}