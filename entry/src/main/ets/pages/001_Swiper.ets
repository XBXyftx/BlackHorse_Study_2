
@Entry
@Component
struct swiper {
  build() {
    Column() {
      Swiper(){//轮播图组件。统一写尺寸只用写一遍，不要每个都写
        Text('1')
          .textAlign(TextAlign.Center)
          .fontSize(20)
          .backgroundColor(Color.Red)

        Text('2')
          .textAlign(TextAlign.Center)
          .fontSize(20)
          .backgroundColor(Color.Yellow)

        Text('3')
          .textAlign(TextAlign.Center)
          .fontSize(20)
          .backgroundColor(Color.Red)

        Text('4')
          .textAlign(TextAlign.Center)
          .fontSize(20)
          .backgroundColor(Color.Yellow)

        Text('5')
          .textAlign(TextAlign.Center)
          .fontSize(20)
          .backgroundColor(Color.Red)

      }
      .width('100%')
      .height(100)
      .loop(true)//是否可以循环播放
      .autoPlay(true)//开启自动播放
      .interval(500)//自动播放时间
      .vertical(true)//是否开启纵向轮播
    }
    .height('100%')
    .width('100%')
  }
}