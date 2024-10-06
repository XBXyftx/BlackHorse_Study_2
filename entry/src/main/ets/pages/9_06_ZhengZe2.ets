// 元字符之边界符
// 1. 匹配开头的位置 ^
const reg = /^ArkTS/
console.log('res:', reg.test('ArkTS语法')) //T
console.log('res:', reg.test('学习ArkTS')) //F
console.log('res:', reg.test('学习ArkTS语法')) //F
console.log('res:', reg.test('Ar')) //F

// 2. 匹配结束的位置 $
const reg1 = /ArkTS$/
console.log('res:', reg1.test('ArkTS语法')) //F
console.log('res:', reg1.test('学习ArkTS')) //T
console.log('res:', reg1.test('学习ArkTS语法')) //F
console.log('res:', reg1.test('Ar')) //F

// 3. 精确匹配 ^ $
const reg2 = /^ArkTS$/
console.log('res:', reg2.test('ArkTS语法')) //F
console.log('res:', reg2.test('学习ArkTS')) //F
console.log('res:', reg2.test('学习ArkTS语法')) //F
console.log('res:', reg2.test('ArkTS')) //T
console.log('res:', reg2.test('Ar')) //F
console.log('res:', reg2.test('ArkTSArkTS')) //F



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