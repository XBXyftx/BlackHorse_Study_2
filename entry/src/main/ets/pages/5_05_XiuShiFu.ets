class Car{
  readonly color:string//初始化赋值后无法再在外部修改
  private height:number

  constructor(color:string,height:number) {
    this.color=color
    this.height=height
  }

  run(){
    console.log(''+this.color+this.height)
  }
}

class SmallCar extends Car{
  constructor(color:string,height:number) {
    super(color,height)
  }
  changeHeight(num:number){
    // this.height += num
    // 子类不能修改父类private
  }
}


const car = new Car('#ccc',180)
car.run()
const smallCar = new SmallCar('#fff',130)
smallCar.run()


@Entry
@Component
struct XiuShiFu {
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