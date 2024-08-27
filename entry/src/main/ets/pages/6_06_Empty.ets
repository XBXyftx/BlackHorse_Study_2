interface Person606{
  age?:number
}
let p:Person606={}

if (p.age!=null){//类型收缩
  p.age+=10
}

@Entry
@Component
struct Empty {
  build() {
    //根组件
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}