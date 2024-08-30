@Entry
@Component
struct SetInSZDSQ {
  build() {
    //根组件
    Column() {
      Button('开启定时器-不关闭')
        .onClick(()=>{
          setInterval(()=>{
            console.log('我执行了',)
          },1000)
        })
    }
    .height('100%')
    .width('100%')
  }
}