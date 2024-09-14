const apps:string[]=['1','2','3']
const a = apps.map((item)=>{//与foreach不同的点在于可以return
  console.log('',item)
  return parseInt(item)*2
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