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

  build() {
    Grid() {
      ForEach(this.nums, (item: number, index: number) => {
        if (index === 2) {
          this.GridItemBuilder({
            text: index.toString(),
            color: Color.Blue,
            ColumnStart: 3,
            ColumnEnd: 4
          })
        } else {
          this.GridItemBuilder({ text: index.toString(), color: '#9dc3e6' })
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