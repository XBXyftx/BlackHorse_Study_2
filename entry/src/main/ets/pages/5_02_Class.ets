class Dog {
  name: string = ''

  constructor(name: string) {
    this.name = name
  }

  bark() {
    console.log(this.name + '正在狗叫')
  }
}

const dog = new Dog('大黄')
dog.bark()


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