// 元字符之边界符
// 1. 匹配开头的位置 ^
const reg = /^ArkTS/
console.log('res:', reg.test('ArkTS语法')) //
console.log('res:', reg.test('学习ArkTS')) //
console.log('res:', reg.test('学习ArkTS语法')) //
console.log('res:', reg.test('Ar')) //

// 2. 匹配结束的位置 $
const reg1 = /ArkTS$/
console.log('res:', reg1.test('ArkTS语法')) //
console.log('res:', reg1.test('学习ArkTS')) //
console.log('res:', reg1.test('学习ArkTS语法')) //
console.log('res:', reg1.test('Ar')) //

// 3. 精确匹配 ^ $
const reg2 = /^ArkTS$/
console.log('res:', reg2.test('ArkTS语法')) //
console.log('res:', reg2.test('学习ArkTS')) //
console.log('res:', reg2.test('学习ArkTS语法')) //
console.log('res:', reg2.test('ArkTS')) //
console.log('res:', reg2.test('Ar')) //
console.log('res:', reg2.test('ArkTSArkTS')) //



@Entry
@Component
struct ZhengZe2 {
  build() {
    //根组件
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}