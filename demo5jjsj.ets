import router from '@ohos.router';

@Entry
@Component
struct Index {
  build() {
    Column() {
      Row() {
        Image($r('app.media.jiantou'))
          .width("15%")
          .height("60%")
          .objectFit(ImageFit.Contain)
          .onClick(() => {
            router.pushUrl({
              url: 'pages/dey1'
            });
          })
        Text("智家场景")
          .width("67%")
          .height("60vp")
          .fontColor(Color.Black)
          .textAlign(TextAlign.Center)
          .fontSize("19fp")
          .fontWeight(FontWeight.Bold)
        Image($r('app.media.lingdang'))
          .width("20%")
          .height("70%")
          .objectFit(ImageFit.Contain)
      }
      .width("100%")
      .height("50vp")
      Row() {
        Text("格力空调W-361234")
          .width("70%")
          .height("100%")
          .fontColor(Color.Black)
          .padding({ left: "0vp" })
          .textAlign(TextAlign.Center)
          .fontSize("19fp")
        Text("已连接")
          .width("15%")
          .height("100%")
          .fontColor(Color.Black)
          .textAlign(TextAlign.End)
          .fontSize("14fp")
        Image($r('app.media.wifi'))
          .width("15%")
          .height("40%")
          .objectFit(ImageFit.Contain)
      }
      .width("100%")
      .height("6%")
      Image($r('app.media.kongtiao'))
        .width("100%")
        .height("300vp")
        .objectFit(ImageFit.Contain)
      Text("远程手动调节：")
        .width("100%")
        .height("40vp")
        .fontColor("#27205a")
        .textAlign(TextAlign.Center)
        .padding({ left: "20vp" })
        .fontWeight(FontWeight.Bold)
        .fontSize("17fp")
      Row() {
        RelativeContainer() {
          Row() {
            Image($r('app.media.hot'))
          }
          .height(100).width(100)
            .alignRules({
              top: { anchor: '__container__', align: VerticalAlign.Top }, //以父容器为锚点，竖直方向顶头对齐
              middle: { anchor: '__container__', align: HorizontalAlign.Center }  //以父容器为锚点，水平方向居中对齐
            })
            .id('row1')


          Row() {
            Image($r('app.media.open'))
          }
          .height(100).width(100)
          .alignRules({

            top: { anchor: 'row1', align: VerticalAlign.Bottom }, //以row1组件为锚点，竖直方向低端对齐
            left: { anchor: 'row1', align: HorizontalAlign.Start }  //以row1组件为锚点，水平方向开头对齐
          })
          .id('row2') //设置锚点为row2

          Row()
          Row() {
            Image($r('app.media.jianyi'))
          }
          .height(100).width(100)
            .alignRules({
              top: { anchor: 'row2', align: VerticalAlign.Top }
            })
            .id('row3') //设置锚点为row3

          Row() {
            Image($r('app.media.jiayi'))
          }
          .height(100).width(100)
            .alignRules({
              top: { anchor: 'row2', align: VerticalAlign.Top },
              left: { anchor: 'row2', align: HorizontalAlign.End },
            })
            .id('row4') //设置锚点为row4

          Row() {
            Image($r('app.media.fengsu'))
          }
          .height(100).width(100)
            .alignRules({
              top: { anchor: 'row2', align: VerticalAlign.Bottom },
              middle: { anchor: 'row2', align: HorizontalAlign.Center }
            })
            .id('row5') //设置锚点为row5
        }
        .width(300).height(750)
      }
      .height('100%').margin({ left: 0 })
    }
  }
}