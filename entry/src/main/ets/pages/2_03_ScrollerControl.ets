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
      Row({space:5}){
        Button('滚到顶部或者是底部')
          .onClick(()=>{
            // this.scroller.scrollEdge(Edge.Top)
            this.scroller.scrollEdge(Edge.Bottom)//滚动到头或者是到底
          })
        Button('获取滚动距离')
          .onClick(()=>{
            const X=this.scroller.currentOffset().xOffset//currentOffset是一个对象内部包含横向和纵向的滚动距离数据值
            const Y=this.scroller.currentOffset().yOffset
            AlertDialog.show({message:'您滚了X:'+X+'Y:'+Y})
          })
      }

    }
    .width('100%')
    .height('100%')
  }
}