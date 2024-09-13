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
      Column() {
        Text(`${this.year}年 ${this.month} 月 ${this.date1} 日 周${this.fu(this.day)}`)
          .fontColor(Color.White)
          .fontSize(20)
        Stack() {
          Row({ space: 10 }) {
            Text(this.hour.toString())
              .textStyle()
            Text(this.minute.toString())
              .textStyle()
            Text(this.second.toString())
              .textStyle()
          }

          Divider()
            .strokeWidth(2)
            .color(Color.Black)
        }
        .padding(10)

        Text('Stay hungry,Stay foolish')
          .fontColor(Color.White)
          .fontSize(18)
      }
      .onAppear(() => {
        setInterval(() => {
          const date = new Date()
          this.year = this.date.getFullYear()
          this.month = this.date.getMonth() + 1
          this.date1 = this.date.getDate()
          this.hour = this.date.getHours()
          this.minute = this.date.getMinutes()
          this.second = this.date.getSeconds()
          this.day = this.date.getDay()
        }, 100)
      })

    }
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