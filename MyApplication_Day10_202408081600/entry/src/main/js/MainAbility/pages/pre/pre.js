import featureAbility from '@ohos.ability.featureAbility';
import dataPreferences from '@ohos.data.preferences';


export default {
    data: {
        title: ""
    },
    onInit() {
        this.title = "Hello World";
    }, onclick() {
        console.log("click success")
        let conect = featureAbility.getContext()
        dataPreferences.getPreferences(conect, 'mystore', (err, preferences) => {
            preferences.put('12', '34', err => {
                if (err) {
                    return
                } else {
                    console.log("write success")
                }
            })
        })
    }


}
