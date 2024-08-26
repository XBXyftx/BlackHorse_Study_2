interface IdFunc<Type> {
  id: (value: Type) => Type
  ids: () => Type[]
}

let obj: IdFunc<number> = {
  id(value) { return value },
  ids() { return [1, 3, 5] }
}

@Entry
@Component
struct FanXingJieKo {
  build() {
    //根组件
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}