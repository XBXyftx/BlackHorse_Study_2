interface student{
  name:string
  age:number
}
const arr:student[]=[
  {name:'A',age:1},
  {name:'B',age:2}
]
const newArr:student[] = [...arr]//展开arr，仅仅复制arr里对象的地址值
newArr[0].age=111
console.log(newArr[0].age.toString())
console.log(arr[0].age.toString())
const newArr2:student[] = JSON.parse(JSON.stringify(arr))//先解析成字符串，再重组分析，彻底生成一个新的对象，这是深拷贝
newArr2[0].age=2321
console.log(newArr2[0].age.toString())
console.log(arr[0].age.toString())
@Entry
@Component
struct Index {
  build() {
    Column() {

    }
    .width('100%')
    .height('100%')
  }
}