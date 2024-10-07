// 元字符之范围  []
// 1. [abc] 匹配包含的单个字符， 多选1
const reg1 = /^[abc]$/
console.log('res:', reg1.test('a')) //T
console.log('res:', reg1.test('b')) //T
console.log('res:', reg1.test('c')) //T
console.log('res:', reg1.test('d')) //F
console.log('res:', reg1.test('ab')) //F

// 2. [a-z] 连字符 单个
const reg2 = /^[a-z]$/
console.log('res:', reg2.test('a')) //T
console.log('res:', reg2.test('p')) //T
console.log('res:', reg2.test('0')) //F
console.log('res:', reg2.test('A')) //F
// 3. [^a-z] 取反符
const reg5 = /^[^a-z]$/
console.log('res:', reg5.test('a')) //F
console.log('res:', reg5.test('A')) //T
console.log('res:', reg5.test('么')) //T

// 4.想要包含小写字母，大写字母 ，数字
const reg3 = /^[a-zA-Z0-9]$/
console.log('res:', reg3.test('B')) //T
console.log('res:', reg3.test('b')) //T
console.log('res:', reg3.test('9')) //T
console.log('res:', reg3.test(',')) //F

// 5.试一试：用户名可以输入英文字母，数字，可以加下划线，要求 6~16位
const reg4 = /^[a-zA-z0-9_]{6,16}$/
console.log('aaaa!!!!!!!'+reg4.test('1212_AAzzSxDcCC'))//T

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