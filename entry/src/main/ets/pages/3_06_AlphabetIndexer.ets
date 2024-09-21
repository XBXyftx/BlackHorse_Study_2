@Entry
@Component
struct Alphabe {
  alphabets: string[] = [ 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K',
    'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
  @State selectedIndex:number=0

  build() {
    Stack({ alignContent: Alignment.End }) {
      // 字母表索引组件
      AlphabetIndexer({ arrayValue: this.alphabets, selected: $$this.selectedIndex })
        .color(Color.White)
        .backgroundColor(Color.Black)
        .scale({x:1.5,y:1.5})
        .selectedColor(Color.Black)
        .selectedBackgroundColor(Color.White)
        .usingPopup(true)
        .popupColor(Color.Orange)
        .popupItemBackgroundColor(Color.Red)
        .selectedFont({size:15})
      Text('当前索引值为:'+this.selectedIndex)
        .width('80%')
    }
    .width('100%')
    .height('100%')
  }
}