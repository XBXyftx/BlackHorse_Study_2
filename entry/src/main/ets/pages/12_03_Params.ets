
@Entry
@Component
struct Params {
  @State imgUrl: ResourceStr = $r('app.media.params_movie1');

  aboutToAppear(): void {
    // 根据 传递过来的 id 决定渲染不同的图片
    // 热辣滚烫 // id == 36081094
    // 第二十条 // id == 36208094
    // 飞驰人生 2 // id == 36369452
  }

  build() {
    Row() {
      Image(this.imgUrl)
    }
    .height('100%')
  }
}