@Entry
@Component
struct Index {
  //创建控制器对象
  controller:SwiperController=new SwiperController()

  build() {
    Column({space:10}) {
      //设置轮播图
      Swiper(this.controller){
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
      .interval(4000)

      //控制按钮
      Row({space:20}){
        Button('下一页')
          .onClick(()=>{
            this.controller.showNext()
          })

        Button('上一页')
          .onClick(()=>{
            this.controller.showPrevious()
          })
      }
    }
    .height('100%')
    .width('100%')
  }
}