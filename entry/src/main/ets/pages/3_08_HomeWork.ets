interface News1 {
  img: ResourceStr
  text: string
  time: string
}

interface title {
  img: ResourceStr,
  str: string
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
  @State isShow:boolean=false
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
          .onClick(()=>{
            this.isShow=true
          })
          .bindContentCover($$this.isShow,this.coverBuilder())
      }
      .width('100%')
      .padding({ left: 10, right: 20 })

      Grid() {
        ForEach(this.title, (item: title, i) => {
          GridItem() {
            Column(){
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
  shouYeLunBoBuilder(imgs:Resource[]){
    Swiper(){
      ForEach(imgs,(img:Resource,i)=>{
        Image(img)
      })

    }
    .width('100%')
    .autoPlay(true)
    .interval(1000)
  }

  imgs:Resource[]=[$rawfile('banner_01_1.jpg'),$rawfile('banner_01_2.jpg'),$rawfile('banner_01_3.jpg'),$rawfile('banner_01_4.jpg')]

  @Builder
  coverBuilder(){
    Column(){
      Stack({alignContent:Alignment.End}){
        Text('全部话题')
          .fontSize(25)
          .width('100%')
          .textAlign(TextAlign.Center)
          .fontWeight(800)
        Image($rawfile('ic_public_cancel.svg'))
          .width(30)
          .margin({right:20})
          .onClick(()=>{
            this.isShow=false
          })
      }
      .width('100%')
      .backgroundColor(Color.White)
    }
  }
}