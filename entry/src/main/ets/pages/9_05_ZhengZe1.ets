
// 方式 1：简写
const res1: RegExp = /ArkTS/
// 方式 2：通过实例化的方式创建
const reg2: RegExp = new RegExp('ArkTS')

console.log('web:', res1.test('ArkTS')) // true
console.log('web:', reg2.test('Java')) // false

@Entry
@Component
struct ZhengZe1 {
  build() {
    //根组件
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}