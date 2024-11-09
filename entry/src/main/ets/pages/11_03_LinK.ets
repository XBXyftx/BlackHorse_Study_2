interface Dog{
  name:string
  color:Color
}

@Entry
@Component
  // 父组件
struct Link_Demo {
  @State count: number = 0
  @State dog:Dog = {name:'藏獒',color:Color.Black}
  build() {
    Column() {
      Text('父组件')
        .fontSize(30)
      Text(this.count.toString())
      Text(JSON.stringify(this.dog))
      Button('修改数据')
        .onClick(() => {
          this.count++
          this.dog.name='!!!???'
          this.dog.color=Color.Green
        })
      SonComponent({count:this.count,dog:this.dog})
    }
    .padding(10)
    .height('100%')
    .backgroundColor('#ccc')
    .width('100%')
    .alignItems(HorizontalAlign.Center)
    .padding({ top: 100 })
  }
}

@Component
  // 子组件
struct SonComponent {
  @Link count:number//双向绑定
  @Link dog:Dog
  // 编写 UI
  build() {
    Column({ space: 20 }) {
      Text('子组件'+this.count)
        .fontSize(20)
      Text(JSON.stringify(this.dog))
      Column() {
        Button('修改count')
          .onClick(() => {
            this.count++
            this.dog.name='!!!'
            this.dog.color=Color.White
          })
      }
    }
    .backgroundColor('#a6c398')
    .alignItems(HorizontalAlign.Center)
    .width('80%')
    .margin({ top: 100 })
    .padding(10)
    .borderRadius(10)
  }
}