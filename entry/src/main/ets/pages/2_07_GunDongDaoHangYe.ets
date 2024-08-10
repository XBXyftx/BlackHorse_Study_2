@Entry
@Component
struct GDDHY {
  titles:string [ ] = ['首页','关注','热门','军事','体育','八卦','数码','财经','美食','旅行']
  build() {
    // 外层容器
    Tabs() {
      // 内容
      ForEach(this.titles,(title:string,index:number)=>{
        TabContent() {
          Text(title+'的内容')
            .fontSize(30)
        }
        .tabBar(title)
      })

    }
    .barMode(BarMode.Scrollable)
    //可滚动的导航栏
  }
}