import { AbilityStage, Want } from '@kit.AbilityKit'

export default   class MyAbility extends AbilityStage{
  onAcceptWant(want: Want): string {
    if(want.abilityName='11'){
      if(want.parameters){
        return `11_${want.parameters.ins}`
      }

    }
    return ''
  }
}