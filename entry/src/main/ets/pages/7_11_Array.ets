const foods = ['1','2','3']
const str = foods.join()
// console.log('',foods)
console.log('',str)
const str2 = foods.join('~|~')//间隔符
console.log('',str2)
foods.forEach((item:string,i)=>{
  console.log(item+'  '+i+'')
})
foods.forEach(item=>{
  console.log(item)
})



@Entry
@Component
struct Array1 {
  build() {
    //根组件
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}