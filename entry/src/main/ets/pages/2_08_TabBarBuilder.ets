@Entry
@Component
struct TBB {
  @State index:number=0

  @Builder tabBar(img:Resource,text:string,num:number){
    Column(){
      Image(img)
        .width(30)
      Text(text)
    }
    .backgroundColor(this.index===num?'#ff00d4ff':Color.Gray)
  }

  build() {
    Tabs({barPosition:BarPosition.End}){
      TabContent(){
        Text('购物车')
      }.tabBar(this.tabBar($rawfile('ic_tabbar_icon_2.png'),'购物车',0))

      TabContent(){
        Text('我的')
      }.tabBar(this.tabBar($rawfile('ic_tabbar_icon_1.png'),'我的',1))
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Gray)
    .onChange((index:number)=>{
      this.index=index
    })
  }
}