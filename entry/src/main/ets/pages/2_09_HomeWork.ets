interface News {
  img: ResourceStr
  text: string
  time: string
}

@Entry
@Component
struct HomeWork {
  news: News[] = [
    { img: $rawfile('list_02_1.jpg'), text: '字节一面：TCP和UDP可以使用同一个端口号吗？', time: '2024-03-05 10:07:22' },
    { img: $rawfile('list_02_2.jpg'), text: '字节一面：TCP和UDP可以使用同一个端口号吗？', time: '2024-03-05 10:07:22' },
    { img: $rawfile('list_02_3.jpg'), text: '字节一面：TCP和UDP可以使用同一个端口号吗？', time: '2024-03-05 10:07:22' },
    { img: $rawfile('list_02_4.jpg'), text: '字节一面：TCP和UDP可以使用同一个端口号吗？', time: '2024-03-05 10:07:22' },
    { img: $rawfile('list_02_5.jpg'), text: '字节一面：TCP和UDP可以使用同一个端口号吗？', time: '2024-03-05 10:07:22' },
    { img: $rawfile('list_02_2.jpg'), text: '字节一面：TCP和UDP可以使用同一个端口号吗？', time: '2024-03-05 10:07:22' },
    { img: $rawfile('list_02_3.jpg'), text: '字节一面：TCP和UDP可以使用同一个端口号吗？', time: '2024-03-05 10:07:22' },
  ]
  @State index: number = 0
  title: string[] = ['内容精选', '学堂', '鸿蒙开发者社区', '博客', '企业咨询', '人工智能', '数字产业']

  @Builder
  tabBarBuilder(text: string, num: number, message: number = 0) {
    Badge({
      count: message,
      position: { x: 25, y: -5 },
      style: {}
    }) {
      Text(text)
        .fontWeight((this.index === num ? 800 : 400))
        .fontColor((this.index === 1) ? Color.White : Color.Black)
    }

  }

  @Builder
  ShouYeBuilder() {
    Column() {
      //首页置顶栏
      Row({ space: 20 }) {
        Image($rawfile('hot_01.svg'))
          .height(40)
        Blank()
        Image($rawfile('user_01.svg'))
          .height(25)
        Image($rawfile('more_01.svg'))
          .height(25)
      }
      .width('100%')
      .padding({ left: 10, right: 20 })

      Grid() {
        ForEach(this.title, (item: string, i) => {
          GridItem() {
            Text(item)
          }
          .margin({ left: 10, right: 10 })
        })
      }
      .scrollBar(BarState.Off)
      .rowsTemplate('1fr')
      .height(50)
      .margin({ top: 15, bottom: 15 })

      Scroll() {
        //scroll根组件
        Column() {
          Text('热门推荐')
            .alignSelf(ItemAlign.Start)
            .fontSize(25)
            .fontWeight(700)
            .margin({ bottom: 20 })

          ForEach(this.news,(item:News,i)=>{
            this.newsBuilder(item.img,item.text,item.time)
          })

        }
        .width('100%')
        .padding(10)
      }
      .layoutWeight(1)

    }
    .width('100%')
    .height('100%')

  }

  @Builder
  newsBuilder(img: ResourceStr, text: string, time: string) {
    Column() {
      Row({ space: 10 }) {
        Image(img)
          .height(80)
          .borderRadius(10)
        Column() {
          Text(text)
            .width(160)
            .maxLines(2)
            .textOverflow({ overflow: TextOverflow.Ellipsis })
          Text(time)
            .fontSize(12)
            .fontColor(Color.Gray)
            .alignSelf(ItemAlign.Start)
        }
        .justifyContent(FlexAlign.SpaceBetween)
        .height(80)
      }
      .margin({ bottom: 15 })
      .width('100%')

      Divider()
        .color('#280f0f0f')
        .strokeWidth(1)
        .margin({bottom:15})
    }
  }

  build() {
    Column() {
      Stack({ alignContent: Alignment.Bottom }) {
        //底部图片
        Image((this.index === 1) ? $rawfile('bg_02_2.png') : $rawfile('bg_02_1.png'))
          .width('100%')

        //正经内容最外层组件
        Tabs({ barPosition: BarPosition.End }) {
          //首页
          TabContent() {
            this.ShouYeBuilder()
          }
          .tabBar(this.tabBarBuilder('首页', 0))

          //视频
          TabContent() {
            Image($rawfile('banner_01_4.jpg'))
              .height('100%')
          }
          .tabBar(this.tabBarBuilder('视频', 1))

          //消息
          TabContent() {

          }
          .tabBar(this.tabBarBuilder('消息', 2, 9))

          //我的
          TabContent() {

          }
          .tabBar(this.tabBarBuilder('我的', 3))

        }
        .onChange((index: number) => {
          this.index = index
        })

      }
      .height('100%')
      .width('100%')
    }
    .height('100%')
    .width('100%')
  }
}