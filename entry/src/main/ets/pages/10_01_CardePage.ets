@Component
struct Card {
  build() {
    Column() {
      Row() {
        Text('默认文本')
        Row(){
          Text('右侧文本')
          Image($rawfile('ic_public_arrow_right.svg'))
            .fillColor(Color.Gray)
            .width(20)
        }
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .width('100%')
    }
    .padding(10)
    .borderRadius(10)
    .backgroundColor(Color.Pink)
  }
}

@Entry
@Component
struct CardPage {
  build() {
    Column() {
      Card()
    }
    .padding(20)
    .width('100%')
    .height('100%')
  }
}