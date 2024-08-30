@Entry
@Component
struct SetInSZDSQ {
  @State siID: number = 0
  build() {
    //根组件
    Column({space: 10}) {
      Button('开启定时器-不关闭')
        .onClick(()=>{
          this.siID = setInterval(()=>{
            console.log('我执行了',)
          },500)
        })
      Button('关闭定时器')
      .onClick(()=>{
        clearInterval(this.siID)
      })
    }
    .height('100%')
    .width('100%')
  }
}