@Entry
@Component
struct CheckBoxGroupPage {
  fruits:string[] = ['西瓜','西红柿','西兰花','西葫芦']
  dogs:string[] = ['金毛','哈士奇','萨摩耶','藏獒']
  build() {
    Column(){
      Row(){
        CheckboxGroup({
          group:'食物'
        })
        Text('食物全选')
      }
      Column(){
        ForEach(this.fruits,(item:string,index:number)=>{
          Row(){
            Checkbox({
              group:'食物'
            })
            Text(item)
          }
        })
      }
      .padding({left:20})
      .alignItems(HorizontalAlign.Start)

      Divider()

      Row(){
        CheckboxGroup({
          group:'狗狗'
        })
        Text('狗狗全选')
      }
      Column(){
        ForEach(this.dogs,(item:string,index:number)=>{
          Row(){
            Checkbox({
              group:'狗狗'
            })
            Text(item)
          }
        })
      }
      .padding({left:20})
      .alignItems(HorizontalAlign.Start)
    }.padding(20)
    .alignItems(HorizontalAlign.Start)

  }
}