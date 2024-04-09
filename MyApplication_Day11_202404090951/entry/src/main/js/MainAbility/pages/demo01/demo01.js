import featureAbility from '@ohos.ability.featureAbility';
import dataPreferences from '@ohos.data.preferences';
export default {
    data: {
        title: ""
    },
    onInit() {
        this.title = "Hello World";
    },
    writeTempData(){
       let context= featureAbility.getContext()
        dataPreferences.getPreferences(context,'myinfo',(err,preferences)=>{
        preferences.put('userinfo',['zhu','28'],err=>{
            if(!err){
                console.log('userinfo write success')
            }
            else {
                console.log('userinfo write fail')
            }
        })
        })
    }
,
    writeTempData2(){
        let context= featureAbility.getContext()
        dataPreferences.getPreferences(context,'myinfo',(err,preferences)=>{
            preferences.put('appinfo',['知乎','v1'],err=>{
                if(!err){
                    console.log(' appinfo write success')
                }
                else {
                    console.log(' appinfo write fail')
                }
            })
        })
    },
    readData(){
        let context= featureAbility.getContext()
        dataPreferences.getPreferences(context,'myinfo',(err,preferences)=>{
            preferences.get('userinfo','No info',(err,value)=>{
                if(!err){
                    console.log('userinfo read success ',value)
                }
                else {
                    console.log('userinfo read fail ',value)
                    return
                }
            })
        })
    }

,
    readData2(){
        let context= featureAbility.getContext()
        dataPreferences.getPreferences(context,'myinfo',(err,preferences)=>{
            preferences.get('appinfo','No info',(err,value)=>{
                if(!err){
                    console.log('appinfo read success ',value)
                }
                else {
                    console.log('appinfo read fail ',value)
                    return
                }
            })
        })
    }
,
    readDataAll(){
        let context= featureAbility.getContext()
        dataPreferences.getPreferences(context,'myinfo',(err,preferences)=>{
            preferences.getAll((err,value)=>{
                if(!err){
                    console.log('readDataAll read success ',JSON.stringify(value))
                }
                else {
                    console.log('readDataAll read fail ',err)
                    return
                }
            })
        })
    }

,
    saveData(){
        let context= featureAbility.getContext()
        dataPreferences.getPreferences(context,'myinfo',(err,preferences)=>{
            preferences.put('userinfo',['zhu','28'],err=>{
                if(!err){
                    console.log('saveData success')

                    preferences.flush(err=>{
                        if(!err){
                            console.log('flush success')
                        }
                        else {
                            console.log('flush fail',JSON.stringify(err))
                        }
                    })



                }
                else {
                    console.log('write fail',JSON.stringify(err))
                }
            })
        })
    }


,
    delData(){
        let context= featureAbility.getContext()
        dataPreferences.getPreferences(context,'myinfo',(err,preferences)=>{
            preferences.delete('userinfo',err=>{
                if(!err){
                    console.log('userinfo delData success')
                }
                else {
                    console.log('userinfo delData fail')
                }
            })
        })
    },
    clearData(){
        let context= featureAbility.getContext()
        dataPreferences.getPreferences(context,'myinfo',(err,preferences)=>{
            preferences.clear(err=>{
                if(!err){
                    console.log('userinfo clearData success')
                }
                else {
                    console.log('userinfo clearData fail')
                }
            })
        })
    }
}
