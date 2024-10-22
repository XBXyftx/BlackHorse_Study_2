interface Cat{
  name:string
  color:string
}

@Entry
@Component
  // 顶级组件
struct RootComponent {
  @Provide food:string = '包子'
  @Provide cat:Cat={
    name:'波斯猫',
    color:'黑色'
  }
  build() {
    Column() {
      Text('顶级组件')
        .fontSize(30)
        .fontWeight(900)
      Text(this.food)
      Text(JSON.stringify(this.cat))
      ParentComponent()

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
  // 二级组件
struct ParentComponent {
  // 编写 UI
  build() {
    Column({ space: 20 }) {
      Text('我是二级组件')
        .fontSize(22)
        .fontWeight(900)
      SonComponent()
    }
    .backgroundColor('#a6c398')
    .alignItems(HorizontalAlign.Center)
    .width('90%')
    .margin({ top: 50 })
    .padding(10)
    .borderRadius(10)
  }
}

@Component
  // 内层组件
struct SonComponent {
  // @Consume food:string
  @Consume ('food') myFood:string//别名
  @Consume cat:Cat
  // 编写 UI
  build() {
    Column({ space: 20 }) {
      Text('我是内层组件')
        .fontSize(20)
        .fontWeight(900)
      // Text(this.food)
      Text(this.myFood)
        .onClick(()=>{
          // this.food+='好好吃'
          this.myFood+='好好吃'
        })
      Text(JSON.stringify(this.cat))
        .onClick(()=>{
          this.cat.name+='!!!'
        })
    }
    .backgroundColor('#bf94e4')
    .alignItems(HorizontalAlign.Center)
    .width('90%')
    .margin({ top: 50 })
    .padding(10)
    .borderRadius(10)
  }
}