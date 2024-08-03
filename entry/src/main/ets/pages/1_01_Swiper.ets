
@Entry
@Component
struct swiper {
  build() {
    Column({space:30}) {
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
      .autoPlay(true)//开启自动播放true是纵向
      .interval(300)//自动播放时间
      .indicator(false)//是否开启轮播小点



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
      .autoPlay(true)//开启自动播放true是纵向
      .interval(700)//自动播放时间
      .indicator(Indicator.digit())//将小点替换为数字计数器


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
      .autoPlay(true)//开启自动播放true是纵向
      .interval(100)//自动播放时间
      .indicator(
        Indicator.dot()
          .itemWidth(40)
          .itemHeight(40)
          .selectedItemWidth(20)
          .selectedItemHeight(20)
          .color(Color.Black)
          .selectedColor(Color.Green))//轮播小点具体尺寸设置


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
      .autoPlay(true)//开启自动播放true是纵向
      .interval(300)//自动播放时间
      .indicator(
        Indicator.dot()
          .left(0)
          .top(0)
      )//小点距离各个边的边距
    }
    .height('100%')
    .width('100%')
  }
}