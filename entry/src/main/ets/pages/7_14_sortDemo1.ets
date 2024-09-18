// 数值数组排序
const arr = [5, 12, 8, 130, 44]

console.log(arr.sort((a,b)=>{return b-a}).toString())//排序
console.log(arr.reduce((a,b)=>{return a+b}).toString())//求和
interface Food{
  name:string
  price:number
}

// 对象数组排序
const foods:Food[] = [
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

@Entry
@Component
struct SortPage {
  build() {

  }
}