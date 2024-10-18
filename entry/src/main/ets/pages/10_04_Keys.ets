interface Chicken {
  name: string
  age: number
  color: string
}

const c: Chicken = {
  name: '1',
  age: 2,
  color: '黄绿色'
}
// 获取对象的属性名，返回字符串数组
console.log('', Object.keys(c))


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