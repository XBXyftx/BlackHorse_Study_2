@Entry
@Component
struct SetTimeOut {
  @State flag:boolean=false
  build() {
    //根组件
    Column() {
      Button('点我开始计时')
        .onClick(()=>{
          setTimeout(()=>{
            this.flag!
          },3000)
        })

      if (this.flag){
        Row(){

        }
        .backgroundColor(Color.Red)
        .width(100)
        .height(100)
      }
    }
    .height('100%')
    .width('100%')
  }
}