class Cat {
  static name1: string = ''

}

const cat = new Cat()

const d:string=Cat.name //此处也调用了一次
console.log(d)


@Entry
@Component
struct static1 {
  build() {
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}