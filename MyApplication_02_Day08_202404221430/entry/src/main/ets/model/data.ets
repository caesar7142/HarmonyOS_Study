
import axios, { AxiosRequestConfig, AxiosResponse } from '@ohos/axios'

export let base='https://www.codeboy.com/zhsqapi/'

export interface  User{
  phone?:string
  pwd?:string
  uid?:number
  uname?:string
  email?:string
  avater?:string
  gender?:number
}
export interface ServerResult{
  code:number
          msg:string
}
export async  function UserRegister(phone:string,pwd:string):Promise<ServerResult>{
let url=base+'user/register'
  let data:User={phone:phone,pwd:pwd}
  let config: AxiosRequestConfig={
    // method:?\
    headers:{
      'Content-Type':'application/json',
      'token': ''//AppStorage.get('UserToken')
    }
    , data
  }
 let res:AxiosResponse=await axios.post(url,config)
return res.data
}