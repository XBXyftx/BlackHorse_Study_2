interface News1 {
  img: ResourceStr
  text: string
  time: string
}

interface title {
  img: ResourceStr,
  str: string
}


interface TopicItem {
  title: string,
  children?: children[]
}

interface children {
  subTitle: string,
  total: string
}


@Entry
@Component
struct HomeWork2 {
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

  @State isShow: boolean = false
  news: News1[] = [
    { img: $rawfile('list_02_1.jpg'), text: '字节一面：TCP和UDP可以使用同一个端口号吗？', time: '2024-03-05 10:07:22' },
    { img: $rawfile('list_02_2.jpg'), text: '字节一面：TCP和UDP可以使用同一个端口号吗？', time: '2024-03-05 10:07:22' },
    { img: $rawfile('list_02_3.jpg'), text: '字节一面：TCP和UDP可以使用同一个端口号吗？', time: '2024-03-05 10:07:22' },
    { img: $rawfile('list_02_4.jpg'), text: '字节一面：TCP和UDP可以使用同一个端口号吗？', time: '2024-03-05 10:07:22' },
    { img: $rawfile('list_02_5.jpg'), text: '字节一面：TCP和UDP可以使用同一个端口号吗？', time: '2024-03-05 10:07:22' },
    { img: $rawfile('list_02_2.jpg'), text: '字节一面：TCP和UDP可以使用同一个端口号吗？', time: '2024-03-05 10:07:22' },
    { img: $rawfile('list_02_3.jpg'), text: '字节一面：TCP和UDP可以使用同一个端口号吗？', time: '2024-03-05 10:07:22' },
  ]
  @State index: number = 0
  title: title[] = [
    { str: '内容精选', img: $rawfile('ic_01_1.png') },
    { str: '学堂', img: $rawfile('ic_01_2.png') },
    { str: '鸿蒙开发者社区', img: $rawfile('ic_01_3.png') },
    { str: '博客', img: $rawfile('ic_01_4.png') },
    { str: '企业咨询', img: $rawfile('ic_01_5.png') },
    { str: '人工智能', img: $rawfile('ic_01_6.png') },
    { str: '数字产业', img: $rawfile('ic_01_7.png') }
  ]

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
          .onClick(() => {
            this.isShow = true
          })
          .bindContentCover($$this.isShow, this.coverBuilder())
      }
      .width('100%')
      .padding({ left: 10, right: 20 })

      Grid() {
        ForEach(this.title, (item: title, i) => {
          GridItem() {
            Column() {
              Image(item.img)
                .width(40)
              Text(item.str)
            }

          }
          .margin({ left: 10, right: 10 })
        })
      }
      .scrollBar(BarState.Off)
      .rowsTemplate('1fr')
      .height(60)
      .margin({ top: 15, bottom: 15 })

      this.shouYeLunBoBuilder(this.imgs)

      Scroll() {
        //scroll根组件
        Column() {
          Text('热门推荐')
            .alignSelf(ItemAlign.Start)
            .fontSize(25)
            .fontWeight(700)
            .margin({ bottom: 20 })

          ForEach(this.news, (item: News1, i) => {
            this.newsBuilder(item.img, item.text, item.time)
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
        .margin({ bottom: 15 })
    }
  }

  @Builder
  shouYeLunBoBuilder(imgs: Resource[]) {
    Swiper() {
      ForEach(imgs, (img: Resource, i) => {
        Image(img)
      })

    }
    .width('100%')
    .autoPlay(true)
    .interval(1000)
  }

  imgs: Resource[] =
    [$rawfile('banner_01_1.jpg'), $rawfile('banner_01_2.jpg'), $rawfile('banner_01_3.jpg'), $rawfile('banner_01_4.jpg')]
  titles: TopicItem[] = [
    {
      title: '开发',
      children: [
        { subTitle: '前端', total: '2.3w' },
        { subTitle: '后端', total: '2.5w' },
        { subTitle: '开发工具', total: '7181' },
        { subTitle: '游戏开发', total: '1001' },
        { subTitle: '项目管理', total: '608' },
        { subTitle: '架构', total: '2005' },
        { subTitle: 'VR/AR', total: '100' },
      ]
    },
    {
      title: '人工智能',
      children: [
        { subTitle: '机器学习', total: '2.3w' },
        { subTitle: '深度学习', total: '2.5w' },
        { subTitle: '算法', total: '7181' },
        { subTitle: '语音识别', total: '1001' },
        { subTitle: '人脸识别', total: '608' },
        { subTitle: '机器视觉', total: '2005' },
        { subTitle: '无人驾驶', total: '100' },
        { subTitle: '机器人', total: '100' },
      ]
    },
    {
      title: '云计算',
      children: [
        { subTitle: '云原生', total: '2.3w' },
        { subTitle: '混合云', total: '2.5w' },
        { subTitle: '分布式', total: '7181' },
        { subTitle: 'Laas', total: '1001' },
        { subTitle: 'Paas', total: '608' },
        { subTitle: 'Saas', total: '2005' },
        { subTitle: 'Kafka', total: '100' },
        { subTitle: '虚拟化', total: '100' },
      ]
    },
    { title: '开源' },
    {
      title: '网络',
      children: [
        { subTitle: '网络设备', total: '2.3w' },
        { subTitle: '通信技术', total: '2.5w' },
        { subTitle: '网络优化', total: '7181' },
        { subTitle: '网络管理', total: '1001' },
        { subTitle: '路由交换', total: '608' },
        { subTitle: '布线接入', total: '2005' },
      ]
    },
    {
      title: '大数据',
      children: [
        { subTitle: '数据分析', total: '2.3w' },
        { subTitle: '数据可视化', total: '2.5w' },
        { subTitle: '商业智能', total: '7181' },
        { subTitle: 'Spark', total: '1001' },
        { subTitle: '数据湖', total: '608' },
        { subTitle: '数据仓库', total: '2005' },
      ]
    },
    { title: '区块链' },
    { title: '服务器' },
    { title: '元宇宙' },
    { title: '原创' }
  ]

  @Builder
  coverBuilder() {
    Column() {
      Stack({ alignContent: Alignment.End }) {
        Text('全部话题')
          .fontSize(35)
          .width('100%')
          .textAlign(TextAlign.Center)
          .fontWeight(800)
        Image($rawfile('ic_public_cancel.svg'))
          .width(30)
          .margin({ right: 20 })
          .onClick(() => {
            this.isShow = false
          })
      }
      .width('100%')
      .margin({ bottom: 20, top: 20 })

      Stack({ alignContent: Alignment.End }) {
        List({scroller:this.ls}) {
          ForEach(this.titles, (item: TopicItem, i) => {
            ListItemGroup({ header: this.HeaderBuilder(item.title) }) {
              ForEach(item.children, (it: children, index) => {
                this.ListBuilder(it.subTitle, it.total)
              })
            }
          })
        }
        .onScrollIndex((start: number) => {
          this.listIndex = start
        })
        .width('100%')

        AlphabetIndexer({arrayValue:this.AlphString,selected:$$this.listIndex})
          .onSelect((index:number)=>{
            this.listIndex=index
            this.ls.scrollToIndex(this.listIndex)
          })
          .scale({x:1.6,y:1.6})
          .usingPopup(true)

      }
      .layoutWeight(1)

    }
    .height('100%')
    .backgroundColor(Color.White)
  }
  ls:ListScroller=new ListScroller()
  @State listIndex: number = 0
  AlphString:string[]=['开', '智', '云', '源', '网', '大', '区', '服', '元', '原']
  @Builder
  HeaderBuilder(title: string) {
    Row({ space: 10 }) {
      Image($rawfile('ic_03_title.png'))
        .width(30)
      Text(title)
        .fontSize(30)
        .fontWeight(800)
    }
    .padding(20)
    .backgroundColor(Color.Gray)
    .width('100%')
  }

  @Builder
  ListBuilder(text: string, time: string) {
    Row({ space: 8 }) {
      Image($rawfile('ic_03_title.png'))
        .width(20)
      Text(text)
        .fontSize(20)
        .fontWeight(500)
      Blank()
      Text(`数量${time}`)
    }
    .padding({
      left: 30,
      right: 30,
      top: 10,
      bottom: 10
    })
    .backgroundColor(Color.White)
    .width('100%')
  }
}