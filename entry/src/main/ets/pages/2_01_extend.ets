@Entry
@Component
struct extend {
  build() {
    Column() {
      Swiper() {
        Text('0')
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Red)
          .fontColor(Color.White)
          .fontSize(30)
          .onClick(() => {
            AlertDialog.show({
              message: '轮播图 1'
            })
          })
        Text('1')
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Green)
          .fontColor(Color.White)
          .fontSize(30)
          .onClick(() => {
            AlertDialog.show({
              message: '轮播图 2'
            })
          })
        Text('2')
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Blue)
          .fontColor(Color.White)
          .fontSize(30)
          .onClick(() => {
            AlertDialog.show({
              message: '轮播图 3'
            })
          })
      }
    }
    .height('100%')
    .width('100%')
  }
}