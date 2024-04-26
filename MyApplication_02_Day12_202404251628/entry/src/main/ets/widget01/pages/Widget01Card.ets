let s=new LocalStorage()
@Entry(s)
@Component
struct Widget01Card {
@LocalStorageProp('songname') sname:string='太阳照在暖暖的桑干河上，温暖了整条河流'

  build() {
Column(){
  Marquee({
    start: true,
    step: 3,
    // loop: 6,
    // fromStart: boolean;
    src: this.sname
  })
  Button('router').onClick(()=>{
    postCardAction(this,{
      action:'router',
      abilityName:'EntryAbility',
      params:{
        page:'pages/Login'
      }
    })
  })

}.height('100%').width('100%')
    .justifyContent(FlexAlign.Center)
  }
}