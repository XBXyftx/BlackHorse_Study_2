// xxx.ets
import { Image } from '@kit.ArkGraphics3D'

@Entry
@Component
struct ImageAnimatorExample01 {
  // 快速生成图片数组
  // images: ImageFrameInfo[] =Array.from<string>({length:4}).map<ImageFrameInfo>((v:string,index:number)=>{
  //   return {
  //     src: $r(`app.media.loading_dog_${index}`),
  //   }
  // })
  imgList:ImageFrameInfo[]=[
    {src:$rawfile('loading_dog_0.png')},
    {src:$rawfile('loading_dog_1.png')},
    {src:$rawfile('loading_dog_2.png')},
    {src:$rawfile('loading_dog_3.png')},
  ]
  @State animationStatus:AnimationStatus=AnimationStatus.Initial
  build() {
    Column({ space: 10 }) {
      ImageAnimator()
        .animatorFancy()
        .images(this.imgList)
        .state(this.animationStatus)
        .iterations(-1)
        .duration(400)
      // 按钮控制区域
      Row({space:20}){
        Button('启动').onClick(()=>{
          this.animationStatus=AnimationStatus.Running
        })
        Button('暂停').onClick(()=>{
          this.animationStatus=AnimationStatus.Paused
        })
        Button('停止').onClick(()=>{
          this.animationStatus=AnimationStatus.Stopped
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