import { router } from '@kit.ArkUI';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  @State on: boolean = false;
  @State arrayn: Array<number> = [10, 20, 30, 40, 50, 60];

  build() {
    Column() {
      Text('是否打开： '+this.on)
      Toggle({type:ToggleType.Switch,isOn:$$this.on})
if(this.on){
  Image($rawfile('ic_public_brightness.svg'))
    .width(80)
    .transition(TransitionEffect
      // .opacity(0.5)
      // .OPACITY
      // .SLIDE
      //.IDENTITY
     // .move(TransitionEdge.TOP)
     //  .translate({x:20,y:20,z:20})
     //  .rotate({angle:360})
     //  .combine(TransitionEffect.translate({x:20,y:20,z:20}))
      .asymmetric(TransitionEffect.translate({x:20,y:20,z:20}),TransitionEffect.rotate({angle:360}))
      .animation({duration:360}))

    // .animation({duration:50000})
    // .translate()平移
}
     else{
       Image($rawfile('ic_public_donotdisturb.svg'))
         .width(80)
         .transition(TransitionEffect.OPACITY.animation({duration:360}))
         // .animation({duration:50000})
       // .translate()平移
     }


    }

  }
}