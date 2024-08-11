@Entry
@Component
struct SheetTransitionExample1 {
  // 半模态 Builder
  @Builder
  myBuilder() {
    Column() {
      Stack({ alignContent: Alignment.End }) {
        Text('分享给好友')
          .width('100%')
          .textAlign(TextAlign.Center)
          .fontSize(20)
        Image($rawfile('ic_public_cancel.svg'))
          .width(25)
          .fillColor('#c0c0c0')
      }
      .width('100%')

      Row() {
        this.itemBuilder($rawfile('ic_share_sina.png'), '微信')
        this.itemBuilder($rawfile('ic_share_url.png'), '朋友圈')
        this.itemBuilder($rawfile('ic_share_wechat.png'), '微博')
        this.itemBuilder($rawfile('ic_share_pyq.png'), '复制链接')
      }
      .width('100%')
      .margin({ top: 30 })
      .justifyContent(FlexAlign.SpaceAround)
    }
    .padding(15)
  }

  // 半模态 内部图片 Builder
  @Builder
  itemBuilder(src: ResourceStr, title: string) {
    Column() {
      Image(src)
        .width(50)
      Text(title)
        .fontSize(14)
        .margin({ top: 10 })
    }
  }

  build() {
    Column() {
      Button(`显示半模态`)
        .fontSize(20)

      // 展示半模态Builder
      this.myBuilder()

    }
    .justifyContent(FlexAlign.Center)
    .width('100%')
    .height('100%')
  }
}