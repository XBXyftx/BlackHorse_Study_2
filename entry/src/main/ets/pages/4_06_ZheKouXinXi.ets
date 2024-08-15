@Entry
@Component
struct AnimationDemo {
  @State scaleX: number = 1
  @State scaleY: number = 1

  build() {
    Column({ space: 50 }) {
      // 第二步：将状态变量设置到相关可动画属性接口（width、height、backgroundColor、opacity、scale、rotate、translate）
      Text('全场低至一分购')
        .fontSize(30)
        .fontWeight(900)
        .fontColor(Color.Red)
        .backgroundColor('#e8b66d')
        .padding(10)
        .borderRadius(20)
        .scale({
          x: this.scaleX,
          y: this.scaleY
        })
        .animation({
          duration: 1000,
          curve: Curve.Ease,
          playMode: PlayMode.Alternate,
          iterations: -1
        })
        .onClick(() => {
          // 点击触发
          this.scaleX = 1.3
          this.scaleY = 1.3
        })
    }
    .width('100%')
    .height('100%')
    .padding(20)

  }

  @Styles
  fullSize() {
    .width('100%')
    .height('100%')
  }
}