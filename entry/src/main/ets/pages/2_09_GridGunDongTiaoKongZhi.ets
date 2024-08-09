@Entry
@Component
struct GridDemo5 {
  nums: number[] = Array.from({ length: 200 })
  scroller: Scroller = new Scroller()

  build() {
    Column() {
      Grid() {
        ForEach(this.nums, (item: number, index: number) => {
          GridItem() {
            Text(index + 1 + '')
          }
          .backgroundColor('#0094ff')
          .width('25%')
        })
      }
      .padding(10)
      .height(450)
      .rowsGap(10)
      .columnsGap(10)
      .rowsTemplate('1fr 1fr 1fr 1fr')

      Row() {
        Button('上一页')
          .width(100)
          .onClick(() => {

          })
        Button('下一页')
          .width(100)
          .onClick(() => {

          })
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceAround)
    }
  }
}