interface GridItemBuilderValue {
  text: string,
  color: ResourceColor,
  RowStart?: number,
  RowEnd?: number,
  ColumnStart?: number,
  ColumnEnd?: number
}
@Entry
@Component
struct GridMore {
  // 生成 12 个元素的数组
  nums: number[] = Array.from({ length: 20 })
  @Builder
  GridItemBuilder(value: GridItemBuilderValue) {
    if (value.RowStart && value.RowEnd) {
      GridItem() {
        Text(value.text)
          .fontColor(Color.White)
          .fontSize(30)
      }
      .backgroundColor(value.color)
      //行列的计数从1开始而不是0
      .rowStart(value.RowStart)
      .rowEnd(value.RowEnd)
    } else if (value.ColumnStart && value.ColumnEnd) {
      GridItem() {
        Text(value.text)
          .fontColor(Color.White)
          .fontSize(30)
      }
      .backgroundColor(value.color)
      //行列的计数从1开始而不是0
      .columnStart(value.ColumnStart)
      .columnEnd(value.ColumnEnd)
    } else if (value.RowStart && value.RowEnd && value.ColumnStart && value.ColumnEnd) {
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
    } else if (value) {
      GridItem() {
        Text(value.text)
          .fontColor(Color.White)
          .fontSize(30)
      }
      .backgroundColor(value.color)
    }

  }
  @Builder
  GridMoreZong(){
    Grid() {
      ForEach(this.nums, (item: number, index: number) => {
        if (index === 2) {
          this.GridItemBuilder({
            text: (index+1).toString(),
            color: Color.Blue,
            ColumnStart: 3,
            ColumnEnd: 4
          })
        } else if (index === 3) {
          this.GridItemBuilder({
            text: (index+1).toString(),
            color: '#ff0ef12d',
            RowStart: 2,
            RowEnd: 3
          })
        } else if (index === 7) {
          this.GridItemBuilder({
            text: (index+1).toString(),
            color: '#fff00303',
            ColumnStart: 2,
            ColumnEnd: 4
          })
        } else {
          this.GridItemBuilder({ text: (index+1).toString(), color: '#9dc3e6' })
        }
      })
    }
    .columnsTemplate('1fr 1fr 1fr 1fr')
    .rowsTemplate('1fr 1fr 1fr')
    .width('100%')
    .height(260)
    .rowsGap(10)
    .columnsGap(10)
    .padding(10)
  }
  build() {
    Column(){
      this.GridMoreZong()
    }
  }
}