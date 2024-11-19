import { router } from "@kit.ArkUI"

interface Project{
  img:Resource
  title:string
  describe:string
  tag:string
  schedule:string
}

@Entry
@Component
struct IndexPage {

  projects:Project[]=[
    {img:$rawfile('project01.png'),title:'后台管理系统',describe:'以Vue技能管理后台系统面试题整理',tag:'后台系统',schedule:'10%'},
    {img:$rawfile('project02.png'),title:'在线医生问诊平台',describe:'以Vue3+ts实现在线医疗问诊功能',tag:'H5项目',schedule:'20%'},
    {img:$rawfile('project03.png'),title:'鸿蒙知识点',describe:'ArkTS和ArkUI为主的鸿蒙知识点讲解',tag:'鸿蒙应用',schedule:'30%'},
  ]

  build() {
    Column() {
      Text('项目')
        .height(44)
        .width('100%')
        .fontWeight(500)
        .textAlign(TextAlign.Center)
        .border({
          width: { bottom: 0.5 },
          color: '#e8e7ee'
        })

      List() {
        ForEach(this.projects,(item:Project,i)=>{
          ListItem() {
            ProjectCom({
              project:item
            })
              .onClick(()=>{
                router.pushUrl({
                  url:"pages/12_05_HW_DongHuaZhuanChang",
                  params:item
                })
              })
          }
        })

      }
      .divider({
        strokeWidth: 0.5,
        color: '#e8e7ee'
      })
      .padding({
        left: 16,
        right: 16
      })

    }
    .width('100%')
    .height('100%')
  }
}


@Component
struct ProjectCom {
  @Prop project:Project
  build() {
    Row({ space: 10 }) {
      Image(this.project.img)// 图片
        .size({ width: 60, height: 80 })
        .sharedTransition('id', { duration: 300 })
      Column({ space: 4 }) {
        Text(this.project.title)
          .fontWeight(500)
        Text(this.project.describe)
          .fontSize(12)
          .fontColor('#848484')
        Blank()
        Row({ space: 4 }) {
          HdTag({ text: this.project.tag})
        }
      }
      .layoutWeight(1)
      .height(80)
      .alignItems(HorizontalAlign.Start)
    }
    .padding({
      top: 16,
      bottom: 16
    })
    .alignItems(VerticalAlign.Top)
  }
}


@Component
export struct HdTag {
  text: string = ''

  build() {
    Text(this.text)
      .fontColor('#27AE60')
      .fontSize(10)
      .padding({ left: 4, right: 4 })
      .constraintSize({ minWidth: 34 })
      .height(18)
      .backgroundColor('#f3f4f5')
      .borderRadius(2)
      .textAlign(TextAlign.Center)
  }
}