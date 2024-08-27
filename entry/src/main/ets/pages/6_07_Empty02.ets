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