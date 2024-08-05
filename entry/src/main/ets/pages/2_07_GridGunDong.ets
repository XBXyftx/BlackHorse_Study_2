@Entry
@Component
struct Day01_09_Grid05 {
  // 长度为 10 每一项都为 undefined 的数组
  list: string[] = Array.from({ length: 30 })

  build() {
    Column() {
      Grid() {
        ForEach(this.list, (item: string, index) => {
          GridItem() {
            Text((index + 1).toString())
              .newExtend()
          }
          .padding(5)
          .height('30%')
          .width('25%')
        })

      }
      .columnsTemplate('1fr 1fr 1fr') // 竖向滚动
      // .rowsTemplate('1fr 1fr 1fr') // 横向滚动
      .rowsGap(10)
      .width('100%')
      .height(300)
      .border({ width: 1 })
      .padding(5)

    }
    .width('100%')
    .height('100%')
  }
}

@Extend(Text)
function newExtend() {
  .backgroundColor('#0094ff')
  .width('100%')
  .height('100%')
  .fontSize(30)
  .fontColor(Color.White)
  .textAlign(TextAlign.Center)
}
