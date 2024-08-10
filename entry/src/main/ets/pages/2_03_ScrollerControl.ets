@Entry
@Component
struct ScrollerControl {
  scroller:Scroller=new Scroller()
  build() {
    Column({space:10}){
      Text('竖向滚动')
        .fontSize(20)
      Scroll(this.scroller){
        // 设置内容
        Column(){
        }
        .height(1000)
        .width('100%')
        .linearGradient({
          colors:[['#0094ff',0],[Color.Orange,1]],
        })
      }
      .scrollBarColor(Color.Pink)
      .scrollBarWidth(50)
      .scrollBar(BarState.Off)
      .edgeEffect(EdgeEffect.Spring)
      .width('100%')
      .height(200)
      .border({width:1,color:Color.Orange})

    }
    .width('100%')
    .height('100%')
  }
}