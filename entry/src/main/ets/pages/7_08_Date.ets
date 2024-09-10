const date1 = new Date();
console.log('年份'+date1.getFullYear())//不传参就是当前时间

@Entry
@Component
struct DateTest {
  build() {
    //根组件
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}