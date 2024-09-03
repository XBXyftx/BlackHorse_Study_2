@Entry
@Component
struct LoginDemo {
  @State time:number = 0
  build() {
    Column() {
      this.titleBuilder()
      TextInput({ placeholder: '请输入手机号' })
        .textInputExtend()
      Divider()
      Row() {
        TextInput({ placeholder: '请输入验证码' })
          .textInputExtend()
          .layoutWeight(1)
        Text(this.time===0?'发送验证码':`${this.time}秒后获取`)
          .fontSize(14)
          .fontColor(Color.Gray)
          .onClick(() => {
            if (this.time===0){
              console.log('发送验证码')
              setTimeout(() => {
                const code = Math.floor(1000 + Math.random() * 9000)
                console.log('验证码', code)
                AlertDialog.show({
                  title: '验证码',
                  message: `您的验证码是${code}`,
                })
              }, 2000)
              this.time=60
              const id = setInterval(()=>{
                this.time--
                if (this.time===0){
                  clearInterval(id)
                }
              },1000)
            }

          })
      }
      .width('100%')

      Divider()

      Button('登录')
        .width('100%')
        .type(ButtonType.Normal)
        .backgroundColor('#ea6051')
        .margin({ top: 50 })

    }
    .padding({ top: 80, left: 40, right: 40 })
    .width('100%')
    .alignItems(HorizontalAlign.Start)
  }

  @Builder
  titleBuilder() {
    Text('短信登录')
      .fontSize(25)
      .fontWeight(600)
      .margin({ bottom: 30 })
  }
}

@Extend(TextInput)
function textInputExtend() {
  .backgroundColor(Color.White)
  .padding({ left: 0, top: 20, bottom: 20 })
  .placeholderColor('#ccc')
}
