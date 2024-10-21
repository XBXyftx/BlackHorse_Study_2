import { it } from "@ohos/hypium";

// 接口
export interface iDatum {
  id: number; //  评论id
  content: string; // 评论内容
  time: string; // 评论时间
  username: string; // 评论者姓名
  agreeCount: number; // 支持人数
  rejectCount: number; // 反对人数
  isagreed: boolean; // 是否已经支持
  isreject: boolean; //是否已经反对
}

enum optType {
  agree, // 支持
  unagree, // 取消支持
  reject, // 反对
  unreject // 取消反对
}

// 服务器评论数据
const arr: iDatum[] = [
  {
    id: 1,
    username: "阿三",
    content: "已经用上了，很舒服",
    time: "2024-03-19",
    agreeCount: 14,
    rejectCount: 2,
    isagreed: false,
    isreject: false
  },
  {
    id: 2,
    username: "YY",
    content: "小爱同学：这太难了",
    time: "2024-03-18",
    agreeCount: 14,
    rejectCount: 2,
    isagreed: false,
    isreject: false
  },
  {
    id: 3,
    username: "风陵渡客",
    content: "我不做了",
    time: "2024-03-17",
    agreeCount: 10,
    rejectCount: 3,
    isagreed: false,
    isreject: false
  },
  {
    id: 4,
    username: "国足不如你",
    content: "什么时候可以接入12306呢",
    time: "2024-03-12",
    agreeCount: 140,
    rejectCount: 21,
    isagreed: false,
    isreject: false
  },
  {
    id: 5,
    username: "春去春又来",
    content: "华为是一家积极向上的企业",
    time: "2024-03-10",
    agreeCount: 100,
    rejectCount: 0,
    isagreed: false,
    isreject: false
  }]

// 头部组件
@Component
struct Header {
  build() {
    Column({ space: 10 }) {
      Text('评论列表')
        .fontSize(20)
        .fontWeight(900)
      Divider()
        .color(Color.Gray)
    }
    .alignItems(HorizontalAlign.Start)
    .padding(10)
  }
}

@Component
struct commentItem {
  @Prop item: iDatum
  changeData = (op: optType) => {

  }

  build() {
    ListItem() {
      Row({ space: 10 }) {
        Image($r('app.media.ic_common_send'))
          .width(50)
          .alignSelf(ItemAlign.Start)
        Column() {
          Text(this.item.username)
            .fontSize(14)
            .fontColor(Color.Gray)
          Text(this.item.content)
            .fontSize(14)
          Row() {
            Text(this.item.time)
              .fontSize(13)
              .fontColor(Color.Gray)
            Blank()
            Row({ space: 20 }) {
              Text(`支持(${this.item.agreeCount})`)
                .fontSize(12)
                .fontColor(this.item.isagreed ? Color.Green : Color.Gray)// 绿色 和 灰色切换
                .onClick(() => {
                  if (this.item.isagreed) {
                    this.changeData(optType.agree)
                  } else {
                    this.changeData(optType.unagree)
                  }
                })
              Text(`反对(${this.item.rejectCount})`)
                .fontSize(12)
                .fontColor(this.item.isreject ? Color.Red : Color.Gray)// 红色 和 灰色切换
                .onClick(() => {
                  if (this.item.isreject) {
                    this.changeData(optType.reject)
                  } else {
                    this.changeData(optType.unreject)
                  }
                })

            }
          }
          .width('100%')
        }
        .layoutWeight(1)
        .alignItems(HorizontalAlign.Start)
        .height('100%')
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .width('100%')
      .padding(10)
      .height(90)
    }
  }
}


@Entry
@Component
struct HomeWorkPage {
  @State list:iDatum[]=arr

  build() {
    Column() {
      // 头部组件
      Header()

      List() {

        ForEach(this.list, (item: iDatum, i) => {
          commentItem({
            item: item,
            changeData: (op: optType) => {
              if (op == optType.agree) {
                item.isagreed = !item.isagreed
                item.agreeCount--
              } else if (op == optType.unagree) {
                item.isagreed = !item.isagreed
                item.agreeCount++
              } else if (op == optType.reject) {
                item.isreject = !item.isreject
                item.rejectCount--
              } else if (op == optType.unreject) {
                item.isreject = !item.isreject
                item.rejectCount++
              }
              this.list.splice(i,1,item)
            }
          })
        })


      }
      .divider({
        startMargin: 20,
        endMargin: 20,
        strokeWidth: 1,
        color: Color.Gray
      })
    }

  }
}