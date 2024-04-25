import { Ability, AbilityConstant, AbilityStage, UIAbility, Want } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { window } from '@kit.ArkUI';

export default class EntryAbility extends UIAbility {
  storage:LocalStorage= new LocalStorage()
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    console.log('--1 onCreate :能力被创建了 ')
    let ctx=this.context
   let hub= ctx.eventHub
    hub.on('e1',(data:string)=>{

    }
    )
  }

  onDestroy(): void {
    console.log('-- 6 onDestroy :能力被销毁 ')
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability
    console.log('--2 onWindowStageCreate :窗口被创建了 ')

    windowStage.loadContent('pages/IndexVideo',this.storage);
  }

  onWindowStageDestroy(): void {
    console.log('-- 5 onWindowStageDestroy :窗口被销毁 ')
  }

  onForeground(): void {
    console.log('-- 3 onForeground :窗口被置于前台 ')
  }

  onBackground(): void {
    console.log('-- 4 onBackground :窗口被置于后台 ')
  }
}
