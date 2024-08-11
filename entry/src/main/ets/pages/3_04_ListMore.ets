@Entry
@Component
struct ListMore {
  @Builder HeadBuilder(){
    Text('A')
      .fontSize(30)
      .padding(10)
      .fontColor(Color.Pink)
      .backgroundColor(Color.Gray)
  }
  build() {
    Column() {
      List(){
        ListItem(){
          Text('阳光小男孩')
        }
        ListItem(){
          Text('花开富贵')
        }
        ListItem(){
          Text('西蓝花炒鸡蛋')
        }
        ListItem(){
          Text('阳光小男孩')
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