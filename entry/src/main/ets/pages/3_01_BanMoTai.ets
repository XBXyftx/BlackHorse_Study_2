@Entry
@Component
struct SheetTransitionExample1 {
  // 1. 定义控制变量
  @State isShow: boolean = false

  // 2.自定义内容
  //但是点半模态自带的不会更新变量状态所以需要双向绑定
  @Builder
  myBuilder() {
    Column() {

    }
    .backgroundColor(Color.Blue)
    .width('100%')
    .height(300)
  }

  build() {
    Column() {
      Button(`显示半模态`)//  3.绑定半模态框
        //$$是双向绑定
        .bindSheet(
          $$this.isShow,
          this.myBuilder(),
          {
            // height: SheetSize.MEDIUM//半屏
            // height: SheetSize.LARGE//默认几乎满屏
            height: SheetSize.FIT_CONTENT//跟随内容自动变化
          }
        )
        .onClick(() => {
          // 4.控制显示
          this.isShow = true
        })
    }
  }
}