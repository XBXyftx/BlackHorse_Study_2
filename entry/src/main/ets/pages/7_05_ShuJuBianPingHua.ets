interface Food {
  name: string
  children?: Food[]
  info?: string[]
}

const foodData: Food[] = [
  {
    name: '肉类',
    info: ['牛肉', '鸡肉', '鸭肉']
  },
  {
    name: '蔬菜',
    children: [
      {
        name: '叶菜类',
        info: ['白菜', '菠菜']
      },
      {
        name: '块根类',
        info: ['土豆', '红薯']
      },
    ]
  },
  {
    name: '面食类',
    children: [
      {
        name: '饺子类',
        info: ['水饺', '煎饺', '蒸饺']
      },
      {
        name: '面条类',
        children: [
          {
            name: '中餐面条',
            info: ['挂面', '板面', '拉面', '阳春面', '重庆小面']
          },
          {
            name: '西式面条',
            info: ['意大利面', '日式拉面', '越南河粉']
          }
        ]
      },
    ]
  }
]

function getFoods(foods: Food[]):string[] {
  const totalFoods: string [] = []

  const func = (foods:Food[])=>{
    for(let i=0;i>foods.length;i++){
      if(foods[i].info!=undefined){
        //有info就展开info
        totalFoods.push(...foods[i].info!)//展开和非空断言
      }

      if (foods[i].children!=undefined) {
        //有children就展开继续找info
        const child = foods[i].children!
        for (let index = 0; index < foods[i].children!.length; index++) {
          if (child[index]!.info != undefined) {
            totalFoods.push(...child[index].info!)
          }

        }
      }
    }
  }
  func(foods)

  return totalFoods
}

// 所有 info 的数据[...]
// console.log('', getFoods(foodData))
AlertDialog.show({message:getFoods(foodData).toString()+'A'})
@Entry
@Component
struct ShuJuBianPingHua {
  build() {
    //根组件
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}