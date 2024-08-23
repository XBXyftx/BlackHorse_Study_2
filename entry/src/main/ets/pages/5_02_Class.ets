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

const d2:string=dog.bark() //此处也调用了一次
console.log(d2.toString())


@Entry
@Component
struct classs {
  build() {
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}