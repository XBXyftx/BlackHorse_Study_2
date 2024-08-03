@Entry
@Component
struct XiaoMiYouPin {
  build() {
    Column() {
      Swiper(){
        Image($rawfile('ic_swiper_xmyp01.jpeg'))
        Image($rawfile('ic_swiper_xmyp02.jpeg'))
        Image($rawfile('ic_swiper_xmyp03.jpeg'))
        Image($rawfile('ic_swiper_xmyp04.jpeg'))
      }
      .width('100%')
      .height(160)
      .indicator(
        Indicator.dot()
          .itemWidth(10)
          .itemHeight(4)
          .selectedItemWidth(30)
          .selectedItemHeight(4)
      )
      .autoPlay(true)
      .interval(400)
    }
    .height('100%')
    .width('100%')
  }
}