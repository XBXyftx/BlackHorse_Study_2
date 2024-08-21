class Car{
  readonly color:string//初始化赋值后无法再在外部修改

  constructor(color:string) {
    this.color=color
  }

  run(){
    console.log(''+this.color)
  }
}

class SmallCar extends Car{
  constructor(color:string) {
    super(color)
  }
}


const car = new Car('#ccc')
car.run()
const smallCar = new SmallCar('#fff')
smallCar.run()


@Entry
@Component
struct Index2 {
  build() {
    Column() {
      Button()
        .onClick(()=>{
          AlertDialog.show({message:''})
        })
    }
    .height('100%')
    .width('100%')
  }
}