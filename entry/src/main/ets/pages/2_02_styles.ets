@Entry
@Component
struct styles {
  @State message: string = '@Styles'
  @State bgColor: ResourceColor = Color.Gray

  @Styles
  style(){ //抽取公用属性
    .width(200)
    .height(100)
    .onClick(() => {
      this.bgColor = Color.Orange
    })
    .backgroundColor(this.bgColor)
  }

  build() {
    Column({ space: 20 }) {
      Text(this.message)
        .style()
      Column() {
      }
        .style()

      Button('按钮')
        .style()


    }
    .height('100%')
    .width('100%')
  }
}