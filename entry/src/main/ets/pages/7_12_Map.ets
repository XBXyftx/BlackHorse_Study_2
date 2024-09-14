const apps:string[]=['1','2','3']
const a = apps.map((item)=>{
  console.log('',item)
  return 66
})
console.log(a.toString())


@Entry
@Component
struct Map712 {
  build() {
    //根组件
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}