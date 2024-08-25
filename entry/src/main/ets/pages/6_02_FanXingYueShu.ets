interface ILength{
  length:number
}

function logLength<T extends ILength>(param:T){
  console.log(param.length+'')
}

// logLength(true)
logLength([1,2,3,4,5])

class Hair{
  length:number

  constructor(length: number) {
    this.length = length
  }
}
const hair = new Hair(1.5)
logLength(hair)

//---------------------------------------

interface IFood {
  food: string
}

function logFood<T extends IFood>(param: T) {
  console.log('吃的挺好：', param.food)
}

class Lunch {
  food: string

  constructor(food: string) {
    this.food = food
  }
}

const l = new Lunch('醉面')
logFood(l)

console.log('',)

@Entry
@Component
struct FanXingYueShu {
  build() {
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}