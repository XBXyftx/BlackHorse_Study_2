function sum(numA: number, numB: number, ...numC: number[]) {
  let sum: number = 0
  for (let index = 0; index < numC.length; index++) {
    sum += numC[index];
  }
  return numA + numB + sum
}
console.log(sum(1,2,3,4,5,6).toString())


@Entry
@Component
struct Index {
  build() {
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}