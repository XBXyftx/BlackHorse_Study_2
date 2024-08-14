@Entry
@Component
struct SideBarContainer02 {
  @State isShow:boolean=false
  build() {
    SideBarContainer(SideBarContainerType.Overlay){
      Column(){
        Image($rawfile('ic_douban_side.jpg'))
          .height('100%')
      }
      .alignItems(HorizontalAlign.Start)
      .backgroundColor('rgba(0,0,0,0.5)')

      Column(){
        Image($rawfile('ic_douban_main.PNG'))
          .onClick(()=>{
            this.isShow=true
          })
      }
    }
    .showSideBar($$this.isShow)
    .sideBarWidth('100%')
    .showControlButton(false)
    .minSideBarWidth('100%')
    .maxSideBarWidth('100%')

  }
}