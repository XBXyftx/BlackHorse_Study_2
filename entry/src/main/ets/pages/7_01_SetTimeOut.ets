@Entry
@Component
struct SetTimeOut {
  @State flag:boolean=false
  build() {
    //根组件
    Column({space:10}) {
      Button('点我开始计时')
        .onClick(()=>{
          setTimeout(()=>{
            this.flag=!this.flag
            console.log('计时结束')
            console.log('',this.flag)
          },1000)
        })

      if (this.flag){
        Row(){}
        .backgroundColor(Color.Red)
        .width(100)
        .height(100)
      }
    }
    .height('100%')
    .width('100%')
  }
}