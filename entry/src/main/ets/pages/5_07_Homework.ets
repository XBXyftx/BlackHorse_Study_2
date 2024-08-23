interface IPerson{
  name:string
  age:number
  friends:string[]
}
class person{
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

  constructor(value:IPerson) {
    this._name=value.name
    this._age=value.age
    this._friends=value.friends
  }
  sayHi(){
    console.log(this._name,this._age,this._friends)
  }
}

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