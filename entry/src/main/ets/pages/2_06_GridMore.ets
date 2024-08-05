interface GridItemBuilderValue{
  text:string,
  color:ResourceColor,
  RowStart?:number,
  RowEnd?:number,
  ColumnStart?:number,
  ColumnEnd?:number
}

@Entry
@Component
struct GridMore {
  // 生成 12 个元素的数组
  nums: number[] = Array.from({ length: 20 })
  @Builder GridItemBuilder(value:GridItemBuilderValue){
    GridItem() {
      Text(value.text)
        .fontColor(Color.White)
        .fontSize(30)
    }
    .backgroundColor(value.color)
    //行列的计数从1开始而不是0
    .columnStart(value.ColumnStart)
    .columnEnd(value.ColumnEnd)
    .rowStart(value.RowStart)
    .rowEnd(value.RowEnd)
  }

  build() {
    Grid() {
      ForEach(this.nums, (item: number, index: number) => {
        if (index===2){
          this.GridItemBuilder(index.toString(),Color.Blue,undefined,undefined,3,4)
          // GridItem() {
          //   Text(index.toString())
          //     .fontColor(Color.White)
          //     .fontSize(30)
          // }
          // .backgroundColor('#ff0559f7')
          // //行列的计数从1开始而不是0
          // .columnStart(3)
          // .columnEnd(4)
        }else {
          GridItem() {
            Text(index.toString())
              .fontColor(Color.White)
              .fontSize(30)
          }
          .backgroundColor('#9dc3e6')
        }

      })
    }
    .columnsTemplate('1fr 1fr 1fr 1fr')
    .rowsTemplate('1fr 1fr 1fr')
    .width('100%')
    // .height(260)
    .rowsGap(10)
    .columnsGap(10)
    .padding(10)
  }

}