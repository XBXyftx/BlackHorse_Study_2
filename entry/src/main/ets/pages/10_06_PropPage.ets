interface User {
  name: string
  age: number
}

@Entry
@Component
struct Index {
  @State
  userInfo: User = {
    name: 'jack',
    age: 18
  }

  build() {
    Column({ space: 20 }) {
      Text('父组件')
        .fontSize(30)
      Text('用户名：' + this.userInfo.name)
        .white()
        .onClick(() => {
          this.userInfo.name = 'rose'
        })
      Text('年龄：' + this.userInfo.age)
        .white()
        .onClick(() => {
          this.userInfo.age++
        })

      Child({
        user: this.userInfo,
        userChange: (newUser: User) => {
          this.userInfo.name = newUser.name
          this.userInfo.age = newUser.age
        }
      })
    }
    .width('100%')
    .height('100%')
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)
    .backgroundColor(Color.Pink)
  }
}

@Component
struct Child {
  @Prop
  user: User
  userChange: (newUser: User) => void = (newUser: User) => {
  }

  build() {
    Text('子组件：' + JSON.stringify(this.user))
      .padding(10)
      .backgroundColor('#0094ff')
      .fontColor(Color.White)
      .onClick(() => {
        this.userChange({
          name: '路飞',
          age: 26
        })
      })
  }
}

@Extend(Text)
function white() {
  .fontSize(20)
  .fontColor(Color.White)
}
