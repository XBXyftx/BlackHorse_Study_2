@Entry
@Component
struct AnimationDemo {
  @State translateY: number = 1
  @State bgColor: ResourceColor = Color.Pink
  @State fontColor: ResourceColor = '#0094ff'
  @State fontWeight: number = 100

  build() {
    Column() {
      Text('C')
        .width(100)
        .height(100)
        .fontWeight(this.fontWeight)
        .backgroundColor(this.bgColor)
        .textAlign(TextAlign.Center)
        .translate({ y: this.translateY })
        .opacity(1)
      Button('修改状态变量')
        .onClick(() => {
          this.bgColor = '#0094ff'
          this.translateY = 100
          this.fontColor = Color.Pink
          this.fontWeight = 900
        })
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.SpaceAround)
  }
}