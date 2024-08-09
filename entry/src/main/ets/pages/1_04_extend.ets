@Extend(Text)//抽取某一组件的样式支持参数
function textExtend(bgColor:ResourceColor,msg:string){
  .textAlign(TextAlign.Center)
  .backgroundColor(bgColor)
  .fontColor(Color.White)
  .fontSize(30)
  .onClick(() => {
    AlertDialog.show({
      message: msg
    })
  })
}

@Entry
@Component
struct extend {
  build() {
    Column() {
      Swiper() {
        Text('0')
          .textExtend(Color.Red,'轮播图1')
        Text('1')
          .textExtend(Color.Blue,'轮播图2')
        Text('2')
          .textExtend(Color.Yellow,'轮播图3')
      }
      .width('100%')
      .height(100)
    }
    .height('100%')
    .width('100%')
  }
}