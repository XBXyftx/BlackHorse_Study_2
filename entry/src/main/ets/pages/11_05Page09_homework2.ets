export interface iDatum {
  /**
   * 评论内容
   */
  content: string;

  /**
   * 评论id
   */
  id: number;

  /**
   * 评论时间
   */
  time: string;

  /**
   * 评论者姓名
   */
  username: string;
  agreeCount: number; // 支持人数
  isagreed: boolean; // 是否已经支持
}


@Entry
@Component
struct Index {
  @State list: iDatum[] = [{
    id: 1,
    username: "阿三",
    content: "已经用上了，很舒服",
    time: "2024-03-19",
    agreeCount: 14,
    isagreed: false,
  },
    {
      id: 2,
      username: "YY",
      content: "小爱同学：这太难了",
      time: "2024-03-18",
      agreeCount: 14,
      isagreed: true,
    },
    {
      id: 3,
      username: "风陵渡客",
      content: "我不做了",
      time: "2024-03-17",
      agreeCount: 10,
      isagreed: false,
    },
    {
      id: 4,
      username: "国足不如你",
      content: "什么时候可以接入12306呢",
      time: "2024-03-12",
      agreeCount: 140,
      isagreed: true,
    },
    {
      id: 5,
      username: "春去春又来",
      content: "华为是一家积极向上的企业",
      time: "2024-03-10",
      agreeCount: 100,
      isagreed: false,
    }] // 获取服务器评论数据

  build() {

    Column({ space: 10 }) {
      Text('评论列表')
        .fontSize(20)
        .fontWeight(600)
        .textAlign(TextAlign.Start)
        .width('100%')

      Divider()
        .strokeWidth(1)
      List() {
        ForEach(this.list, (item: iDatum, index: number) => {
          Item({
            item: item,
            changeState: (isAgree: boolean) => {
              if (isAgree) {
                item.isagreed = isAgree
                item.agreeCount++
              } else {
                item.isagreed = isAgree
                item.agreeCount--
              }
              this.list.splice(index,1,item)
            }
          })
        })
      }
      .scrollBar(BarState.Off)
    }
    .padding(10)
  }
}

@Component
struct Item {
  @Prop item: iDatum
  changeState = (isAgree: boolean) => {

  }

  build() {
    ListItem() {
      Row() {
        Image($r('app.media.ic_common_send'))
          .width(50)
          .borderRadius(25)

        Column({ space: 5 }) {
          Text(this.item.username)
            .fontSize(13)
            .fontColor(Color.Gray)
            .textAlign(TextAlign.Start)
            .width('100%')

          Text(this.item.content)
            .textAlign(TextAlign.Start)
            .width('100%')
            .fontSize(14)

          Row({ space: 15 }) {
            Text(this.item.time)
              .fontSize(13)
              .fontColor(Color.Gray)
              .textAlign(TextAlign.Start)
              .width('100%')
              .layoutWeight(1)

            Text(`支持(${this.item.agreeCount})`)
              .fontSize(12)
              .fontColor(this.item.isagreed ? Color.Green : Color.Gray)// 支持 绿色，未支持 灰色
              .onClick(() => {
                if (this.item.isagreed) {
                  this.changeState(false)
                } else {
                  this.changeState(true)
                }
              })

          }
          .margin({ top: 10 })

          Divider()
            .strokeWidth(1)
            .margin({ top: 5, bottom: 15 })
        }
        .width('100%')
        .padding({ left: 10, right: 10 })
        .layoutWeight(1)
      }
      .alignItems(VerticalAlign.Top)
    }
  }
}