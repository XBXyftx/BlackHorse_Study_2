interface IPerson {
  name: string
  age: number
  friends: string[]
}

class Person {
  private _name: string

  public set name(value: string) {
    this._name = value
  }

  public get name(): string {
    return this._name
  }

  private _age: number

  public set age(value: number) {
    this._age = value
  }

  public get age(): number {
    return this._age
  }

  private _friends: string[]

  public set friends(value: string[]) {
    this._friends = value
  }

  public get friends(): string[] {
    return this._friends
  }

  constructor(value: IPerson) {
    this._name = value.name
    this._age = value.age
    this._friends = value.friends
  }

  sayHi() {
    console.log(this._name, this._age, this._friends)
  }
}

enum StudentMale {
  Boy = '男孩',
  Girl = '女孩'
}

interface IStudent extends IPerson {
  male: StudentMale
  grade: string[]
}

class Student extends Person {
  male: StudentMale
  grade: string[]

  constructor(value: IStudent) {
    super({
      name: value.name,
      age: value.age,
      friends: value.friends
    })
    this.male = value.male
    this.grade = value.grade
  }

  sayHi() {
    super.sayHi()
    console.log(this.male, this.grade)
  }
}

const student507: Student = new Student({
  name: '111',
  age: 12,
  friends: ['1', '2'],
  male: StudentMale.Boy,
  grade: ['1', '6']
})
student507.sayHi()

@Entry
@Component
struct Homework5 {
  build() {
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}