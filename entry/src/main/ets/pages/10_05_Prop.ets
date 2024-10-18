@Component
struct SonCom {
  @Prop info: string
  changeInfo = () => {

  }

  build() {
    Button('info:' + this.info)
      .onClick(() => {
        this.info = '子组件修改'
        this.changeInfo()
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
        changeInfo:()=>{
          console.log('父组件的changeInfo')
          this.info='阿米诺斯'
        }
      })
    }
    .padding(20)
    .backgroundColor(Color.Orange)
  }
}