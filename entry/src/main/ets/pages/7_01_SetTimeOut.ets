@Entry
@Component
struct SetTimeOut {
  @State flag:boolean=false
  @State timeOutID:number=0
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

      Button('点我开始计时')
        .onClick(()=>{
          this.timeOutID=setTimeout(()=>{
            this.flag=!this.flag
            console.log('计时结束')
            console.log('',this.flag)
          },3000)
        })
      Button('点我结束计时')
        .onClick(()=>{
          clearTimeout(this.timeOutID)
        })
    }
    .height('100%')
    .width('100%')
  }
}