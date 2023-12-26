import router from '@ohos.router'
import { CommonConstants } from '../common/constant/CommonConstant';

@Entry
@Component
struct Sp2 {
  @State message: string = '画板'

  build() {
    Column() {
      Row() {
        Image($r('app.media.jiantou'))
          .width("15%")
          .height("60%")
          .objectFit(ImageFit.Contain)
          .onClick(() => {
            router.pushUrl({
              url: 'pages/fourpage'
            });
          })
        Text("画板")
          .width("67%")
          .height("100%")
          .fontColor(Color.Black)
          .textAlign(TextAlign.Center)
          .fontSize("19fp")
          .fontWeight(FontWeight.Bold)
        Image($r('app.media.gengduo'))
          .width("20%")
          .height("70%")
          .objectFit(ImageFit.Contain)
      }
      .height($r('app.float.navigation_height'))
      .width(CommonConstants.FULL_SIZE)
      .padding({ left: $r('app.float.padding_left_normal') })

    }
    .width(CommonConstants.FULL_SIZE)
    .height(CommonConstants.FULL_SIZE)
    .backgroundColor($r('app.color.page_color'))
  }
}
