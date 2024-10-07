// 元字符之范围  []
// 1. [abc] 匹配包含的单个字符， 多选1
const reg1 = /^[abc]$/
console.log('res:', reg1.test('a')) //
console.log('res:', reg1.test('b')) //
console.log('res:', reg1.test('c')) //
console.log('res:', reg1.test('d')) //
console.log('res:', reg1.test('ab')) //

// 2. [a-z] 连字符 单个
const reg2 = /^[a-z]$/
console.log('res:', reg2.test('a')) //
console.log('res:', reg2.test('p')) //
console.log('res:', reg2.test('0')) //
console.log('res:', reg2.test('A')) //
// 3. [^a-z] 取反符
const reg5 = /^[^a-z]$/
console.log('res:', reg5.test('a')) //
console.log('res:', reg5.test('A')) //
console.log('res:', reg5.test('么')) //

// 4.想要包含小写字母，大写字母 ，数字
const reg3 = /^[a-zA-Z0-9]$/
console.log('res:', reg3.test('B')) //
console.log('res:', reg3.test('b')) //
console.log('res:', reg3.test('9')) //
console.log('res:', reg3.test(',')) //

// 5.试一试：用户名可以输入英文字母，数字，可以加下划线，要求 6~16位



@Entry
@Component
struct ZhengZeZhongKuoHao {
  build() {
    Column() {

    }
    .width('100%')
    .height('100%')
  }
}