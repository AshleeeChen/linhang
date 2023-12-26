// @ts-nocheck
import router from '@ohos.router'
class Item {
  name:string
  image:ResourceStr
  price:number

constructor(name:string,image:ResourceStr, price:number){
  this.name = name
  this.image = image
  this.price = price
}
}
@Entry
@Component
struct WelcomePage {
  @State message: string = 'Hello World'

  aboutToAppear() {
    setTimeout(function () {
      router.replaceUrl({
        url: 'pages/LoginPage'

      })
    }, 9000)
  }

  build() {
    Column() {
      Column() {
        Swiper() {
          Stack({ alignContent:Alignment.Top }) {
            Image($r('app.media.bk6'))
              .width("100%")
              .height("100%")
            Text("领航智能家居")
              .fontSize("30fp")
              .fontColor("#fcfcfc")
              .padding(50)
            Text("让家更懂你❤")
              .fontSize("20fp")
              .fontColor("#fcfcfc")
              .padding(100)
            Text("出品人：f21023202陈嘉怡")
              .width("100%")
              .height("60vp")
              .offset({ x: "0vp", y: "700.93vp" })
              .fontColor("#090601")
              .textAlign(TextAlign.Center)
              .fontSize("17fp")

          }

          Stack({ alignContent:Alignment.Top }) {
            Image($r('app.media.bk7'))
              .width("100%")
              .height("100%")
            Text("领航智能家居")
              .fontSize("30fp")
              .padding(50)
            Text("让家更懂你❤")
              .fontSize("20fp")
              .padding(110)
            Text("出品人：f21023202陈嘉怡")
              .width("100%")
              .height("60vp")
              .offset({ x: "0vp", y: "715.93vp" })
              .fontColor("#090601")
              .textAlign(TextAlign.Center)
              .fontSize("17fp")
          }

          Stack({ alignContent:Alignment.Top }) {
            Image($r('app.media.bk8'))
              .width("100%")
              .height("100%")
            Text("领航智能家居")
              .fontSize("30fp")
              .padding(50)
            Text("让家更懂你❤")
              .fontSize("20fp")
              .padding(110)
            Text("出品人：f21023202陈嘉怡")
              .width("100%")
              .height("60vp")
              .offset({ x: "0vp", y: "700.93vp" })
              .fontColor("#fcfcfc")
              .textAlign(TextAlign.Center)
              .fontSize("17fp")
          }

          }
          .width("100%")
          .height("100%")
          .autoPlay(true)
          .vertical(false)
        }
        .width("100%")
        .height("100%")
        .justifyContent(FlexAlign.Center)
      }
      .width("100%")
      .height("100%")
    }

}