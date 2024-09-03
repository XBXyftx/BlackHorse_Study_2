interface IPerson{
  name:string
  age:number
  friends:string[]
}
class Person610 {
  name:string
  age:number
  friends:string[]

  constructor(value:IPerson) {
    this.name = value.name
    this.age = value.age
    this.friends = value.friends
  }
  sayHi(){
    console.log('',this.name,this.age,this.friends)
  }
}
enum StudentMale{
  Boy='男孩',
  Girl610='女孩'
}
interface IStudent extends IPerson{

}
class Student610 extends Person610{
  male:StudentMale
  grade:string

  constructor(value:IStudent, male: StudentMale, grade: string) {
    super(value)
    this.male = male
    this.grade = grade
  }

  sayHi(): void {
    super.sayHi()
    console.log('',this.male,this.grade)
  }

}

@Entry
@Component
struct Test {
  build() {
    //根组件
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}