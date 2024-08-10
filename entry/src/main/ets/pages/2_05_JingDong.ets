@Entry
@Component
struct JingDong {
  @State Y:number=0
  scroller:Scroller=new Scroller()
  build() {
    Column(){
      Stack({alignContent:Alignment.BottomEnd}){
        Scroll(this.scroller){
          Column(){
            Image($rawfile('ic_jd_scroll_01.jpg'))
            Image($rawfile('ic_jd_scroll_02.jpg'))
            Image($rawfile('ic_jd_scroll_03.jpg'))
          }
          .width('100%')
        }
        .onWillScroll(()=>{
          this.Y=this.scroller.currentOffset().yOffset
        })
        .height('100%')
        if (this.Y>300){
          Image($rawfile('ic_jd_rocket.png'))
            .width(50)
            .margin(20)
            .padding(5)
            .borderRadius(30)
            .backgroundColor(Color.White)
            .onClick(()=>{
              this.scroller.scrollEdge(Edge.Top)
            })
        }

      }
      .layoutWeight(1)
      Image($rawfile('ic_jd_tab.jpg'))
        .width('100%')
    }
    .width('100%')
    .height('100%')
  }
}