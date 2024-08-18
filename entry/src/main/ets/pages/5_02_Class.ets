class Dog {
  name: string = ''

  constructor(name: string) {
    this.name = name
  }

  bark() {
    console.log(this.name + '正在狗叫')
    return '一地鸡毛'
  }
}

const dog = new Dog('大黄')

const d:string=dog.bark()//此处也调用了一次
console.log(d.toString())


@Entry
@Component
struct Index2 {
  build() {
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}