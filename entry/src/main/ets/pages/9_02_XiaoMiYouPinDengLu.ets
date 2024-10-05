@Entry
@Component
struct XMYP_Login {
  @State isSelected: boolean = false
  @State userName: string = ''
  @State password: string = ''

  build() {
    Column() {
      // 1. 顶部
      this.TopSectionBuilder()

      // 2. 登录区域
      Column() {
        Image($r('app.media.ic_xiaomi_logo'))
          .width(50)
        Stack() {
          // 登录信息+密码登录
          Column({ space: 20 }) {
            // 账号输入框
            TextInput({ placeholder: '小米账号/手机号/邮箱' })
              .placeholderColor('#ccc')
              .backgroundColor(Color.Transparent)
              .border({ width: { bottom: .5 }, color: '#ccc' })
              .padding(0)
              .height(48)
              .onChange((item:string)=>{
                this.userName=item
              })

            TextInput({ placeholder: '密码' })
              .placeholderColor('#ccc')
              .backgroundColor(Color.Transparent)
              .border({ width: { bottom: .5 }, color: '#ccc' })
              .padding(0)
              .height(48)
              .type(InputType.Password)
              .passwordIcon({
                //眼睛样式
                offIconSrc: $r('app.media.ic_eyes_open'),
                onIconSrc: $r('app.media.ic_eyes_close'),
              })
              .onChange((item:string)=>{
                this.password=item
              })

          }

        }
        .margin({ top: 30 })

        // 底部区域
        Column({ space: 15 }) {
          Row() {
            Text('忘记密码')
              .LinkTextExtends()
          }
          .width('100%')
          .justifyContent(FlexAlign.End)

          Button('登  录')
            .width('100%')
            .backgroundColor('#b6854e')
            .fontSize(14)
            .fontWeight(600)
            .onClick(() => {
              //1.是否选中  双向绑定
              if (this.isSelected != true) {
                AlertDialog.show({
                  message: '请先同意用户协议'
                })
                return
              }
              //2.用户名密码是否为空
              if (this.userName.trim() == '') {
                AlertDialog.show({
                  message:'用户名不能为空'
                })
                return
              }
              if (this.password.trim() == '') {
                AlertDialog.show({
                  message:'密码不能为空'
                })
                return
              }

              AlertDialog.show({
                message:'登陆成功'
              })
            })

          Row() {
            Text('立即注册')
              .LinkTextExtends()
            Text('短信登录')
              .LinkTextExtends()

          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .margin({ top: 15 })

      }
      .margin({ top: 60 })

      Blank()

      // 3. 底部登录区域
      Column({ space: 20 }) {
        Row() {
          Checkbox()
            .shape(CheckBoxShape.CIRCLE)
            .selectedColor('#af8756')
            .select($$this.isSelected)

          Text() {
            Span('已阅读并同意')
            Span('《用户协议》')
              .fontColor('#9cbce8')
            Span('《隐私协议》')
              .fontColor('#9cbce8')
              .translate({ x: -10 })
          }
          .fontSize(12)
          .fontColor('#acacac')
        }

        Stack() {
          Divider()
            .strokeWidth(.5)
          Text('其他登录方式')
            .fontSize(12)
            .fontColor(Color.Gray)
            .backgroundColor(Color.White)
            .padding({ left: 5, right: 5 })
        }
        .width('100%')

        // 微信 和 苹果的登录
        Row({ space: 15 }) {
          Image($r('app.media.ic_applelogo'))
            .width(40)
          Image($r('app.media.ic_wechat'))
            .width(40)
        }

      }
    }
    .padding({
      top: 30,
      left: 30,
      right: 30,
      bottom: 50
    })
    .height('100%')
  }

  @Builder
  TopSectionBuilder() {
    // 1. 顶部
    Row() {
      Image($r('app.media.ic_public_arrow_left'))
        .width(24)
      Image($r('app.media.ic_public_question'))
        .width(24)
    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceBetween)
  }
}

@Extend(Text)
function LinkTextExtends() {
  .fontColor(Color.Gray)
  .fontSize(14)
}


