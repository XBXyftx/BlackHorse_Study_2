@Entry
@Component
struct HomeWork {
  @State index:number=0
  @Builder tabBarBuilder(text:string,num:number,message:number=0){
    Badge({
      count:message,
      position: {x: 25, y: -5},
      style:{}
    }){
      Text(text)
        .fontWeight((this.index===num?800:400))
        .fontColor((this.index===1)?Color.White:Color.Black)
    }

  }
  @Builder ShouYeBuilder(){
    Scroll(){
      //scroll根组件
      Column(){
        Row(){

        }
        .width('100%')
      }
    }
    .width('100%')
    .height('100%')
  }
  build() {
    Column() {
      Stack({alignContent:Alignment.Bottom}) {
        //底部图片
        Image((this.index===1)?$rawfile('bg_02_2.png'):$rawfile('bg_02_1.png'))
          .width('100%')

        //正经内容最外层组件
        Tabs({barPosition:BarPosition.End}){
          //首页
          TabContent(){
            this.ShouYeBuilder()
          }
          .tabBar(this.tabBarBuilder('首页',0))
          //视频
          TabContent(){

          }
          .tabBar(this.tabBarBuilder('视频',1))
          //消息
          TabContent(){

          }
          .tabBar(this.tabBarBuilder('消息',2,9))
          //我的
          TabContent(){

          }
          .tabBar(this.tabBarBuilder('我的',3))

        }
        .onChange((index:number)=>{
          this.index=index
        })

      }
      .height('100%')
      .width('100%')
    }
    .height('100%')
    .width('100%')
  }
}