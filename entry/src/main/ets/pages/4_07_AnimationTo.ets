@Entry
@Component
struct AnimationDemo03 {
  // 状态变量
  @State animate: boolean = false;
  @State translateY: number = 1
  @State bgColor: ResourceColor = Color.Pink
  @State fontColor: ResourceColor = '#0094ff'
  @State fontWeight: number = 100
  @State angle: number = 0

  build() {
    Column() {
      Text('itheima')
        .width(100)
        .height(100)
        .fontColor(this.fontColor)
        .fontWeight(this.fontWeight)
        .backgroundColor(this.bgColor)
        .textAlign(TextAlign.Center)
        .translate({ y: this.translateY })
        .rotate({ angle: this.angle })
        .opacity(1)

      // 改变位置
      Button('改变位置')
        .onClick(() => {
          animateTo({
            iterations:-1,
            playMode:PlayMode.Alternate,
            duration:1000
          },()=>{
            this.angle += 100
          })

        })

      Button('切换动画')
        .onClick(() => {
          animateTo({},()=>{
            this.animate = !this.animate
            this.bgColor = !this.animate ? Color.Pink : '#0094ff'
            this.translateY = !this.animate ? 1 : 100
            this.fontColor = !this.animate ? '#0094ff' : Color.Pink
            this.fontWeight = !this.animate ? 100 : 900
            this.angle = !this.animate ? 0 : 135
          })


        })


    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.SpaceAround)
  }
}