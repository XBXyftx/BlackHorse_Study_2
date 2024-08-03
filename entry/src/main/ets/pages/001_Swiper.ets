
@Entry
@Component
struct swiper {
  build() {
    Column() {
      Swiper(){
        Text('1')
          .textAlign(TextAlign.Center)
          .fontSize(20)
          .backgroundColor(Color.Red)
          .margin({top:20})
        Text('2')
          .textAlign(TextAlign.Center)
          .fontSize(20)
          .backgroundColor(Color.Red)
          .margin({top:20})
        Text('3')
          .textAlign(TextAlign.Center)
          .fontSize(20)
          .backgroundColor(Color.Red)
          .margin({top:20})
        Text('4')
          .textAlign(TextAlign.Center)
          .fontSize(20)
          .backgroundColor(Color.Red)
          .margin({top:20})
        Text('5')
          .textAlign(TextAlign.Center)
          .fontSize(20)
          .backgroundColor(Color.Red)
          .margin({top:20})
      }
      .width('100%')
      .height(100)
    }
    .height('100%')
    .width('100%')
  }
}