@Entry
@Component
struct GunDongTiaoYangShi {
  nums: number[] = Array.from({ length: 200 })
  scroller: Scroller = new Scroller()

  build() {
    Column() {
      Grid(this.scroller) {
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
            this.scroller.scrollPage({
              next:false//设置为假就是上一页的意思
            })
          })
        Button('下一页')
          .width(100)
          .onClick(() => {
            this.scroller.scrollPage({
              next:true
            })
          })
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceAround)

      ScrollBar({
        direction:ScrollBarDirection.Horizontal,
        scroller:this.scroller
      }){
        Text()
          .width(20)
          .height(10)
          .backgroundColor(Color.Black)
          .borderRadius(20)
      }
      .width(200)
      .height(10)
      .backgroundColor(Color.Pink)
      .borderRadius(20)
    }
  }
}