class Animal{

}


class Cat extends Animal {
  static name1: string = ''

  constructor(name?:string) {
    super()
  }
}

const cat = new Cat()
console.log('',cat instanceof Cat)
console.log('',cat instanceof Animal)




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