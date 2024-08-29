interface IPerson{
  name:string
  age:number
  friends:string[]
}
class Person {
  name:string
  age:number
  friends:string[]

  constructor(name: string, age: number, friends: string[]) {
    this.name = name
    this.age = age
    this.friends = friends
  }
  sayHi(){
    console.log('',this.name,this.age,this.friends)
  }
}
enum StudentMale{
  Boy='男孩',
  Girl='女孩'
}
interface IStudent extends IPerson{

}
class Student extends Person{
  male:StudentMale
  grade:string

  constructor(value:IStudent, male: StudentMale, grade: string) {
    super(value.name, value.age, value.friends)
    this.male = male
    this.grade = grade
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