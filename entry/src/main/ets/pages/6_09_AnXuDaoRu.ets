// import {Cat609,ICar609,message as msg,say as sayHi}from '../models/6_09_model'
import * as  value from '../models/6_09_model'
console.log('',value.message)
console.log('',JSON.stringify(new value.Cat609('666')))

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