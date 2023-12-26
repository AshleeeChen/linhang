import prompt from '@ohos.prompt'
import router from '@ohos.router'


@Entry
@Component
struct LoginPage {
  @State message: string = 'Hello World'
  @State user: string = ' '
  @State password: string = ' '




  build() {
    Column() {
      Column() {
        Text("登  录")
          .width("121.4vp")
          .height("60vp")
          .offset({ x: "4.11vp", y: "-109.96vp" })
          .fontColor("#fc8b22")
          .fontSize("40fp")
          .fontStyle(FontStyle.Normal)
        TextInput({ placeholder: "手机号：" })
          .width("246.63vp")
          .height("60vp")
          .offset({ x: "-0.02vp", y: "-70.77vp" })
          .placeholderColor("#fdfcfc")
          .onChange((value: string) =>{
            this.user = value;
          })
          .placeholderFont({ size: 20, weight: FontWeight.Bold
          })
        TextInput({ placeholder: "密码：" })
          .width("246.63vp")
          .height("60vp")
          .offset({ x: "-0.02vp", y: "-40.51vp" })
          .type(InputType.Password)
          .placeholderColor("#fdfcfc")
          .onChange((value: string) =>{
            this.password = value;
          })
          .placeholderFont({ size: 20, weight: FontWeight.Bold })
        Row() {
          Text("短信验证码登录")
            .width("114.74vp")
            .height("42.68vp")
            .offset({ x: "14.57vp", y: "-0.31vp" })
            .fontColor("#f2db9c")
          Text("忘记密码")
            .width("65.45vp")
            .height("60vp")
            .offset({ x: "140.5vp", y: "-0.31vp" })
            .fontColor("#f2db9c")
        }
        .width("360vp")
        .height("83.96vp")
        .offset({ x: "7.78vp", y: "-25.63vp" })
        Button("注册")
          .width("180vp")
          .height("52.02vp")
          .backgroundColor("#fc8b22")
          .offset({ x: "0vp", y: "116.87vp" })
          .fontColor(Color.White)
          .fontSize("20fp")
          .onClick(() => {
            router.pushUrl({
              url: 'pages/zhuce'
            });
          })
        Button("登 录")
          .width("180vp")
          .height("56.02vp")
          .backgroundColor("#fc8b22")
          .offset({ x: "0vp", y: "-38.56vp" })
          .fontColor(Color.White)
          .fontSize("20fp")
          .onClick(() =>{
            if (this.user == '' || this.password == '') {
              prompt.showToast({
                message: '用户名和密码不能为空！',
                duration: 2000
              });
            }else {
              if(this.user !='13917354920' || this.password != 'admin') {
                prompt.showToast({
                  message: '用户名密码输入错误！',
                  duration: 2000
                });
              }else {
                router.replaceUrl({
                  url: 'pages/fourpage'
                });
              }
            }
          })
      }
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Center)
      Image($r('app.media.QQ'))
        .width("60vp")
        .height("59.84vp")
        .offset({ x: "-99.05vp", y: "-89.54vp" })
      Image($r('app.media.weixin'))
        .width("60vp")
        .height("59.84vp")
        .offset({ x: "93.41vp", y: "-150.5vp" })
      Image($r('app.media.huawei'))
        .width("60vp")
        .height("59.84vp")
        .offset({ x: "0vp", y: "-211.07vp" })
    }
    .width("100%")
    .height("100%")
    .backgroundImage($r('app.media.7'))
    .backgroundImageSize(ImageSize.Cover)
  }
}