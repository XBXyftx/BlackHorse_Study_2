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

interface Dog {
  name: string


}

interface Person {
  name: string
  dog: Dog
}

@Component
export struct HelloComponent {
  // 状态变量
  @State message: string = 'Hello, World!';
  @State person: Person = {
    name: 'jack',
    dog: {
      name: '柯基'
    }
  }

  sayHi() {
    console.log('你好呀')
  }

  build() {
    Column() {
      Text(this.message)
      Button('修改 message')
        .onClick(() => {
          this.message = 'Hello,ArkTS'
        })
      Text(JSON.stringify(this.person))
      Button('修改title外层属性')
        .onClick(() => {
          this.person.name = '666'
        })
      Button('修改title嵌套属性')
        .onClick(() => {
          //默认只会检测 Object.keys 获取到的属性发生改变，而 dog.name 在内层，无法检测到
          //数据会发生改变但无法触发页面更新
          this.person.dog.name = '内部的 666'
          console.log(JSON.stringify(this.person))
          // 想要页面更新可以重新赋值
          this.person.dog = {
            name: '阿拉斯加'
          }
        })


    }
  }
}


@Entry
@Component
struct Index {
  build() {
    Column() {
      HelloComponent()
    }
    .width('100%')
    .height('100%')
  }
}