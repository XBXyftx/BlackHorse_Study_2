@Entry
@Component
struct HomeWork {
  @Builder tabBarBuilder(text:string,num:number,message:number=0){

    Text(text)
  }
  build() {
    Column() {
      Stack({alignContent:Alignment.Bottom}) {
        //底部图片
        Image($rawfile('bg_02_1.png'))
          .width('100%')

        //正经内容最外层组件
        Tabs(){

        }

      }
      .height('100%')
      .width('100%')
    }
    .height('100%')
    .width('100%')
  }
}