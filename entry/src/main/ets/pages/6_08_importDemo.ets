import RobotModel from '../models/6_08_model1'

const r = new RobotModel()
r.changeBody()

@Entry
@Component
struct ImportDemo {
  build() {
    //根组件
    Column() {

    }
    .height('100%')
    .width('100%')
  }
}