@Entry
@Component
struct Index {
  sc:Scroller = new Scroller()
  build() {
    Column({space:10}){
      Text('竖向滚动')
        .fontSize(20)
      Scroll(this.sc){
        // 设置内容
        Column(){
        }
        .height(600)
        .width('100%')
        .linearGradient({
          colors:[['#0094ff',0],['#94c3e6',1]],
        })
      }
      .scrollBarColor(Color.Pink)
      .scrollBarWidth(20)
      .edgeEffect(EdgeEffect.Spring)
      .width('100%')
      .height(200)
      .borderRadius(15)
      .onWillScroll(( ) => {
        const yOffset = this.sc.currentOffset()
          .yOffset
        console.log(`滚动条的位置是:${yOffset}`)
      })
    }
    .width('100%')
    .height('100%')
  }
}