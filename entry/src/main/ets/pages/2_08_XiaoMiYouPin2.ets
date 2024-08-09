interface NavItem {
  title: string
  icon: ResourceStr
}

@Entry
@Component
struct XiaoMiYouPin2 {
  @State message: string = '滚动';
  navList: NavItem[] = [
    { title: '上新精选', icon: $r('app.media.ic_xiaomi_nav_01') },
    { title: '智能家电', icon: $r('app.media.ic_xiaomi_nav_02') },
    { title: '小米众筹', icon: $r('app.media.ic_xiaomi_nav_03') },
    { title: '有品会员', icon: $r('app.media.ic_xiaomi_nav_04') },
    { title: '有品秒杀', icon: $r('app.media.ic_xiaomi_nav_05') },
    { title: '原产地', icon: $r('app.media.ic_xiaomi_nav_06') },
    { title: '生活优选', icon: $r('app.media.ic_xiaomi_nav_07') },
    { title: '手机', icon: $r('app.media.ic_xiaomi_nav_08') },
    { title: '小米自营', icon: $r('app.media.ic_xiaomi_nav_09') },
    { title: '茅台酒饮', icon: $r('app.media.ic_xiaomi_nav_10') },
    { title: '鞋服饰品', icon: $r('app.media.ic_xiaomi_nav_11') },
    { title: '家纺餐厨', icon: $r('app.media.ic_xiaomi_nav_12') },
    { title: '食品生鲜', icon: $r('app.media.ic_xiaomi_nav_13') },
    { title: '好惠买', icon: $r('app.media.ic_xiaomi_nav_14') },
    { title: '家具家装', icon: $r('app.media.ic_xiaomi_nav_15') },
    { title: '健康养生', icon: $r('app.media.ic_xiaomi_nav_16') },
    { title: '有品海购', icon: $r('app.media.ic_xiaomi_nav_17') },
    { title: '个护清洁', icon: $r('app.media.ic_xiaomi_nav_18') },
    { title: '户外运动', icon: $r('app.media.ic_xiaomi_nav_19') },
    { title: '3C数码', icon: $r('app.media.ic_xiaomi_nav_20') }
  ]

  build() {
    Column() {
      Text(this.message)
        .fontSize(50)

      Grid(){
        ForEach(this.navList,(item:NavItem,i)=>{
          GridItem(){
            Column(){
              Image(item.icon)
                .width('80%')
              Text(item.title)
                .fontSize(14)
            }
          }
          .width('20%')
        })

      }
      .width('100%')
      .height(160)
      .rowsTemplate('1fr 1fr')
      .backgroundColor(Color.White)
      .scrollBar(BarState.Off)

    }
    .width('100%')
    .height('100%')
    .padding(10)
    .backgroundColor('#f5f5f5')
  }
}