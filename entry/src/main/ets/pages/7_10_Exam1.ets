import { message } from '../models/6_09_model'

@Entry
@Component
struct OpenAD {
  @State time: number = 5
  @State isShow: boolean = true
  private cid: number = -1
  @State op: number = 1

  build() {
    Stack() {
      Column() {
        Image($r('app.media.open_content'))
          .width('100%')
      }
      .fullSize()
      .onClick(()=>{
        AlertDialog.show({
          message:'a'
        })
      })

      if (this.isShow) {
        Stack({ alignContent: Alignment.Top }) {
          Image($r('app.media.open_ad'))
            .width('100%')
          Text(`跳过${this.time}`)
            .textExtend()
            .position({ x: '100%', y: 40 })
            .translate({ x: -80 })
            .onClick(() => {
              clearInterval(this.cid)
              this.isShow = !this.isShow
              animateTo({duration:1000},()=>{
                this.op = 0
              })
            })
            .onAppear(() => {
              this.cid = setInterval(() => {
                if (this.time > 0) {
                  this.time--
                } else {
                  clearInterval(this.cid)
                  this.isShow = !this.isShow
                  animateTo({duration:1000},()=>{
                    this.op = 0
                  })
                }
              }, 1000)
            })
        }
        .fullSize()
        .transition(TransitionEffect.OPACITY.animation({curve: Curve.Ease }))
        .backgroundColor('#fefefe')
        .opacity(this.op)
      }

    }

  }

  @Styles
  fullSize(){
    .width('100%')
    .height('100%')
  }
}

@Extend(Text)
function textExtend() {
  .backgroundColor(Color.Gray)
  .fontSize(10)
  .padding({
    top: 8,
    bottom: 8,
    left: 20,
    right: 20
  })
  .fontColor(Color.White)
  .borderRadius(15)
}
