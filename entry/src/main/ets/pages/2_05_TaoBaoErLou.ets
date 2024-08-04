interface TaoBaoItemContent {
  title: string
  icon: string
}
@Entry
@Component
struct TaobaoPage {
  build() {
    Column() {
      this.ZongBuilder()
    }
  }
  @Builder TaoBaoBuilder(){
    Grid(){
      ForEach(this.contentList,(item:TaoBaoItemContent,i)=>{
        GridItem(){
          Column({space:5}){
            Image($r(item.icon))
              .width(40)
              .borderRadius(40)
            Text(item.title)
              .fontSize(14)
              .fontColor(Color.White)
          }
        }
      })

    }
    .rowsTemplate('1fr 1fr 1fr 1fr 1fr')
    .columnsTemplate('1fr 1fr 1fr 1fr 1fr')
    .width('100%')
    .height(360)
  }
  @Builder ZuiJinShiYongBuilder(){
    Row() {
      Image($r('app.media.ic_taobao_back'))
        .fillColor(Color.White)
        .width(30)
      Text('最近使用')
        .fontSize(20)
        .fontColor(Color.White)
    }
    .width('100%')
    .padding({ top: 40 })
  }
  @Builder SouSuoLanBuilDer(){
    Stack() {
      Text()
        .width('100%')
        .height(40)
        .backgroundColor(Color.White)
        .opacity(.3)
        .borderRadius(20)
      Row({ space: 10 }) {
        Image($r('app.media.ic_taobao_search'))
          .width(25)
          .fillColor(Color.White)
        Text('搜索')
          .fontSize(15)
          .fontColor(Color.White)
      }
      .padding({ left: 10 })
      .width('100%')
    }
    .padding(10)
  }
  @Builder ZongBuilder(){
    Column() {
      this.ZuiJinShiYongBuilder()

      this.SouSuoLanBuilDer()

      this.TaoBaoBuilder()

    }
    .width('100%')
    .height('100%')
    .linearGradient({
      colors: [
        ['#271b41', 0],
        ['#481736', 1],
      ]
    })
  }
  contentList: TaoBaoItemContent[] = [
    { title: '淘金币', icon: 'app.media.ic_taobao_01' },
    { title: '一起摇现金', icon: 'app.media.ic_taobao_02' },
    { title: '闲鱼', icon: 'app.media.ic_taobao_03' },
    { title: '中通快递', icon: 'app.media.ic_taobao_04' },
    { title: '芭芭农场', icon: 'app.media.ic_taobao_05' },
    { title: '淘宝珍库', icon: 'app.media.ic_taobao_06' },
    { title: '阿里拍卖', icon: 'app.media.ic_taobao_07' },
    { title: '阿里药房', icon: 'app.media.ic_taobao_08' },
    { title: '小黑盒', icon: 'app.media.ic_taobao_09' },
    { title: '菜鸟', icon: 'app.media.ic_taobao_10' },
    { title: 'U先试用', icon: 'app.media.ic_taobao_11' },
    { title: '有好价', icon: 'app.media.ic_taobao_12' },
    { title: '极有家', icon: 'app.media.ic_taobao_13' },
    { title: '天猫榜单', icon: 'app.media.ic_taobao_14' },
    { title: '天天特卖', icon: 'app.media.ic_taobao_15' },
    { title: '每日好店', icon: 'app.media.ic_taobao_16' },
    { title: '全球购', icon: 'app.media.ic_taobao_17' },
    { title: '我的爱车', icon: 'app.media.ic_taobao_18' },
    { title: '造点新货', icon: 'app.media.ic_taobao_19' },
    { title: '首单优惠', icon: 'app.media.ic_taobao_20' },
    { title: '潮Woo', icon: 'app.media.ic_taobao_21' },
    { title: '亲宝贝', icon: 'app.media.ic_taobao_22' },
    { title: '领券中心', icon: 'app.media.ic_taobao_23' },
    { title: '天猫奢品', icon: 'app.media.ic_taobao_24' },
    { title: 'iFashion', icon: 'app.media.ic_taobao_25' }
  ]
}
