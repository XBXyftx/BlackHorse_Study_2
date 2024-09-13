// const date1 = new Date('1995-01-01T01:11:00');
const date1 = new Date(106170405708);
console.log('年份'+date1.getFullYear())//不传参就是当前时间
console.log(''+date1.getMonth())

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