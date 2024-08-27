interface IdFunc<Type> {
  id: (value: Type) => Type
  ids: () => Type[]
}

let obj: IdFunc<number> = {
  id(value) { return value },
  ids() { return [1, 3, 5] }
}

let a:IdFunc<string> = {
  id(value:string){
    return value
  },
  ids(){
    return ['','']
  }
}

class PersonA604{
  name:string
  age:number
  gender:boolean

  constructor(name: string, age: number, gender: boolean) {
    this.name = name
    this.age = age
    this.gender = gender
  }

}

type APerson = Partial<PersonA604>//这个是把类的所有属性都加上问号变成可选参数

type BPerson = Required<PersonA604>//这个是把类的所有属性都去除问号变成必填参数

type CPerson = Readonly<PersonA604>//这个是把类的所有属性都变成仅读

@Entry
@Component
struct FanXingJieKo {
  build() {
    //根组件
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}