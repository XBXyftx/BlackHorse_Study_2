@Entry
@Component
struct TabL {
  build() {
    Column() {
      Tabs({barPosition:BarPosition.Start}){
        TabContent(){
          Image($rawfile('ic_xiaomi_scroll_03.jpg'))
            .width('100%')
        }
        .tabBar('首页1')

        TabContent(){
          Image($rawfile('ic_xiaomi_scroll_02.jpg'))
            .width('100%')
        }
        .tabBar('首页2')

        TabContent(){
          Image($rawfile('ic_xiaomi_scroll_01.jpg'))
            .width('100%')
        }
        .tabBar('首页3')

        TabContent(){
          Image($rawfile('ic_xiaomi_scroll_03.jpg'))
            .width('100%')
        }
        .tabBar('首页4')
      }
      .vertical(true)
      .animationDuration(1000)
    }
    .height('100%')
    .width('100%')
  }
}