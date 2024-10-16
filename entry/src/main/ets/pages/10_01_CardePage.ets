@Component
struct Card {
  title: string = ''
  subTitle: string = ''
  clickHandler: () => void = () => {
    console.log('1')
  }
  value: string = ''
  @BuilderParam
  content:()=>void = this.defaultBuilder

  build() {
    Column() {
      Row() {
        Text(this.title)
          .fontWeight(700)
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
        this.content()
      }
      .height(100)
      .justifyContent(FlexAlign.Center)
    }
    .padding(10)
    .borderRadius(10)
    .backgroundColor(Color.Pink)
  }

  @Builder
  defaultBuilder() {
    Text(this.value)
  }
}

@Entry
@Component
struct CardPage {

  @Builder
  avatarBuilder(){
    Image($rawfile('avatar.jpg'))
  }

  build() {
    Column({space:10}) {
      Card({
        title: '全部评论',
        subTitle: '更多',
        clickHandler() {
          AlertDialog.show({
            message: '我要去看更多评论'
          })
        },
        value:'评论！！！'
      })


      Grid(){
        GridItem(){
          Card({
            title: '全部评论',
            subTitle: '更多',
            clickHandler() {
              AlertDialog.show({
                message: '我要去看更多评论'
              })
            },
            value:'评论！！！'
          })
        }
        GridItem(){
          Card({
            title: '全部评论',
            subTitle: '更多',
            clickHandler() {
              AlertDialog.show({
                message: '我要去看更多评论'
              })
            },
            value:'评论！！！',
            content:this.avatarBuilder
          })
        }
      }
      .columnsGap(10)
      .columnsTemplate('1fr 1fr')


    }
    .padding(20)
    .width('100%')
    .height('100%')
  }
}