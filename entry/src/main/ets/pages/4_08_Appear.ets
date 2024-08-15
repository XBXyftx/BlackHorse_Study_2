@Entry
@Component
struct EventDemo {
  @State isShow: boolean = false

  build() {
    Column({ space: 50 }) {
      Button('切换显示')
        .onClick(() => {
          this.isShow = !this.isShow
        })

      if (this.isShow) {
        Text('我是文本')
          .width('100%')

      }

    }
    .width('100%')
    .height('100%')
    .padding(20)
  }

}