// xxx.ets
@Entry
@Component
struct ImageAnimatorExample01 {
  // 快速生成图片数组
  // images: ImageFrameInfo[] =Array.from<string>({length:4}).map<ImageFrameInfo>((v:string,index:number)=>{
  //   return {
  //     src: $r(`app.media.loading_dog_${index}`),
  //   }
  // })

  build() {
    Column({ space: 10 }) {
      ImageAnimator()
        .animatorFancy()

      // 按钮控制区域
      Row({space:20}){
        Button('启动').onClick(()=>{
        })
        Button('暂停').onClick(()=>{
        })
        Button('停止').onClick(()=>{
        })
      }
    }
    .width('100%')
    .height('100%')
    .padding(10)

  }

  @Styles
  animatorFancy() {
    .width(300)
    .backgroundColor(Color.Gray)
    .aspectRatio(2)
    .padding(10)
    .borderRadius(10)
  }
}