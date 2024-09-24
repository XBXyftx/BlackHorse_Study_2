@Entry
@Component
struct Index {
  @State info:string='用户信息'
  build() {
    Column() {
      TextInput({placeholder:'请输入用户名',text:$$this.info})
        .backgroundColor(Color.Blue)
        .type(InputType.Email)//就没有中文和特殊符号了
      Text(`info:${this.info}`)
        .onClick(()=>{
          this.info=':)'
        })

      TextInput({placeholder:'请输入用户名',text:$$this.info})
        .backgroundColor(Color.Blue)
        .type(InputType.Password)
        .placeholderColor(Color.Red)
    }
    .padding(10)
    .width('100%')
    .height('100%')
  }
}