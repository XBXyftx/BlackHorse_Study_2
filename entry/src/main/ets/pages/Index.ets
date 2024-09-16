// xxx.ets
@Entry
@Component
struct TimePickerDialogExample {
  private selectTime: Date = new Date()

  build() {
    Column() {
      Column(){

      }
      .onClick(()=>{
        const date:Date = new Date()
        TimePickerDialog.show({
          selected:date
        })
      })
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