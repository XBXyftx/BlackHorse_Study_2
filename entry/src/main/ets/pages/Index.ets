// xxx.ets
@Entry
@Component
struct TimePickerDialogExample {
  private selectTime: Date = new Date()

  build() {
    Column() {
      Column(){

      }
      .width(100)
      .height(100)
      .border({width:2,style:BorderStyle.Dashed})
    }
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
    .width('100%')
    .height('100%')
  }
}