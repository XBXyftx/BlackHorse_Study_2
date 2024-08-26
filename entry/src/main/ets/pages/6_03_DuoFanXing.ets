function funcA<T, T2>(param1: T, param2: T2) {
  console.log('参数 1', param1)
  console.log('参数 2', param2)
}

funcA<string, number>('西兰花', 998)
funcA<string[], boolean[]>(['西兰花'], [false])

@Entry
@Component
struct DuoFanXing {
  build() {
    //根组件
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}