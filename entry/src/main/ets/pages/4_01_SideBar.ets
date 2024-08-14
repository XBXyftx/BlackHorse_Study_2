@Entry
@Component
struct SideBarContainer01 {
  @State isShow:boolean=false
  build() {
    SideBarContainer(SideBarContainerType.Embed) {
      Column() {
        // 子组件 1：侧边容器
        //这个是侧边栏是隐藏的那部分
        Button('关闭侧边栏')
          .onClick(()=>{
            this.isShow=false
          })
      }
      .backgroundColor(Color.Orange)


      Column() {
        // 子组件 2：内容区域
        Button('显示侧边栏')
          .onClick(()=>{
            this.isShow=true
          })
      }
      .backgroundColor(Color.Pink)

    }
    .showSideBar($$this.isShow) // 默认隐藏
    .showControlButton(false)
    .sideBarPosition(SideBarPosition.End)
    .sideBarWidth('100%')
    .minSideBarWidth('100%')
    .maxSideBarWidth('100%')
    .onChange((show:boolean)=>{
      console.log(show+'')
    })
  }
}