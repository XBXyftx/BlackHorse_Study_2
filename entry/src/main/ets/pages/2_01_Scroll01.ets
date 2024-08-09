@Entry
@Component
struct Scroll01 {
  list:number[]=Array.from({length:5})
  build() {
    Column() {
      Scroll(){
        //scroll也有唯一根组件原则
        Row({space:10}){

          ForEach(this.list,(item:number,i)=>{
            Row(){
              Text(i.toString())
                .fontSize(30)
                .fontWeight(800)
            }
            .justifyContent(FlexAlign.Center)
            .backgroundColor(Color.Orange)
            .height(100)
            .width(300)
          })

        }
      }
      .scrollable(ScrollDirection.Horizontal)
      .scrollBarWidth(20)
      .scrollBarColor(Color.Black)
      .width('100%')
      .height(200)
      .edgeEffect(EdgeEffect.Spring)
    }
    .height('100%')
    .width('100%')
  }
}