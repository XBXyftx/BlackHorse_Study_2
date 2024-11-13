import { router } from "@kit.ArkUI"

export class MovieInfo {
  id: number = 0
}

@Entry
@Component
struct Home {
  build() {
    Stack() {
      Image($r('app.media.douban_home'))
        .width('100%')
      Row({ space: 10 }) {
        Button('热辣滚烫')
          .onClick(() => {
            // id: 36081094 图片 params_movie1
            router.pushUrl({
              url:"pages/12_03_Params",
              params:{
                id:1
              }
            })
          })
        Button('第二十条')
          .onClick(() => {
            // id: 36208094  图片 params_movie2
            router.pushUrl({
              url:"pages/12_03_Params",
              params:{
                id:2
              }
            })
          })
        Button('飞驰人生')
          .onClick(() => {
            // id: 36369452  图片 params_movie3
            router.pushUrl({
              url:"pages/12_03_Params",
              params:{
                id:3
              }
            })
          })
      }
      .translate({ x: -10 })

    }
    .height('100%')
  }
}