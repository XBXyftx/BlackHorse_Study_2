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
console.log(JSON.stringify(foods.sort((a,b)=>{
  return a.price-b.price
})))
console.log(JSON.stringify(foods.reduce((a:number,b:Food)=>{return a+b.price},0)))

const app:string = 'appPP'
console.log(app.toUpperCase())
console.log(app.toLowerCase())

const a:string=' b  aa     '
console.log(a.trim())//去除字符串两边的空格但是字符串中间的不会消除
const sentence = 'The quick brown fox jumps over the lazy dog.';
const isIncluded: boolean = sentence.includes('fox')//寻找是否存在某一关键字
console.log(isIncluded.toString())

@Entry
@Component
struct SortPage {
  build() {

  }
}