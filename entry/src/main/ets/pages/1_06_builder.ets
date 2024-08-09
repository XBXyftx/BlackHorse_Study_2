@Builder function builds(img:Resource,text:string){
  Column({ space: 10 }) {
    Image(img)
      .width('80%')
    Text(text)

  }
  .width('25%')
  .onClick(() => {
    AlertDialog.show({
      message: `点了 ${text}`
    })
  })
}


@Entry
@Component
struct builder {
  build() {
    Column() {
      Row() {
        builds($rawfile('ic_swiper_xmyp01.jpeg'),'阿里拍卖')
        builds($rawfile('ic_swiper_xmyp02.jpeg'),'菜鸟')
        builds($rawfile('ic_swiper_xmyp03.jpeg'),'芭芭农场')
        builds($rawfile('ic_swiper_xmyp04.jpeg'),'阿里药房')
      }
    }
    .height('100%')
    .width('100%')
  }
}