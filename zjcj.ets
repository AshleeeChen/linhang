// xxx.ets
import router from '@ohos.router'

@Entry
@Component
struct GridExample {
  @State Number: String[] = ['橱柜', '床', '床柜', '餐桌', '书房','灯具','椅子','抱枕','窗帘','壁橱','摆件','装饰','雕刻','红木']
  scroller: Scroller = new Scroller()

  build() {

    Column({ space: 4 }) {
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
        Text("139****4920")
          .width("45%")
          .height("100%")
          .fontColor(Color.Black)
          .textAlign(TextAlign.Center)
          .fontSize("16fp")
        Image($r('app.media.tongzhi'))
          .width("13%")
          .height("70%")
          .objectFit(ImageFit.Contain)
        Image($r('app.media.lingdang'))
          .width("13%")
          .height("70%")
          .objectFit(ImageFit.Contain)
        Image($r('app.media.jiahao'))
          .width("13%")
          .height("65%")
          .objectFit(ImageFit.Contain)
      }
      .width("100%")
      .height("50vp")
      Row() {
        Text("    定制家具")
          .width("60%")
          .height("100%")
          .fontColor(Color.Black)
          .padding({ left: "0vp" })
          .textAlign(TextAlign.Center)
          .fontSize("19fp")
          .fontWeight(FontWeight.Bold)
        Text("我的设计")
          .width("20%")
          .height("100%")
          .fontColor(Color.Black)
          .textAlign(TextAlign.End)
          .fontSize("17fp")
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            router.pushUrl({
              url: 'pages/jjdz'
            });
          })
        Image($r('app.media.sheji'))
          .width("18%")
          .height("72%")
          .objectFit(ImageFit.Contain)
          .onClick(() => {
            router.pushUrl({
              url: 'pages/jjdz'
            });
          })
      }
      .width("100%")
      .height("6%")
      Text('scroll').fontColor(0xCCCCCC).fontSize(9).width('90%')
      Grid(this.scroller) {
        ForEach(this.Number, (day: string) => {
          ForEach(this.Number, (day: string) => {
            GridItem() {
              Text(day)
                .fontSize(16)
                .backgroundColor(0xF9CF93)
                .width('100%')
                .height(80)
                .textAlign(TextAlign.Center)
            }
          }, day => day)
        }, day => day)
      }
      .columnsTemplate('1fr 1fr 1fr 1fr 1fr')
      .columnsGap(10)
      .rowsGap(10)
      .onScrollIndex((first: number) => {
        console.info(first.toString())
      })
      .width('90%')
      .backgroundColor(0xFAEEE0)
      .height(300)
      Button('下一页')
        .backgroundColor("#fc8b22")
        .fontColor(Color.White)
        .fontSize("13fp")
        .onClick(() => { // 点击后滑到下一页
          this.scroller.scrollPage({ next: true })
        })
      Row() {
        Text()
          .width("25%")
          .height("100%")
          .fontColor(Color.Black)
          .fontSize("16fp")
        Image($r('app.media.jinpai'))
          .width("15%")
          .height("100%")
          .objectFit(ImageFit.Contain)
        Text("金牌设计师")
          .width("50%")
          .height("100%")
          .fontColor(Color.Black)
          .fontSize("17fp")
          .fontWeight(FontWeight.Bold)
      }
      .width("100%")
      .height("7%")
      .borderWidth({ top: "1vp" })
      .borderColor({ top: "#7c6fe2" })
      .justifyContent(FlexAlign.Start)
      List() {
        ListItem() {
          Row() {
            Text("1")
              .width("9%")
              .height("100%")
              .fontColor(Color.Black)
              .textAlign(TextAlign.Center)
              .fontSize("18fp")
            Image($r('app.media.tx1'))
              .width("20%")
              .height("100%")
            Text("MIchelle MILLI")
              .width("40%")
              .height("60vp")
              .fontColor(Color.Black)
              .textAlign(TextAlign.Center)
              .fontSize("16fp")
            Button("获取联系")
              .width("25%")
              .height("50%")
              .backgroundColor("#fc8b22")
              .fontColor(Color.White)
              .fontSize("13fp")
          }
          .width("100%")
          .height("100%")
        }
        .width("100%")
        .height("15%")
        ListItem() {
          Row() {
            Text("2")
              .width("9%")
              .height("100%")
              .fontColor(Color.Black)
              .textAlign(TextAlign.Center)
              .fontSize("18fp")
            Image($r('app.media.tx2'))
              .width("20%")
              .height("92%")
              .objectFit(ImageFit.Contain)
            Text("Tomslamd LILI")
              .width("40%")
              .height("60vp")
              .fontColor(Color.Black)
              .textAlign(TextAlign.Center)
              .fontSize("16fp")
            Button("获取联系")
              .width("25%")
              .height("50%")
              .backgroundColor("#fc8b22")
              .fontColor(Color.White)
              .fontSize("13fp")
          }
          .width("100%")
          .height("100%")
        }
        .width("100%")
        .height("15%")
        ListItem() {
          Row() {
            Text("3")
              .width("9%")
              .height("100%")
              .fontColor(Color.Black)
              .textAlign(TextAlign.Center)
              .fontSize("18fp")
            Image($r('app.media.tx3'))
              .width("20%")
              .height("94%")
              .objectFit(ImageFit.Contain)
            Text("Sussiaimi GU")
              .width("40%")
              .height("60vp")
              .fontColor(Color.Black)
              .textAlign(TextAlign.Center)
              .fontSize("16fp")
            Button("获取联系")
              .width("25%")
              .height("50%")
              .backgroundColor("#fc8b22")
              .fontColor(Color.White)
              .fontSize("13fp")
          }
          .width("100%")
          .height("100%")
        }
        .width("100%")
        .height("15%")
        ListItem() {
          Row() {
            Text("4")
              .width("9%")
              .height("100%")
              .fontColor(Color.Black)
              .textAlign(TextAlign.Center)
              .fontSize("18fp")
            Image($r('app.media.tx4'))
              .width("20%")
              .height("85%")
              .objectFit(ImageFit.Contain)
            Text("Alexabder Wang")
              .width("40%")
              .height("60vp")
              .fontColor(Color.Black)
              .textAlign(TextAlign.Center)
              .fontSize("16fp")
            Button("获取联系")
              .width("25%")
              .height("50%")
              .backgroundColor("#fc8b22")
              .fontColor(Color.White)
              .fontSize("13fp")
          }
          .width("100%")
          .height("100%")
        }
        .width("100%")
        .height("15%")
        ListItem() {
          Row() {
            Text("5")
              .width("9%")
              .height("100%")
              .fontColor(Color.Black)
              .textAlign(TextAlign.Center)
              .fontSize("18fp")
            Image($r('app.media.tx1'))
              .width("20%")
              .height("100%")
            Text("MIchelle MILLI")
              .width("40%")
              .height("60vp")
              .fontColor(Color.Black)
              .textAlign(TextAlign.Center)
              .fontSize("16fp")
            Button("获取联系")
              .width("25%")
              .height("50%")
              .backgroundColor("#fc8b22")
              .fontColor(Color.White)
              .fontSize("20fp")
          }
          .width("100%")
          .height("100%")
        }
        .width("100%")
        .height("15%")
      }
      .width("100%")
      .height("60%")
    }.width('100%').margin({ top: 0 })

  }
}
