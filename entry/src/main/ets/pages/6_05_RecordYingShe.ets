class CatInfo{
  name:string=''
  age:number=0
}
type CatName='m'|'n'

type Catss=Record<CatName,CatInfo>

const cats:Catss={
  'm':{name:'a',age:19},
  'n':{name:'b',age:14}
}
console.log('',cats.m.name)

@Entry
@Component
struct RecordYingShe {
  build() {
    //根组件
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}