@Component
struct Card {
  title:string=''
  subTitle:string=''
  clickHandler = ()=>{}
  build() {
    Column() {
      Row() {
        Text(this.title)
        Row(){
          Text(this.subTitle)
          Image($rawfile('ic_public_arrow_right.svg'))
            .fillColor(Color.Gray)
            .width(20)
        }
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .width('100%')

      Column(){
        Text('默认内容')
      }
      .height(100)
      .justifyContent(FlexAlign.Center)
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