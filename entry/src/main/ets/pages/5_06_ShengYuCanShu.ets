function sum(numA: number, numB: number, ...numC: number[]) {
  let sum: number = 0
  for (let index = 0; index < numC.length; index++) {
    sum += numC[index];
  }
  return numA + numB + sum
}
console.log(sum(1,2,3,4,5,6).toString())
const nums1:number[]=[1,2,3,4,5]
const nums2:number[]=[1,2,3,4,5]
const total:number[]=[...nums1,...nums2]//数组合并也可以
console.log(total.toString())

@Entry
@Component
struct Index3 {
  build() {
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}