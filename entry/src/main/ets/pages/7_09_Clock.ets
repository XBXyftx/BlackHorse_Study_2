@Entry
@Component
struct Date01 {
  date = new Date()
  @State year:number = this.date.getFullYear()
  @State month:number = this.date.getMonth()+1
  @State date1:number = this.date.getDate()
  @State hour:number = this.date.getHours()
  @State minute:number = this.date.getMinutes()
  @State second:number = this.date.getSeconds()
  @State day:number = this.date.getDay()

  build() {
    Column() {
      Column() {
        Text(`${this.year}年 ${this.month} 月 ${this.date} 日 周`)
          .fontColor(Color.White)
          .fontSize(20)
        Stack() {
          Row({ space: 10 }) {
            Text('10')
              .textStyle()
            Text('10')
              .textStyle()
            Text('10')
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