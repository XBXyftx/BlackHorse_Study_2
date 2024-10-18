@Component
struct SonCom {
  @Prop info: string
  changeInfo = (newInfo:string) => {

  }

  build() {
    Button('info:' + this.info)
      .onClick(() => {
        this.info = '子组件修改'
        this.changeInfo('儿子')
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
        changeInfo:(newInfo:string)=>{
          console.log('父组件的changeInfo')//用父组件传入的逻辑来实现用子组件控制父组件
          this.info='阿米诺斯'
          console.log('newInfo'+newInfo)
          this.info=newInfo
        }
      })
    }
    .padding(20)
    .backgroundColor(Color.Orange)
  }
}