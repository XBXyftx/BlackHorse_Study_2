@Entry
@Component
struct Index {

  @State @Watch('handleChange') msg:string = ''

  handleChange(){//处理函数
    console.log(this.msg)
    if (this.msg.length>10) {
      AlertDialog.show({
        message:'10位以内'
      })
    }
  }
  build() {
    Column() {
      TextInput({
        text:$$this.msg,
        placeholder:'请输入用户名'
      })
      Button('清空')
        .onClick(()=>{
          this.msg=''
        })
    }
    .width('100%')
    .height('100%')
  }
}