
let num: number = 1

function printLog(num: number) {
  console.log(`你好,第${num}次打印`)
  num--
}

// 打印 10 次
printLog(10)

@Entry
@Component
struct DiGui {
  build() {
    //根组件
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}