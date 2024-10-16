@Component
struct SonCom {
  // 由外部传入 UI
  @BuilderParam titleBuilder: () => void = this.titleDefaultBuilder
  @BuilderParam contentBuilder: () => void = this.contentDefaultBuilder

  // 设置默认 的 Builder，避免外部不传入
  @Builder
  titleDefaultBuilder() {
    Text('默认标题')
  }

  @Builder
  contentDefaultBuilder() {
    Text('默认内容')
  }

  build() {
    Column() {
      Row() {
        this.titleBuilder()
      }
      .layoutWeight(1)

      Divider()
      Row() {
        this.contentBuilder()
      }
      .layoutWeight(1)

    }
    .width(300)
    .height(200)
    .border({ width: .5 })
  }
}

@Entry
@Component
struct Index {
  @Builder
  fTitleBuilder() {
    Text('传入的标题')
      .fontSize(20)
      .fontWeight(600)
      .fontColor(Color.White)
      .backgroundColor(Color.Blue)
      .padding(10)
  }

  @Builder
  fContentBuilder() {
    Text('传入的标题2')
      .fontSize(20)
      .fontWeight(600)
      .fontColor(Color.White)
      .backgroundColor(Color.Blue)
      .padding(10)
  }

  build() {
    Column({ space: 15 }) {
      SonCom({ titleBuilder: this.fTitleBuilder, contentBuilder: this.fContentBuilder })
    }
  }
}