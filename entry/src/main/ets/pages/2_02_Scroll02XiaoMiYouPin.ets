@Entry
@Component
struct Scroll02 {
  build() {
    Scroll(){
      Column(){
        Image($rawfile('ic_xiaomi_scroll_01.jpg'))
        Image($rawfile('ic_xiaomi_scroll_02.jpg'))
        Image($rawfile('ic_xiaomi_scroll_03.jpg'))
      }
    }
    .width('100%')
    .height('100%')
  }
}