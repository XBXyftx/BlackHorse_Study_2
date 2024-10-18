@Component
struct SonCom {
  @Prop info: string

  build() {
    Button('info:' + this.info)
      .onClick(() => {
        this.info = '子组件修改'
      })
  }
}

@Entry
@Component
struct FatherCom {
  @State info: string = '么么哒'

  build() {
    Column() {
      Text(this.info)
        .onClick(() => {
          this.info = '父组件修改'
        })
      SonCom({
        info: this.info,

      })
    }
    .padding(20)
    .backgroundColor(Color.Orange)
  }
}