import { MovieInfo } from "./12_02_Home"
import { router } from '@kit.ArkUI';

@Entry
@Component
struct Params {
  @State imgUrl: ResourceStr = '';

  aboutToAppear(): void {
    // 根据 传递过来的 id 决定渲染不同的图片
    // 热辣滚烫 // id == 36081094
    // 第二十条 // id == 36208094
    // 飞驰人生 2 // id == 36369452
    let id = (router.getParams() as MovieInfo).id
    console.log('', id)
    // switch (id){
    //   case 1:this.imgUrl = $r('app.media.params_movie1')
    //   case 2:this.imgUrl = $r('app.media.params_movie2')
    //   case 3:this.imgUrl = $r('app.media.params_movie3')
    // }
    if (id == 1) {
      this.imgUrl = $r('app.media.params_movie1')
    } else if (id == 2) {
      this.imgUrl = $r('app.media.params_movie2')
    } else if (id == 3) {
      this.imgUrl = $r('app.media.params_movie3')
    }
  }

  build() {
    Row() {
      Image(this.imgUrl)
    }
    .height('100%')
  }
}