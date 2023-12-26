import router from '@ohos.router'

@Entry
@Component
struct Demo8 {
  @State message: string = 'Hello World'

  build() {
    Column() {
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
          Text("智家场景")
            .width("67%")
            .height("60vp")
            .fontColor(Color.Black)
            .textAlign(TextAlign.Center)
            .fontSize("19fp")
            .fontWeight(FontWeight.Bold)
          Image($r('app.media.shezhi'))
            .width("20%")
            .height("50%")
            .objectFit(ImageFit.Contain)
        }
        .width("100%")
        .height("50vp")
        Row() {
          Text(" ")
            .width("50%")
            .height("100%")
            .fontColor(Color.Black)
            .padding({ left: "0vp" })
            .textAlign(TextAlign.Center)
            .fontSize("19fp")
          Text("场景管理")
            .width("36%")
            .height("100%")
            .fontColor(Color.Black)
            .textAlign(TextAlign.End)
            .fontSize("14fp")
          Image($r('app.media.dingdan'))
            .width("13%")
            .height("60%")
            .objectFit(ImageFit.Contain)
        }
        .width("100%")
        .height("5%")
        List() {
          ListItem() {
            Row() {
              Text("自定义场景")
                .width("80%")
                .height("60vp")
                .fontColor(Color.Black)
                .padding({ left: "20vp" })
                .fontSize("17fp")
                .onClick(() => {
                  router.pushUrl({
                    url: 'pages/dyy2'
                  });
                })
              Image($r('app.media.jiahao'))
                .width("20%")
                .height("45%")
                .objectFit(ImageFit.Contain)
            }
            .width("100%")
            .height("100%")
            .backgroundImage($r('app.media.bk11'))
            .backgroundImageSize(ImageSize.Cover)
          }
          .width("100%")
          .height("12%")
          ListItem()
            .width("100%")
            .height("20vp")
          ListItem() {
            Row() {
              Text("温馨回家")
                .width("80%")
                .height("60vp")
                .fontColor(Color.Black)
                .padding({ left: "20vp" })
                .fontSize("17fp")
              Image($r('app.media.jiahao'))
                .width("20%")
                .height("45%")
                .objectFit(ImageFit.Contain)
            }
            .width("100%")
            .height("100%")
            .backgroundImage($r('app.media.bk88'))
            .backgroundImageSize(ImageSize.Cover)
          }
          .width("100%")
          .height("12%")
          ListItem()
            .width("100%")
            .height("20vp")
          ListItem() {
            Row() {
              Text("居家监测")
                .width("80%")
                .height("60vp")
                .fontColor(Color.Black)
                .padding({ left: "20vp" })
                .fontSize("17fp")
              Image($r('app.media.jiahao'))
                .width("20%")
                .height("45%")
                .objectFit(ImageFit.Contain)
            }
            .width("100%")
            .height("100%")
            .backgroundImage($r('app.media.bk33'))
            .backgroundImageSize(ImageSize.Cover)
          }
          .width("100%")
          .height("12%")
          ListItem()
            .width("100%")
            .height("20vp")
          ListItem() {
            Row() {
              Text("家人到家")
                .width("80%")
                .height("60vp")
                .fontColor(Color.Black)
                .padding({ left: "20vp" })
                .fontSize("17fp")
              Image($r('app.media.jiahao'))
                .width("20%")
                .height("45%")
                .objectFit(ImageFit.Contain)
            }
            .width("100%")
            .height("100%")
            .backgroundImage($r('app.media.bk44'))
            .backgroundImageSize(ImageSize.Cover)
          }
          .width("100%")
          .height("12%")
          ListItem()
            .width("100%")
            .height("20vp")
          ListItem() {
            Row() {
              Text("一键开关")
                .width("80%")
                .height("60vp")
                .fontColor(Color.Black)
                .padding({ left: "20vp" })
                .fontSize("17fp")
              Image($r('app.media.jiahao'))
                .width("20%")
                .height("45%")
                .objectFit(ImageFit.Contain)
            }
            .width("100%")
            .height("100%")
            .backgroundImage($r('app.media.bk55'))
            .backgroundImageSize(ImageSize.Cover)
          }
          .width("100%")
          .height("12%")
          ListItem()
            .width("100%")
            .height("20vp")
          ListItem() {
            Row() {
              Text("安防布控")
                .width("80%")
                .height("60vp")
                .fontColor(Color.Black)
                .padding({ left: "20vp" })
                .fontSize("17fp")
              Image($r('app.media.jiahao'))
                .width("20%")
                .height("45%")
                .objectFit(ImageFit.Contain)
            }
            .width("100%")
            .height("100%")
            .backgroundImage($r('app.media.bk66'))
            .backgroundImageSize(ImageSize.Cover)
          }
          .width("100%")
          .height("12%")
          ListItem()
            .width("100%")
            .height("20vp")
          ListItem() {
            Row() {
              Text("推送提醒")
                .width("80%")
                .height("60vp")
                .fontColor(Color.Black)
                .padding({ left: "20vp" })
                .fontSize("17fp")
              Image($r('app.media.jiahao'))
                .width("20%")
                .height("45%")
                .objectFit(ImageFit.Contain)
            }
            .width("100%")
            .height("100%")
            .backgroundImage($r('app.media.bk77'))
            .backgroundImageSize(ImageSize.Cover)
          }
          .width("100%")
          .height("12%")
        }
        .width("100%")
        .height("100%")
      }
      .width("100%")
      .height("100%")
      .alignItems(HorizontalAlign.Start)
      .justifyContent(FlexAlign.Start)
    }
    .width("100%")
    .height("100%")
  }
}
