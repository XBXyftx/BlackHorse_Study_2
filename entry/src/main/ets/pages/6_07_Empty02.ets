class Person607 {
  name: string | null = '阿米诺斯'

  getName(): string {
    // return this.name === null ? '' : this.name
    // 等同于 如果 name不为空 就返回 name 反之返回 ''
    //-------------------空值合并运算符----------------------
    return this.name ?? ''
  }
}
const p607:Person607=new Person607()
console.log('',p607.getName())

//-------------------可选链----------------------
class Dog607 {
  bark() {
    console.log('啊呜~')
  }
}

class Person6072 {
  name?: string
  dog?: Dog607

  constructor(name: string, dog?: Dog607) {
    this.name = name
    this.dog = dog
  }
}

const p6072: Person6072 = new Person6072('jack',new Dog607())

// p.dog.bark()// 报错 dog 可能为空

// 逻辑判断
if (p6072.dog) {
  p6072.dog.bark()
}

// 当 dog不为null 或 undefined 时 再调用 bark 并且不会报错
p6072?.dog?.bark()

@Entry
@Component
struct Empty02 {
  build() {
    //根组件
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}