@Component
struct Card {
  build() {
    Column() {
      Row() {
        Text('默认文本')
        Row(){
          Text('右侧文本')
          Image($rawfile('ic_public_arrow_right.svg'))
        }
      }
    }
  }
}

@Entry
@Component
struct CardPage {
  build() {
    Column() {

    }
    .width('100%')
    .height('100%')
  }
}