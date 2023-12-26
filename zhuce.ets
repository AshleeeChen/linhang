import router from '@ohos.router'

@CustomDialog
struct CustomDialogExample {
  cancel: () => void = () => {
    console.info('Callback when the first button is clicked')
  }
  confirm: () => void = () => {
    console.info('Callback when the second button is clicked')
  }
  controller: CustomDialogController = new CustomDialogController({
    builder: CustomDialogExample({
      cancel: this.cancel,
      confirm: this.confirm,
    }),
  })

  build() {
    Column() {
      Text('您已注册').fontSize(20).margin({ top: 10, bottom: 10 })
      Flex({ justifyContent: FlexAlign.SpaceAround }) {
        Button('取消')
          .onClick(() => {
            this.controller.close()
            this.cancel()
          }).backgroundColor(0xffffff).fontColor(Color.Black)
        Button('去登录')
          .onClick(() => {
            router.pushUrl({
              url: 'pages/LoginPage'
            });
          }).backgroundColor(0xffffff).fontColor(Color.Red)

      }.margin({ bottom: 10 })
    }
  }
}
@Entry
@Component
struct CustomDialogUser {
  @State bud: Record<string, Function | void> = { 'cancel': this.onCancel(), 'confirm': this.onAccept() }
  dialogController: CustomDialogController = new CustomDialogController({
    builder: CustomDialogExample(this.bud),
  })

  onCancel() {
    console.info('Callback when the first button is clicked')
  }

  onAccept() {
    console.info('Callback when the second button is clicked')
  }
  build() {
    Column() {
      Column() {
        Text("新用户注册")
          .width("200vp")
          .height("60vp")
          .offset({ x: "4.11vp", y: "-109.96vp" })
          .fontColor("#fc8b22")
          .fontSize("40fp")
          .fontStyle(FontStyle.Normal)
        TextInput({ placeholder: "再次确认密码：" })
          .width("250vp")
          .height("60vp")
          .offset({ x: "-21.23vp", y: "152.42vp" })
          .type(InputType.Password)
          .placeholderColor("#fdfcfc")
          .placeholderFont({ size: 20, weight: FontWeight.Bold })
          .caretColor("#e70404")
        TextInput({ placeholder: "请输入密码：" })
          .width("250" +
            ".61vp")
          .height("60vp")
          .offset({ x: "-22.64vp", y: "23.57vp" })
          .type(InputType.Password)
          .placeholderColor("#fdfcfc")
          .placeholderFont({ size: 20, weight: FontWeight.Bold })
        TextInput({ placeholder: "手机号：" })
          .width("250vp")
          .height("60vp")
          .offset({ x: "-23.11vp", y: "-184.14vp" })
          .type(InputType.Number)
          .placeholderColor("#fdfcfc")
          .placeholderFont({ size: 20, weight: FontWeight.Bold })
        Row() {
          TextInput({ placeholder: "验证码：" })
            .width("150vp")
            .height("60vp")
            .offset({ x: "30.85vp", y: "-6.13vp" })
            .placeholderColor("#fdfcfc")
            .placeholderFont({ size: 20, weight: FontWeight.Bold })
          Button("获取验证码")
            .width("99.88vp")
            .height("36.24vp")
            .offset({ x: "74.25vp", y: "-5.39vp" })
            .backgroundColor("#eec05d")
            .fontColor(Color.White)
            .fontSize("12fp")

        }
        .width("360vp")
        .height("72.25vp")
        .offset({ x: "0vp", y: "-171.91vp" })
        Button("注册")
          .width("180vp")
          .height("54.04vp")
          .offset({ x: "0vp", y: "24.29vp" })
          .backgroundColor("#fc8b22")
          .fontColor(Color.White)
          .fontSize("20fp")
          .onClick(() => {
            this.dialogController.open()
          })
      }
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Center)

  }
    .width("100%")
    .height("100%")
    .backgroundImage($r('app.media.7'))
    .backgroundImageSize(ImageSize.Cover)
  }
}