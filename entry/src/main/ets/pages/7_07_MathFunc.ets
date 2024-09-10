console.log(Math.round(2.5).toString())//3
console.log(Math.round(2.4).toString())//2四舍五入函数
console.log('abs:',Math.abs(-666))//取绝对值
const nums = [1,12,14,1313,12,-1]
console.log('max',Math.max(...nums))
console.log('min',Math.min(...nums))


@Entry
@Component
struct MathFunc {
  build() {
    //根组件
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}