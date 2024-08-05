@Entry
@Component
struct GridMore {
  // 生成 12 个元素的数组
  nums: number[] = Array.from({ length: 20 })

  build() {
    Grid() {
      ForEach(this.nums, (item: number, index: number) => {
        GridItem() {
          Text(index.toString())
            .fontColor(Color.White)
            .fontSize(30)
        }
        .backgroundColor('#9dc3e6')
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
}