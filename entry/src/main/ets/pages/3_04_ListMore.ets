@Entry
@Component
struct ListMore {
  @Builder HeadBuilder(text:string){
    Text(text)
      .fontSize(30)
      .padding(10)
      .fontColor(Color.Pink)
      .backgroundColor(Color.Gray)
  }
  @Builder FooterBuilder(text:string){
    Text(text)
      .fontSize(30)
      .padding(10)
      .fontColor(Color.Pink)
      .backgroundColor(Color.Green)
  }
  build() {
    Column() {
      List(){
        ListItemGroup({header:this.HeadBuilder('A'),footer:this.FooterBuilder('A'),space:20}){
          ListItem(){
            Text('阳光小男孩')
          }
          ListItem(){
            Text('花开富贵')
          }
        }
        .divider({strokeWidth:2,color:Color.Blue})

        ListItemGroup({header:this.HeadBuilder('B')}){
          ListItem(){
            Text('西蓝花炒鸡蛋')
          }
          ListItem(){
            Text('阳光小男孩')
          }
        }

        ListItem(){
          Text('阳光小男孩')
        }
        ListItem(){
          Text('阳光小男孩')
        }
      }
      .padding(10)
    }
    .height('100%')
    .width('100%')
  }
}