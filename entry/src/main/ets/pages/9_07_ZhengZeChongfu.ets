// 元字符之量词
// 1. * 重复次数 >= 0 次
const reg1 = /^w*$/
console.log('res:', reg1.test('')) //T
console.log('res:', reg1.test('w')) //T
console.log('res:', reg1.test('ww')) //T
console.log('res:', '-----------------------')

// 2. + 重复次数 >= 1 次
const reg2 = /^w+$/
console.log('res:', reg2.test('')) //F
console.log('res:', reg2.test('w')) //T
console.log('res:', reg2.test('ww')) //T
console.log('res:', '-----------------------')

// 3. ? 重复次数  0 || 1
const reg3 = /^w?$/
console.log('res:', reg3.test('')) //T
console.log('res:', reg3.test('w')) //T
console.log('res:', reg3.test('ww')) //F
console.log('res:', '-----------------------')


// 4. {n} 重复 n 次
const reg4 = /^w{3}$/
console.log('res:', reg4.test('')) //F
console.log('res:', reg4.test('w')) //F
console.log('res:', reg4.test('ww')) //F
console.log('res:', reg4.test('www')) //T
console.log('res:', reg4.test('wwww')) //F
console.log('res:', '-----------------------')

// 5. {n,} 重复次数 >= n
const reg5 = /^w{2,}$/
console.log('res:', reg5.test('')) //F
console.log('res:', reg5.test('w')) //F
console.log('res:', reg5.test('ww')) //T
console.log('res:', reg5.test('www')) //T
console.log('res:', '-----------------------')

// 6. {n,m}   n =< 重复次数 <= m
const reg6 = /^w{2,4}$/
console.log('res:', reg6.test('w')) //F
console.log('res:', reg6.test('ww')) //T
console.log('res:', reg6.test('www')) //T
console.log('res:', reg6.test('wwww')) //T
console.log('res:', reg6.test('wwwww')) //F



@Entry
@Component
struct ZhengZeChongFu {
  build() {
    Column() {

    }
    .width('100%')
    .height('100%')
  }
}