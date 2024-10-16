
@Component
struct SonCom {
  // 1.设置默认 的 Builder，避免外部不传入
  @Builder
  defaultBuilder() {
    Text('默认的内容')
  }

  // 2.定义 BuilderParam 接受外部传入的 ui,并设置默认值
  @BuilderParam ContentBuilder: () => void = this.defaultBuilder



  build() {
    Column() {
      // 3. 使用 @BuilderParam 装饰的成员变量
      this.ContentBuilder()
    }
    .width(300)
    .height(200)
    .border({ width: 5 })
  }
}


// 使用自定义组件时，就可以使用如下方式传递 UI
// 不传递时会使用默认值



@Entry
@Component
struct Index {
  build() {
    Column({space:10}) {
      SonCom()
      SonCom(){
        Button('点我啊')
      }
      SonCom(){
        Image($rawfile('avatar.jpg'))
      }
    }
    .width('100%')
    .height('100%')
  }
}