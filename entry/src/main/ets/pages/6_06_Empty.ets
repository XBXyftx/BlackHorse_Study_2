interface Person606{
  age?:number
}
let p:Person606={}

if (p.age!=null){//类型收缩
  p.age+=10
}

//-------------------非空断言----------------------
// p.age+=10
p.age!+=10//告诉编辑器这个玩意不是空单要是空的编译时还是会报错

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