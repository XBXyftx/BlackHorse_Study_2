function func<Type>(param:Type){
  console.log(param+'')
}
func<string>('字符串')
func<number>(123)
@Entry
@Component
struct FanXing {
  build() {
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}