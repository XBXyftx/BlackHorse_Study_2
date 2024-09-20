@Entry
@Component
struct Date01 {
  date = new Date()
  @State year: number = this.date.getFullYear()
  @State month: number = this.date.getMonth() + 1
  @State date1: number = this.date.getDate()
  @State hour: number = this.date.getHours()
  @State minute: number = this.date.getMinutes()
  @State second: number = this.date.getSeconds()
  @State day: number = this.date.getDay()

  fu(day: number) {
    switch (day) {
      case 0:
        return '日'
      case 1:
        return '一'
      case 2:
        return '二'
      case 3:
        return '三'
      case 4:
        return '四'
      case 5:
        return '五'
      case 6:
        return '六'
      default:
        return null
    }
  }

  build() {
    Column() {
      Image($rawfile('BistuMaker.png'))
        .width('100%')
      Column() {
        Text(`${this.year}年 ${this.month} 月 ${this.date1} 日 周${this.fu(this.day)}`)
          .fontColor(Color.White)
          .fontSize(20)
        Stack() {
          Row({ space: 10 }) {
            Text(this.hour<10?`0${this.hour}`:this.hour.toString())
              .textStyle()
            Text(this.minute<10?`0${this.minute}`:this.minute.toString())
              .textStyle()
            Text(this.second<10?`0${this.second}`:this.second.toString())
              .textStyle()
          }

          // Divider()
          //   .strokeWidth(2)
          //   .color(Color.Black)
        }
        .padding(10)

        Text('Stay hungry,Stay foolish')
          .fontColor(Color.White)
          .fontSize(18)
      }
      .onAppear(() => {
        setInterval(() => {
          const date = new Date()
          this.year = date.getFullYear()
          this.month = date.getMonth() + 1
          this.date1 = date.getDate()
          this.hour = date.getHours()
          this.minute = date.getMinutes()
          this.second = date.getSeconds()
          this.day = date.getDay()
        }, 100)
      })
      Image($rawfile('ChuangKe.png'))
        .width('80%')
    }

    .expandSafeArea()
    .backgroundImage($rawfile('starSky.jpg'))
    .backgroundImageSize({height:'100%'})
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Black)
    .justifyContent(FlexAlign.Center)
  }
}


@Extend(Text)
function textStyle() {
  .width(100)
  .height(100)
  .backgroundColor('#191919')
  .borderRadius(10)
  .textAlign(TextAlign.Center)
  .fontColor(Color.White)
  .fontSize(70)
  .fontWeight(900)
}