@Entry
@Component
struct SideBarContainer01 {
  build() {
    SideBarContainer(SideBarContainerType.Overlay) {
      Column() {
        // 子组件 1：侧边容器
      }
      .backgroundColor(Color.Orange)


      Column() {
        // 子组件 2：内容区域
      }
      .backgroundColor(Color.Pink)

    }
    .showSideBar(false) // 默认隐藏
  }
}