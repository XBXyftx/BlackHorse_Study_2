@Builder function  item(i:number){
  GridItem(){
    Text(i.toString())
      .fontSize(20)
      .fontColor(Color.White)
  }
  .backgroundColor(Color.Blue)
}

@Entry
@Component
struct grid {
  build() {
    Column() {
      Grid(){
        item(1)
        item(2)
        item(3)
        item(4)
        item(5)
      }
      .width('100%')
      .height(360)
      .border({width:2,color:Color.Red})
      .columnsTemplate('1fr 2fr 1fr')//用空格分隔开几个就有几列，列宽比例
      .columnsGap(10)//列与列的间隔
      .rowsGap(10)
      .rowsTemplate('2fr 1fr 1fr')//三行，行高比例
    }
    .height('100%')
    .width('100%')
  }
}