import { AbilityConstant, UIAbility, Want } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { window } from '@kit.ArkUI';
import { formBindingData, formProvider } from '@kit.FormKit';

export default class EntryAbility extends UIAbility {
private  page:string ='pages/Index'
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    if(want.parameters?.page){
      this.page=want.parameters.page as string
    }

if(want.parameters?.formId){
  let formId=want.parameters?.formId as string
  let data=formBindingData.createFormBindingData({xongname:'wahaha'+new Date})
    formProvider.updateForm(formId,data)
}
  }
onNewWant(want: Want, launchParam: AbilityConstant.LaunchParam): void {
  if(want.parameters?.page){
    this.page=want.parameters.page as string
  }else{
    this.page='pages/Index'
  }
  if(want.parameters?.formId){
    let formId=want.parameters?.formId as string
    let data=formBindingData.createFormBindingData({xongname:'wahaha'+new Date})
    formProvider.updateForm(formId,data)
  }

}
  onDestroy(): void {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onDestroy');
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageCreate');

    windowStage.loadContent(this.page);
  }

  onWindowStageDestroy(): void {
    // Main window is destroyed, release UI related resources
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageDestroy');
  }

  onForeground(): void {
    // Ability has brought to foreground
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onForeground');
  }

  onBackground(): void {
    // Ability has back to background
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onBackground');
  }
}
