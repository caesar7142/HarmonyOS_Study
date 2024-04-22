import http from '@ohos.net.http'
import axios, { AxiosResponse } from '@ohos/axios'
@Entry
@Component
struct F1{
  build() {
    Column(){
      Button("GET").onClick(async ()=>{
        let url='https://www.codeboy.com/zhsqapi/mall/goods/list'
        let xhr=http.createHttp()
        let res=await xhr.request(url)
       console.log(JSON.stringify(res))

        })
      Button("AXIOS").onClick(async ()=>{
        let url='https://www.codeboy.com/zhsqapi/mall/goods/list'
     let res:AxiosResponse=  await axios.get(url)
        console.log(JSON.stringify(res))
      })
      }

 }

}


