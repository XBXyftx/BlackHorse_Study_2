import { router } from "@kit.ArkUI"

interface Project{
  Id:number
  img:Resource
  title:string
  describe:string
  tag:string
  schedule:string
}

@Entry
@Component
export struct ProjectDetailComp {
  @State img: ResourceStr = ''
  @State title: string = ''
  @State describe:string = ''
  @State Id:number = 0
  @State schedule:string = ''

  aboutToAppear(): void {
    let project = router.getParams() as Project
    this.img = project.img
    this.title = project.title
    this.describe = project.describe
    this.Id = project.Id
    this.schedule = project.schedule
  }

  build() {
    Column() {
      Stack({ alignContent: Alignment.Top }) {
        Image($r('app.media.project_bg'))
          .width('100%')
          .opacity(0.2)
        Column() {
          Row() {
            Image($r('app.media.ohos_ic_public_arrow_left'))
              .size({ width: 24, height: 24 })
              .fillColor(Color.White)
              .onClick(()=>{
                router.back()
              })
            Blank()
              .layoutWeight(1)

          }
          .height(56)
          .width('100%')

          Row({ space: 16 }) {
            Image(this.img)
              .width(86)
              .height(114)
              .sharedTransition(this.Id.toString(), { duration: 300 })
            Column({ space: 16 }) {
              Text(this.title)
                .fontWeight(500)
                .fontColor(Color.White)
              Text(this.describe)
                .fontSize(14)
                .fontColor(Color.White)
              Blank()
              Text(`学习进度：${this.schedule}`)
                .fontColor('#979797')
                .fontSize(14)
            }
            .layoutWeight(1)
            .height(114)
            .alignItems(HorizontalAlign.Start)
          }
          .padding({ top: 20 })
          .alignItems(VerticalAlign.Top)
          .width('100%')
        }
        .padding({ left: 16, right: 16 })
      }
      .height(210)

      Column() {
        Row({ space: 14 }) {
          Text('问题列表')
            .fontWeight(500)
        }
        .height(44)
        .width('100%')
        .padding({ left: 16, right: 16 })
        .border({
          width: { bottom: 0.5 },
          color: '#e8e7ee'
        })

        Column() {
          //  TODO:列表
        }
        .layoutWeight(1)
      }
      .layoutWeight(1)
      .backgroundColor(Color.White)
      .width('100%')
      .borderRadius({ topLeft: 16, topRight: 16 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#5D2B05')
  }
}