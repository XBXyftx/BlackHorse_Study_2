@Entry
@Component
struct AnimationDemo2 {
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
        .animation({//只能应用到上方的属性，所以scale要放在animation的上方
          duration: 1000,
          curve: Curve.Ease,
          playMode: PlayMode.Alternate,
          iterations: 10,
          onFinish:(()=>{
            console.log('动画播放结束')
            AlertDialog.show({
              message:'优惠没有了'
            })
        })
        })
        .onAppear(() => {
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