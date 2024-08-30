@Entry
@Component
struct SetInSZDSQ {
  @State siID: number = 0
  build() {
    //根组件
    Column() {
      Button('开启定时器-不关闭')
        .onClick(()=>{
          this.siID = setInterval(()=>{
            console.log('我执行了',)
          },500)
        })
      Button()
      .onClick(()=>{
        clearInterval(this.siID)
      })
    }
    .height('100%')
    .width('100%')
  }
}