class Animal{

}


class Cat2 extends Animal {
  static name1: string = ''

  constructor(name?:string) {
    super()
  }
}

const cat2 = new Cat2()
console.log('',cat2 instanceof Cat2)
console.log('',cat2 instanceof Animal)




@Entry
@Component
struct InstanceOf {
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