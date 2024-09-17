// filter基本使用 01 - 筛选出大于 5 的数
const nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
console.log(nums.filter(item => item > 5).toString())

// filter基本使用 02 - 筛选出价格大于 5 的食物
interface FoodInfo {
  name: string
  price: number
}

const foods: FoodInfo[] = [
  {
    name: '西兰花',
    price: 6
  },
  {
    name: '西红柿',
    price: 3
  },
  {
    name: '榴莲',
    price: 30
  },
  {
    name: '葱花',
    price: 1
  }
]
console.info(JSON.stringify(foods.filter(item => item.price > 5)))

interface HeroInfo {
  id: number
  name: string
  title: string
  type: string
  avatar: string
}

// 筛选条件: 全部、战士、法师、坦克、刺客、射手、辅助
const arr: HeroInfo[] = [
  {
    id: 116,
    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/116/116.jpg',
    name: '阿轲',
    title: '信念之刃',
    type: '刺客'
  },
  {
    id: 117,
    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/117/117.jpg',
    name: '钟无艳',
    title: '野蛮之锤',
    type: '战士'
  },
  {
    id: 118,
    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/118/118.jpg',
    name: '孙膑',
    title: '逆流之时',
    type: '辅助'
  },
  {
    id: 119,
    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/119/119.jpg',
    name: '扁鹊',
    title: '善恶怪医',
    type: '法师'
  },
  {
    id: 120,
    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/120/120.jpg',
    name: '白起',
    title: '最终兵器',
    type: '坦克'
  },
  {
    id: 121,
    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/121/121.jpg',
    name: '芈月',
    title: '永恒之月',
    type: '法师'
  },
  {
    id: 123,
    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/123/123.jpg',
    name: '吕布',
    title: '无双之魔',
    type: '战士'
  },
  {
    id: 132,
    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/132/132.jpg',
    name: '马可波罗',
    title: '远游之枪',
    type: '射手'
  },
  {
    id: 133,
    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/133/133.jpg',
    name: '狄仁杰',
    title: '断案大师',
    type: '射手'
  },
]


@Entry
@Component
struct Func3 {
  filterList: string[] = ['全部', '战士', '法师', '坦克', '刺客', '射手', '辅助']
  @State selectType: string = '全部'
  @State arr2: HeroInfo[] = [
    {
      id: 116,
      avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/116/116.jpg',
      name: '阿轲',
      title: '信念之刃',
      type: '刺客'
    },
    {
      id: 117,
      avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/117/117.jpg',
      name: '钟无艳',
      title: '野蛮之锤',
      type: '战士'
    },
    {
      id: 118,
      avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/118/118.jpg',
      name: '孙膑',
      title: '逆流之时',
      type: '辅助'
    },
    {
      id: 119,
      avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/119/119.jpg',
      name: '扁鹊',
      title: '善恶怪医',
      type: '法师'
    },
    {
      id: 120,
      avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/120/120.jpg',
      name: '白起',
      title: '最终兵器',
      type: '坦克'
    },
    {
      id: 121,
      avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/121/121.jpg',
      name: '芈月',
      title: '永恒之月',
      type: '法师'
    },
    {
      id: 123,
      avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/123/123.jpg',
      name: '吕布',
      title: '无双之魔',
      type: '战士'
    },
    {
      id: 132,
      avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/132/132.jpg',
      name: '马可波罗',
      title: '远游之枪',
      type: '射手'
    },
    {
      id: 133,
      avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/133/133.jpg',
      name: '狄仁杰',
      title: '断案大师',
      type: '射手'
    },
  ]

  build() {
    Column() {
      Row() {
        ForEach(this.filterList, (item: string, index: number) => {
          Text(item)
            .border({
              width: { bottom: 2 },
              color: item == this.selectType ? Color.Orange : Color.Transparent
            })
            .padding({ bottom: 3 })
            .fontColor(item == this.selectType ? Color.Orange : Color.Black)
            .fontSize(item == this.selectType ? 18 : 13)
            .onClick(() => {
              this.selectType = item
              if (this.selectType === '全部') {
                this.arr2 = [
                  {
                    id: 116,
                    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/116/116.jpg',
                    name: '阿轲',
                    title: '信念之刃',
                    type: '刺客'
                  },
                  {
                    id: 117,
                    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/117/117.jpg',
                    name: '钟无艳',
                    title: '野蛮之锤',
                    type: '战士'
                  },
                  {
                    id: 118,
                    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/118/118.jpg',
                    name: '孙膑',
                    title: '逆流之时',
                    type: '辅助'
                  },
                  {
                    id: 119,
                    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/119/119.jpg',
                    name: '扁鹊',
                    title: '善恶怪医',
                    type: '法师'
                  },
                  {
                    id: 120,
                    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/120/120.jpg',
                    name: '白起',
                    title: '最终兵器',
                    type: '坦克'
                  },
                  {
                    id: 121,
                    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/121/121.jpg',
                    name: '芈月',
                    title: '永恒之月',
                    type: '法师'
                  },
                  {
                    id: 123,
                    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/123/123.jpg',
                    name: '吕布',
                    title: '无双之魔',
                    type: '战士'
                  },
                  {
                    id: 132,
                    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/132/132.jpg',
                    name: '马可波罗',
                    title: '远游之枪',
                    type: '射手'
                  },
                  {
                    id: 133,
                    avatar: 'https://game.gtimg.cn/images/yxzj/img201606/heroimg/133/133.jpg',
                    name: '狄仁杰',
                    title: '断案大师',
                    type: '射手'
                  },
                ]
              } else {
                this.arr2 = arr.filter(item => {
                  if (item.type === this.selectType) {
                    return true
                  } else {
                    return false
                  }
                })
              }
            })
        })
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({ top: 10, bottom: 10 })

      List({ space: 10 }) {

        ForEach(this.arr2, (item: HeroInfo, i) => {
          ListItem() {
            Row({ space: 10 }) {
              Image(item.avatar)
                .width(50)
                .borderRadius(10)
              Column({ space: 10 }) {
                Text(`${item.title}-${item.name}`)
                Text(item.type)
                  .fontSize(12)
                  .fontColor(Color.Gray)
              }
              .alignItems(HorizontalAlign.Start)
            }
            .backgroundColor('#f8f9fc')
            .width('100%')
            .padding(5)
            .borderRadius(10)
          }
        })


      }
    }
    .width('100%')
    .height('100%')
    .padding(20)
  }
}