import {Cat609,ICar609,message as msg,say as sayHi}from '../models/6_09_model'

console.log('',msg)
console.log('',JSON.stringify(new Cat609('666')))

@Entry
@Component
struct AnXuDaoRu {
  build() {
    //根组件
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}