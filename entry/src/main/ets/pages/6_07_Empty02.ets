class Person {
  name: string | null = null

  getName(): string {
    // return this.name === null ? '' : this.name
    // 等同于 如果 name不为空 就返回 name 反之返回 ''
    return this.name ?? ''
  }
}

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