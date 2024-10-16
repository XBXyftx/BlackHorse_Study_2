@Component
struct Card {
  title: string = ''
  subTitle: string = ''
  clickHandler: () => void = () => {
    console.log('1')
  }
  value: string = ''

  build() {
    Column() {
      Row() {
        Text(this.title)
        Row() {
          Text(this.subTitle)
          Image($rawfile('ic_public_arrow_right.svg'))
            .fillColor(Color.Gray)
            .width(20)
        }
        .onClick(() => {
          this.clickHandler()
        })

      }
      .justifyContent(FlexAlign.SpaceBetween)
      .width('100%')

      Column() {
        Text(this.value)
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
      Card({
        title: '全部评论',
        subTitle: '更多',
        clickHandler() {
          AlertDialog.show({
            message: '我要去看更多评论'
          })
        }
      })
    }
    .padding(20)
    .width('100%')
    .height('100%')
  }
}